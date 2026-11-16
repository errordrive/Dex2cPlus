package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityAcknowledgementBinding implements ViewBinding {
    public final ImageButton btnAckBack;
    public final LinearLayout cardAckArchitect;
    public final LinearLayout cardAckClang;
    public final LinearLayout cardAckMaterial;
    public final LinearLayout cardAckNdk;
    public final LinearLayout cardAckSmali;
    public final LinearLayout headerAcknowledgement;
    public final LinearLayout rootAcknowledgement;
    private final LinearLayout rootView;

    private ActivityAcknowledgementBinding(LinearLayout linearLayout, ImageButton imageButton, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8) {
        this.rootView = linearLayout;
        this.btnAckBack = imageButton;
        this.cardAckArchitect = linearLayout2;
        this.cardAckClang = linearLayout3;
        this.cardAckMaterial = linearLayout4;
        this.cardAckNdk = linearLayout5;
        this.cardAckSmali = linearLayout6;
        this.headerAcknowledgement = linearLayout7;
        this.rootAcknowledgement = linearLayout8;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityAcknowledgementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityAcknowledgementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_acknowledgement, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityAcknowledgementBinding bind(View view) {
        int i = R.id.btnAckBack;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            i = R.id.cardAckArchitect;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R.id.cardAckClang;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout2 != null) {
                    i = R.id.cardAckMaterial;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout3 != null) {
                        i = R.id.cardAckNdk;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout4 != null) {
                            i = R.id.cardAckSmali;
                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout5 != null) {
                                i = R.id.headerAcknowledgement;
                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout6 != null) {
                                    LinearLayout linearLayout7 = (LinearLayout) view;
                                    return new ActivityAcknowledgementBinding(linearLayout7, imageButton, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7);
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
