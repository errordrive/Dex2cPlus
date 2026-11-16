package com.android.tools.smali.dexlib2.writer.util;

import com.android.tools.smali.dexlib2.base.BaseTryBlock;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.iface.TryBlock;
import com.android.tools.smali.util.ExceptionWithContext;
import com.android.tools.smali.util.IteratorUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class TryListBuilder<EH extends ExceptionHandler> {
    private final MutableTryBlock<EH> listEnd;
    private final MutableTryBlock<EH> listStart;

    public TryListBuilder() {
        MutableTryBlock<EH> mutableTryBlock = new MutableTryBlock<>(0, 0);
        this.listStart = mutableTryBlock;
        MutableTryBlock<EH> mutableTryBlock2 = new MutableTryBlock<>(0, 0);
        this.listEnd = mutableTryBlock2;
        mutableTryBlock.next = mutableTryBlock2;
        mutableTryBlock2.prev = mutableTryBlock;
    }

    public static <EH extends ExceptionHandler> List<TryBlock<EH>> massageTryBlocks(List<? extends TryBlock<? extends EH>> list) {
        TryListBuilder tryListBuilder = new TryListBuilder();
        for (TryBlock<? extends EH> tryBlock : list) {
            int startCodeAddress = tryBlock.getStartCodeAddress();
            int codeUnitCount = tryBlock.getCodeUnitCount() + startCodeAddress;
            Iterator<? extends EH> it = tryBlock.getExceptionHandlers().iterator();
            while (it.hasNext()) {
                tryListBuilder.addHandler(startCodeAddress, codeUnitCount, it.next());
            }
        }
        return tryListBuilder.getTryBlocks();
    }

    private static class TryBounds<EH extends ExceptionHandler> {

        @Nonnull
        public final MutableTryBlock<EH> end;

        @Nonnull
        public final MutableTryBlock<EH> start;

        public TryBounds(@Nonnull MutableTryBlock<EH> mutableTryBlock, @Nonnull MutableTryBlock<EH> mutableTryBlock2) {
            this.start = mutableTryBlock;
            this.end = mutableTryBlock2;
        }
    }

    public static class InvalidTryException extends ExceptionWithContext {
        public InvalidTryException(Throwable th) {
            super(th);
        }

        public InvalidTryException(Throwable th, String str, Object... objArr) {
            super(th, str, objArr);
        }

        public InvalidTryException(String str, Object... objArr) {
            super(str, objArr);
        }
    }

    private static class MutableTryBlock<EH extends ExceptionHandler> extends BaseTryBlock<EH> {
        public int endCodeAddress;

        @Nonnull
        public List<EH> exceptionHandlers;
        public MutableTryBlock<EH> next;
        public MutableTryBlock<EH> prev;
        public int startCodeAddress;

        public MutableTryBlock(int i, int i2) {
            this.prev = null;
            this.next = null;
            this.exceptionHandlers = new ArrayList();
            this.startCodeAddress = i;
            this.endCodeAddress = i2;
        }

        public MutableTryBlock(int i, int i2, @Nonnull List<EH> list) {
            this.prev = null;
            this.next = null;
            this.exceptionHandlers = new ArrayList();
            this.startCodeAddress = i;
            this.endCodeAddress = i2;
            this.exceptionHandlers = new ArrayList(list);
        }

        @Override // com.android.tools.smali.dexlib2.iface.TryBlock
        public int getStartCodeAddress() {
            return this.startCodeAddress;
        }

        @Override // com.android.tools.smali.dexlib2.iface.TryBlock
        public int getCodeUnitCount() {
            return this.endCodeAddress - this.startCodeAddress;
        }

        @Override // com.android.tools.smali.dexlib2.iface.TryBlock
        @Nonnull
        public List<EH> getExceptionHandlers() {
            return this.exceptionHandlers;
        }

        @Nonnull
        public MutableTryBlock<EH> split(int i) {
            MutableTryBlock<EH> mutableTryBlock = new MutableTryBlock<>(i, this.endCodeAddress, this.exceptionHandlers);
            this.endCodeAddress = i;
            append(mutableTryBlock);
            return mutableTryBlock;
        }

        public void delete() {
            MutableTryBlock<EH> mutableTryBlock = this.next;
            mutableTryBlock.prev = this.prev;
            this.prev.next = mutableTryBlock;
        }

        public void mergeNext() {
            MutableTryBlock<EH> mutableTryBlock = this.next;
            this.endCodeAddress = mutableTryBlock.endCodeAddress;
            mutableTryBlock.delete();
        }

        public void append(@Nonnull MutableTryBlock<EH> mutableTryBlock) {
            MutableTryBlock<EH> mutableTryBlock2 = this.next;
            mutableTryBlock2.prev = mutableTryBlock;
            mutableTryBlock.next = mutableTryBlock2;
            mutableTryBlock.prev = this;
            this.next = mutableTryBlock;
        }

        public void prepend(@Nonnull MutableTryBlock<EH> mutableTryBlock) {
            MutableTryBlock<EH> mutableTryBlock2 = this.prev;
            mutableTryBlock2.next = mutableTryBlock;
            mutableTryBlock.prev = mutableTryBlock2;
            mutableTryBlock.next = this;
            this.prev = mutableTryBlock;
        }

        public void addHandler(@Nonnull EH eh) {
            for (EH eh2 : this.exceptionHandlers) {
                String exceptionType = eh2.getExceptionType();
                String exceptionType2 = eh.getExceptionType();
                if (exceptionType == null) {
                    if (exceptionType2 == null) {
                        if (eh2.getHandlerCodeAddress() != eh.getHandlerCodeAddress()) {
                            throw new InvalidTryException("Multiple overlapping catch all handlers with different handlers", new Object[0]);
                        }
                        return;
                    }
                } else if (exceptionType.equals(exceptionType2)) {
                    return;
                }
            }
            this.exceptionHandlers.add(eh);
        }
    }

    private TryBounds<EH> getBoundingRanges(int i, int i2) {
        MutableTryBlock<EH> mutableTryBlockSplit = this.listStart.next;
        while (true) {
            if (mutableTryBlockSplit == this.listEnd) {
                mutableTryBlockSplit = null;
                break;
            }
            int i3 = mutableTryBlockSplit.startCodeAddress;
            int i4 = mutableTryBlockSplit.endCodeAddress;
            if (i == i3) {
                break;
            }
            if (i > i3 && i < i4) {
                mutableTryBlockSplit = mutableTryBlockSplit.split(i);
                break;
            }
            if (i < i3) {
                if (i2 <= i3) {
                    MutableTryBlock<EH> mutableTryBlock = new MutableTryBlock<>(i, i2);
                    mutableTryBlockSplit.prepend(mutableTryBlock);
                    return new TryBounds<>(mutableTryBlock, mutableTryBlock);
                }
                MutableTryBlock<EH> mutableTryBlock2 = new MutableTryBlock<>(i, i3);
                mutableTryBlockSplit.prepend(mutableTryBlock2);
                mutableTryBlockSplit = mutableTryBlock2;
                break;
            }
            mutableTryBlockSplit = mutableTryBlockSplit.next;
        }
        if (mutableTryBlockSplit == null) {
            MutableTryBlock<EH> mutableTryBlock3 = new MutableTryBlock<>(i, i2);
            this.listEnd.prepend(mutableTryBlock3);
            return new TryBounds<>(mutableTryBlock3, mutableTryBlock3);
        }
        for (MutableTryBlock<EH> mutableTryBlock4 = mutableTryBlockSplit; mutableTryBlock4 != this.listEnd; mutableTryBlock4 = mutableTryBlock4.next) {
            int i5 = mutableTryBlock4.startCodeAddress;
            int i6 = mutableTryBlock4.endCodeAddress;
            if (i2 == i6) {
                return new TryBounds<>(mutableTryBlockSplit, mutableTryBlock4);
            }
            if (i2 > i5 && i2 < i6) {
                mutableTryBlock4.split(i2);
                return new TryBounds<>(mutableTryBlockSplit, mutableTryBlock4);
            }
            if (i2 <= i5) {
                MutableTryBlock<EH> mutableTryBlock5 = new MutableTryBlock<>(mutableTryBlock4.prev.endCodeAddress, i2);
                mutableTryBlock4.prepend(mutableTryBlock5);
                return new TryBounds<>(mutableTryBlockSplit, mutableTryBlock5);
            }
        }
        MutableTryBlock<EH> mutableTryBlock6 = new MutableTryBlock<>(this.listEnd.prev.endCodeAddress, i2);
        this.listEnd.prepend(mutableTryBlock6);
        return new TryBounds<>(mutableTryBlockSplit, mutableTryBlock6);
    }

    public void addHandler(int i, int i2, EH eh) {
        TryBounds<EH> boundingRanges = getBoundingRanges(i, i2);
        MutableTryBlock<EH> mutableTryBlock = boundingRanges.start;
        MutableTryBlock<EH> mutableTryBlock2 = boundingRanges.end;
        do {
            if (mutableTryBlock.startCodeAddress > i) {
                MutableTryBlock<EH> mutableTryBlock3 = new MutableTryBlock<>(i, mutableTryBlock.startCodeAddress);
                mutableTryBlock.prepend(mutableTryBlock3);
                mutableTryBlock = mutableTryBlock3;
            }
            mutableTryBlock.addHandler(eh);
            i = mutableTryBlock.endCodeAddress;
            mutableTryBlock = mutableTryBlock.next;
        } while (mutableTryBlock.prev != mutableTryBlock2);
    }

    public List<TryBlock<EH>> getTryBlocks() {
        return IteratorUtils.toList(new Iterator<TryBlock<EH>>() { // from class: com.android.tools.smali.dexlib2.writer.util.TryListBuilder.1

            @Nullable
            private MutableTryBlock<EH> next;

            {
                this.next = TryListBuilder.this.listStart;
                this.next = readNextItem();
            }

            @Nullable
            protected MutableTryBlock<EH> readNextItem() {
                MutableTryBlock<EH> mutableTryBlock = this.next.next;
                if (mutableTryBlock == TryListBuilder.this.listEnd) {
                    return null;
                }
                while (mutableTryBlock.next != TryListBuilder.this.listEnd && mutableTryBlock.endCodeAddress == mutableTryBlock.next.startCodeAddress && mutableTryBlock.getExceptionHandlers().equals(mutableTryBlock.next.getExceptionHandlers())) {
                    mutableTryBlock.mergeNext();
                }
                return mutableTryBlock;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.next != null;
            }

            @Override // java.util.Iterator
            @Nonnull
            public TryBlock<EH> next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                MutableTryBlock<EH> mutableTryBlock = this.next;
                this.next = readNextItem();
                return mutableTryBlock;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        });
    }
}
