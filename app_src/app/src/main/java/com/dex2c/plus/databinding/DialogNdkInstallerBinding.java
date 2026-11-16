package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;

/* JADX INFO: loaded from: classes.dex */
public final class DialogNdkInstallerBinding implements ViewBinding {
    public final ImageButton btnNdkBrowseFile;
    public final TextView btnNdkDialogClose;
    public final TextView btnNdkLocalInstall;
    public final TextView btnNdkOnlineInstall;
    public final TextView btnNdkUninstall;
    public final LinearLayout containerNdkInstallOptions;
    public final LinearLayout containerNdkLiveProgress;
    public final EditText etNdkLocalPath;
    public final ProgressBar pbNdkLiveProgress;
    private final LinearLayout rootView;
    public final TextView tvNdkDialogStatusBadge;
    public final TextView tvNdkDialogTitle;
    public final TextView tvNdkLiveDetail;
    public final TextView tvNdkLivePercent;
    public final TextView tvNdkLiveStage;

    private DialogNdkInstallerBinding(LinearLayout linearLayout, ImageButton imageButton, TextView textView, TextView textView2, TextView textView3, TextView textView4, LinearLayout linearLayout2, LinearLayout linearLayout3, EditText editText, ProgressBar progressBar, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        this.rootView = linearLayout;
        this.btnNdkBrowseFile = imageButton;
        this.btnNdkDialogClose = textView;
        this.btnNdkLocalInstall = textView2;
        this.btnNdkOnlineInstall = textView3;
        this.btnNdkUninstall = textView4;
        this.containerNdkInstallOptions = linearLayout2;
        this.containerNdkLiveProgress = linearLayout3;
        this.etNdkLocalPath = editText;
        this.pbNdkLiveProgress = progressBar;
        this.tvNdkDialogStatusBadge = textView5;
        this.tvNdkDialogTitle = textView6;
        this.tvNdkLiveDetail = textView7;
        this.tvNdkLivePercent = textView8;
        this.tvNdkLiveStage = textView9;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogNdkInstallerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogNdkInstallerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_ndk_installer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogNdkInstallerBinding bind(View view) {
        int i = R.id.btnNdkBrowseFile;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            i = R.id.btnNdkDialogClose;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.btnNdkLocalInstall;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R.id.btnNdkOnlineInstall;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        i = R.id.btnNdkUninstall;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView4 != null) {
                            i = R.id.containerNdkInstallOptions;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout != null) {
                                i = R.id.containerNdkLiveProgress;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout2 != null) {
                                    i = R.id.etNdkLocalPath;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                                    if (editText != null) {
                                        i = R.id.pbNdkLiveProgress;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                        if (progressBar != null) {
                                            i = R.id.tvNdkDialogStatusBadge;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView5 != null) {
                                                i = R.id.tvNdkDialogTitle;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView6 != null) {
                                                    i = R.id.tvNdkLiveDetail;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView7 != null) {
                                                        i = R.id.tvNdkLivePercent;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView8 != null) {
                                                            i = R.id.tvNdkLiveStage;
                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView9 != null) {
                                                                return new DialogNdkInstallerBinding((LinearLayout) view, imageButton, textView, textView2, textView3, textView4, linearLayout, linearLayout2, editText, progressBar, textView5, textView6, textView7, textView8, textView9);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
