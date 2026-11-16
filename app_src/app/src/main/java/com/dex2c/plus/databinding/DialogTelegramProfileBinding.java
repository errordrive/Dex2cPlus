package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;
import com.dex2c.plus.ui.ShimmerFrameLayout;

/* JADX INFO: loaded from: classes.dex */
public final class DialogTelegramProfileBinding implements ViewBinding {
    public final FrameLayout avatarCircleContainer;
    public final TextView btnTelegramClose;
    public final LinearLayout cardContactUs;
    public final LinearLayout cardJoinTelegram;
    public final ImageView ivProfileAvatar;
    private final ShimmerFrameLayout rootView;
    public final LinearLayout shimmerTelegramLoading;
    public final ShimmerFrameLayout shimmerTelegramRoot;
    public final LinearLayout telegramProfileContent;
    public final TextView tvContactUsSub;
    public final TextView tvContactUsTitle;
    public final TextView tvJoinTelegramSub;
    public final TextView tvJoinTelegramTitle;
    public final TextView tvProfileHandle;
    public final TextView tvProfileSubtitle;

    private DialogTelegramProfileBinding(ShimmerFrameLayout shimmerFrameLayout, FrameLayout frameLayout, TextView textView, LinearLayout linearLayout, LinearLayout linearLayout2, ImageView imageView, LinearLayout linearLayout3, ShimmerFrameLayout shimmerFrameLayout2, LinearLayout linearLayout4, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = shimmerFrameLayout;
        this.avatarCircleContainer = frameLayout;
        this.btnTelegramClose = textView;
        this.cardContactUs = linearLayout;
        this.cardJoinTelegram = linearLayout2;
        this.ivProfileAvatar = imageView;
        this.shimmerTelegramLoading = linearLayout3;
        this.shimmerTelegramRoot = shimmerFrameLayout2;
        this.telegramProfileContent = linearLayout4;
        this.tvContactUsSub = textView2;
        this.tvContactUsTitle = textView3;
        this.tvJoinTelegramSub = textView4;
        this.tvJoinTelegramTitle = textView5;
        this.tvProfileHandle = textView6;
        this.tvProfileSubtitle = textView7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static DialogTelegramProfileBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogTelegramProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_telegram_profile, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogTelegramProfileBinding bind(View view) {
        int i = R.id.avatarCircleContainer;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.btnTelegramClose;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.cardContactUs;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.cardJoinTelegram;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        i = R.id.ivProfileAvatar;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView != null) {
                            i = R.id.shimmerTelegramLoading;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout3 != null) {
                                ShimmerFrameLayout shimmerFrameLayout = (ShimmerFrameLayout) view;
                                i = R.id.telegramProfileContent;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout4 != null) {
                                    i = R.id.tvContactUsSub;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null) {
                                        i = R.id.tvContactUsTitle;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView3 != null) {
                                            i = R.id.tvJoinTelegramSub;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView4 != null) {
                                                i = R.id.tvJoinTelegramTitle;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView5 != null) {
                                                    i = R.id.tvProfileHandle;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView6 != null) {
                                                        i = R.id.tvProfileSubtitle;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView7 != null) {
                                                            return new DialogTelegramProfileBinding(shimmerFrameLayout, frameLayout, textView, linearLayout, linearLayout2, imageView, linearLayout3, shimmerFrameLayout, linearLayout4, textView2, textView3, textView4, textView5, textView6, textView7);
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
