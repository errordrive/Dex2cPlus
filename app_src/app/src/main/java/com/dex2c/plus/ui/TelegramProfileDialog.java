package com.dex2c.plus.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Outline;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.dex2c.plus.R;
import com.dex2c.plus.databinding.DialogTelegramProfileBinding;

/* JADX INFO: loaded from: classes.dex */
public final class TelegramProfileDialog {
    public static final int LINK_CONTACT_US = 0;
    public static final int LINK_JOIN_CHANNEL = 1;
    private static final long SHIMMER_LOAD_DURATION_MS = 2000;
    private final DialogTelegramProfileBinding binding;
    private final Dialog dialog;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Runnable revealProfileRunnable = new Runnable() { // from class: com.dex2c.plus.ui.TelegramProfileDialog.1
        @Override // java.lang.Runnable
        public void run() {
            if (TelegramProfileDialog.this.dialog.isShowing()) {
                TelegramProfileDialog.this.binding.shimmerTelegramRoot.stopShimmer();
                TelegramProfileDialog.this.binding.shimmerTelegramLoading.setVisibility(8);
                TelegramProfileDialog.this.binding.telegramProfileContent.setAlpha(0.0f);
                TelegramProfileDialog.this.binding.telegramProfileContent.setVisibility(0);
                TelegramProfileDialog.this.binding.telegramProfileContent.animate().alpha(1.0f).setDuration(180L).start();
            }
        }
    };

    public static native String getArchitectUrlNative();

    private static native String[] getEncryptedProfileMetaNative();

    public static native void openEncryptedTelegramLinkNative(Context context, int i);

    static {
        try {
            System.loadLibrary("dex2cplus");
        } catch (Throwable unused) {
        }
    }

    public TelegramProfileDialog(final Context context) {
        Dialog dialog = new Dialog(context, R.style.SeamlessDialogTheme);
        this.dialog = dialog;
        dialog.requestWindowFeature(1);
        DialogTelegramProfileBinding dialogTelegramProfileBindingInflate = DialogTelegramProfileBinding.inflate(LayoutInflater.from(context));
        this.binding = dialogTelegramProfileBindingInflate;
        dialog.setContentView(dialogTelegramProfileBindingInflate.getRoot());
        if (dialog.getWindow() != null) {
            dialog.getWindow().setLayout((int) (context.getResources().getDisplayMetrics().widthPixels * 0.85f), -2);
        }
        ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: com.dex2c.plus.ui.TelegramProfileDialog.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                int iMin = Math.min(view.getWidth(), view.getHeight());
                outline.setOval(0, 0, iMin, iMin);
            }
        };
        dialogTelegramProfileBindingInflate.avatarCircleContainer.setOutlineProvider(viewOutlineProvider);
        dialogTelegramProfileBindingInflate.avatarCircleContainer.setClipToOutline(true);
        dialogTelegramProfileBindingInflate.ivProfileAvatar.setOutlineProvider(viewOutlineProvider);
        dialogTelegramProfileBindingInflate.ivProfileAvatar.setClipToOutline(true);
        try {
            String[] encryptedProfileMetaNative = getEncryptedProfileMetaNative();
            if (encryptedProfileMetaNative != null && encryptedProfileMetaNative.length >= 7) {
                dialogTelegramProfileBindingInflate.tvProfileHandle.setText(encryptedProfileMetaNative[0]);
                dialogTelegramProfileBindingInflate.tvProfileSubtitle.setText(encryptedProfileMetaNative[1]);
                dialogTelegramProfileBindingInflate.tvContactUsTitle.setText(encryptedProfileMetaNative[2]);
                dialogTelegramProfileBindingInflate.tvContactUsSub.setText(encryptedProfileMetaNative[3]);
                dialogTelegramProfileBindingInflate.tvJoinTelegramTitle.setText(encryptedProfileMetaNative[4]);
                dialogTelegramProfileBindingInflate.tvJoinTelegramSub.setText(encryptedProfileMetaNative[5]);
                dialogTelegramProfileBindingInflate.btnTelegramClose.setText(encryptedProfileMetaNative[6]);
            }
        } catch (Throwable unused) {
        }
        UiAnimator.attachPressAnimation(this.binding.cardContactUs, this.binding.cardJoinTelegram);
        this.binding.cardContactUs.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.TelegramProfileDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(context, view);
            }
        });
        this.binding.cardJoinTelegram.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.TelegramProfileDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(context, view);
            }
        });
        this.binding.btnTelegramClose.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.TelegramProfileDialog$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        this.dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.dex2c.plus.ui.TelegramProfileDialog$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$new$3(dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Context context, View view) {
        dismiss();
        openEncryptedTelegramLinkNative(context, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Context context, View view) {
        dismiss();
        openEncryptedTelegramLinkNative(context, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(DialogInterface dialogInterface) {
        this.mainHandler.removeCallbacks(this.revealProfileRunnable);
        this.binding.telegramProfileContent.animate().cancel();
        this.binding.shimmerTelegramRoot.stopShimmer();
    }

    public void show() {
        if (this.dialog.isShowing()) {
            return;
        }
        this.mainHandler.removeCallbacks(this.revealProfileRunnable);
        this.binding.telegramProfileContent.animate().cancel();
        this.binding.telegramProfileContent.setAlpha(0.0f);
        this.binding.telegramProfileContent.setVisibility(4);
        this.binding.shimmerTelegramLoading.setVisibility(0);
        this.dialog.show();
        this.binding.shimmerTelegramRoot.startShimmer();
        this.mainHandler.postDelayed(this.revealProfileRunnable, SHIMMER_LOAD_DURATION_MS);
    }

    public void dismiss() {
        this.mainHandler.removeCallbacks(this.revealProfileRunnable);
        this.binding.telegramProfileContent.animate().cancel();
        if (this.dialog.isShowing()) {
            this.binding.shimmerTelegramRoot.stopShimmer();
            this.dialog.dismiss();
        }
    }

    public boolean isShowing() {
        return this.dialog.isShowing();
    }
}
