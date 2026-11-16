package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;

/* JADX INFO: loaded from: classes.dex */
public final class DialogFileManagerBinding implements ViewBinding {
    public final TextView btnFmClose;
    public final TextView btnFmSelect;
    public final LinearLayout btnFmUp;
    private final LinearLayout rootView;
    public final RecyclerView rvFiles;
    public final TextView tvFmCurrentPath;
    public final TextView tvFmEmpty;
    public final TextView tvFmTitle;

    private DialogFileManagerBinding(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2, RecyclerView recyclerView, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.btnFmClose = textView;
        this.btnFmSelect = textView2;
        this.btnFmUp = linearLayout2;
        this.rvFiles = recyclerView;
        this.tvFmCurrentPath = textView3;
        this.tvFmEmpty = textView4;
        this.tvFmTitle = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogFileManagerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogFileManagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_file_manager, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogFileManagerBinding bind(View view) {
        int i = R.id.btnFmClose;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.btnFmSelect;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.btnFmUp;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.rvFiles;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                    if (recyclerView != null) {
                        i = R.id.tvFmCurrentPath;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = R.id.tvFmEmpty;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                i = R.id.tvFmTitle;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView5 != null) {
                                    return new DialogFileManagerBinding((LinearLayout) view, textView, textView2, linearLayout, recyclerView, textView3, textView4, textView5);
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
