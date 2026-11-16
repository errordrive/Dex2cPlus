package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;
import com.google.android.material.checkbox.MaterialCheckBox;

/* JADX INFO: loaded from: classes.dex */
public final class ItemFileEntryBinding implements ViewBinding {
    public final MaterialCheckBox cbFileSelect;
    public final ImageView ivFileIcon;
    private final LinearLayout rootView;
    public final LinearLayout rowFileEntry;
    public final TextView tvFileName;
    public final TextView tvFileSub;

    private ItemFileEntryBinding(LinearLayout linearLayout, MaterialCheckBox materialCheckBox, ImageView imageView, LinearLayout linearLayout2, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.cbFileSelect = materialCheckBox;
        this.ivFileIcon = imageView;
        this.rowFileEntry = linearLayout2;
        this.tvFileName = textView;
        this.tvFileSub = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemFileEntryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemFileEntryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_file_entry, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemFileEntryBinding bind(View view) {
        int i = R.id.cbFileSelect;
        MaterialCheckBox materialCheckBox = (MaterialCheckBox) ViewBindings.findChildViewById(view, i);
        if (materialCheckBox != null) {
            i = R.id.ivFileIcon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R.id.tvFileName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.tvFileSub;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new ItemFileEntryBinding(linearLayout, materialCheckBox, imageView, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
