package com.dex2c.plus;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ConsoleLogger {
    private static final ConsoleLogger INSTANCE = new ConsoleLogger();
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final ChunkedGapBuffer gapBuffer = new ChunkedGapBuffer();
    private final List<String> errorLines = new ArrayList();
    private final List<Listener> listeners = new ArrayList();
    private boolean uiDispatchScheduled = false;
    private final Runnable notifyRunnable = new Runnable() { // from class: com.dex2c.plus.ConsoleLogger.1
        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            synchronized (ConsoleLogger.this) {
                ConsoleLogger.this.uiDispatchScheduled = false;
                arrayList = new ArrayList(ConsoleLogger.this.listeners);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onLogUpdated();
            }
        }
    };

    public enum Level {
        INFO,
        SUCCESS,
        WARN,
        ERROR
    }

    public interface Listener {
        void onLogUpdated();
    }

    public static final class ChunkedGapBuffer {
        private static final int MAX_LINES = 2048;
        private final String[] lineRing = new String[2048];
        private final String[] keyRing = new String[2048];
        private int lineHead = 0;
        private int lineCount = 0;
        private long totalPushedLines = 0;
        private long revisionSeq = 0;
        private final StringBuilder partialLine = new StringBuilder(256);

        public synchronized void append(String str) {
            if (str != null) {
                if (!str.isEmpty()) {
                    int length = str.length();
                    for (int i = 0; i < length; i++) {
                        char cCharAt = str.charAt(i);
                        if (cCharAt == '\n') {
                            pushLine(null, this.partialLine.toString());
                            this.partialLine.setLength(0);
                        } else if (cCharAt != '\r') {
                            this.partialLine.append(cCharAt);
                        }
                    }
                    this.revisionSeq++;
                }
            }
        }

        public synchronized void upsertKeyedLine(String str, String str2) {
            if (str2 == null) {
                str2 = "";
            }
            if (str != null) {
                try {
                    if (!str.isEmpty()) {
                        for (int i = this.lineCount - 1; i >= 0; i--) {
                            int i2 = (this.lineHead + i) % 2048;
                            if (str.equals(this.keyRing[i2])) {
                                this.lineRing[i2] = str2;
                                this.revisionSeq++;
                                return;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            pushLine(str, str2);
            this.revisionSeq++;
        }

        private void pushLine(String str, String str2) {
            int i = this.lineHead;
            int i2 = this.lineCount;
            int i3 = (i + i2) % 2048;
            this.lineRing[i3] = str2;
            this.keyRing[i3] = str;
            if (i2 < 2048) {
                this.lineCount = i2 + 1;
            } else {
                this.lineHead = (i + 1) % 2048;
            }
            this.totalPushedLines++;
        }

        public synchronized long getTotalPushedLines() {
            return this.totalPushedLines;
        }

        public synchronized long getRevisionSeq() {
            return this.revisionSeq;
        }

        public synchronized int getPartialLength() {
            return this.partialLine.length();
        }

        public synchronized int getLineCount() {
            return this.lineCount + (this.partialLine.length() > 0 ? 1 : 0);
        }

        public synchronized void copyLinesWindow(int i, int i2, List<String> list) {
            list.clear();
            int lineCount = getLineCount();
            if (i < 0) {
                i = 0;
            }
            int iMin = Math.min(lineCount, i2 + i);
            while (i < iMin) {
                if (i < this.lineCount) {
                    String str = this.lineRing[(this.lineHead + i) % 2048];
                    if (str == null) {
                        str = "";
                    }
                    list.add(str);
                } else {
                    list.add(this.partialLine.toString());
                }
                i++;
            }
        }

        public synchronized String exportAllText() {
            StringBuilder sb;
            sb = new StringBuilder();
            for (int i = 0; i < this.lineCount; i++) {
                String str = this.lineRing[(this.lineHead + i) % 2048];
                if (str != null) {
                    int iIndexOf = str.indexOf(9);
                    if (iIndexOf >= 0) {
                        sb.append((CharSequence) str, 0, iIndexOf);
                        sb.append("   ");
                        sb.append(str.substring(iIndexOf + 1));
                    } else {
                        sb.append(str);
                    }
                    sb.append('\n');
                }
            }
            if (this.partialLine.length() > 0) {
                sb.append((CharSequence) this.partialLine);
            }
            return sb.toString();
        }

        public synchronized void clear() {
            for (int i = 0; i < 2048; i++) {
                this.lineRing[i] = null;
                this.keyRing[i] = null;
            }
            this.lineHead = 0;
            this.lineCount = 0;
            this.totalPushedLines = 0L;
            this.revisionSeq++;
            this.partialLine.setLength(0);
        }
    }

    public static ConsoleLogger get() {
        return INSTANCE;
    }

    public ChunkedGapBuffer getGapBuffer() {
        return this.gapBuffer;
    }

    public synchronized void addListener(Listener listener) {
        if (listener == null) {
            return;
        }
        if (!this.listeners.contains(listener)) {
            this.listeners.add(listener);
        }
        listener.onLogUpdated();
    }

    public synchronized void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public synchronized void updateStep(String str, String str2, String str3) {
        if (str2 == null) {
            str2 = "";
        }
        String strTrim = str3 != null ? str3.trim() : "";
        if (!strTrim.isEmpty()) {
            str2 = str2 + "\t" + strTrim;
        }
        this.gapBuffer.upsertKeyedLine(str, str2);
        scheduleUiNotify();
    }

    public void info(String str, String str2) {
        log(Level.INFO, str, str2);
    }

    public void success(String str, String str2) {
        log(Level.SUCCESS, str, str2);
    }

    public void warn(String str, String str2) {
        log(Level.WARN, str, str2);
    }

    public void error(String str, String str2) {
        log(Level.ERROR, str, str2);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    public synchronized void log(Level level, String str, String str2) {
        String str3;
        if (str2 == null) {
            return;
        }
        if (str != null) {
            try {
                if (str.isEmpty() || "RAW".equals(str)) {
                    str3 = null;
                } else {
                    str3 = "LOG_" + str;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            str3 = null;
        }
        if (level == Level.ERROR) {
            if (str != null && !str.isEmpty() && !"RAW".equals(str)) {
                str2 = "[" + str + "] " + str2;
            }
            if (this.errorLines.size() < 512) {
                this.errorLines.add(str2.trim());
            }
            this.gapBuffer.upsertKeyedLine(null, str2);
        } else if (str3 != null) {
            this.gapBuffer.upsertKeyedLine(str3, str2);
        } else {
            this.gapBuffer.upsertKeyedLine(null, str2);
        }
        scheduleUiNotify();
    }

    private void scheduleUiNotify() {
        if (this.uiDispatchScheduled) {
            return;
        }
        this.uiDispatchScheduled = true;
        this.mainHandler.postDelayed(this.notifyRunnable, 16L);
    }

    public synchronized boolean hasErrors() {
        return !this.errorLines.isEmpty();
    }

    public String getAllText() {
        return this.gapBuffer.exportAllText();
    }

    public synchronized String getErrorsOnly() {
        if (this.errorLines.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.errorLines.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append("\n");
        }
        return sb.toString();
    }

    public synchronized void clear() {
        this.gapBuffer.clear();
        this.errorLines.clear();
        scheduleUiNotify();
    }
}
