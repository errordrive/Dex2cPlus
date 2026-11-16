package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;
import com.dex2c.plus.ui.GlowConsoleTextView;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityBuildBinding implements ViewBinding {
    public final ImageButton btnBuildBack;
    public final ImageButton btnCancelBuild;
    public final LinearLayout btnCopyConsole;
    public final LinearLayout headerBuild;
    public final LinearLayout rootBuild;
    private final LinearLayout rootView;
    public final TextView tvBuildTitle;
    public final GlowConsoleTextView tvConsoleOutput;

    private ActivityBuildBinding(LinearLayout linearLayout, ImageButton imageButton, ImageButton imageButton2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView, GlowConsoleTextView glowConsoleTextView) {
        this.rootView = linearLayout;
        this.btnBuildBack = imageButton;
        this.btnCancelBuild = imageButton2;
        this.btnCopyConsole = linearLayout2;
        this.headerBuild = linearLayout3;
        this.rootBuild = linearLayout4;
        this.tvBuildTitle = textView;
        this.tvConsoleOutput = glowConsoleTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBuildBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBuildBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_build, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBuildBinding bind(View view) {
        int i = R.id.btnBuildBack;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            i = R.id.btnCancelBuild;
            ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, i);
            if (imageButton2 != null) {
                i = R.id.btnCopyConsole;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.headerBuild;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        LinearLayout linearLayout3 = (LinearLayout) view;
                        i = R.id.tvBuildTitle;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = R.id.tvConsoleOutput;
                            GlowConsoleTextView glowConsoleTextView = (GlowConsoleTextView) ViewBindings.findChildViewById(view, i);
                            if (glowConsoleTextView != null) {
                                return new ActivityBuildBinding(linearLayout3, imageButton, imageButton2, linearLayout, linearLayout2, linearLayout3, textView, glowConsoleTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
