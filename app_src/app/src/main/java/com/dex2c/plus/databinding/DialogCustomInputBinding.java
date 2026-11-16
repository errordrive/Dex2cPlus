package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;

/* JADX INFO: loaded from: classes.dex */
public final class DialogCustomInputBinding implements ViewBinding {
    public final TextView btnCustomInputCancel;
    public final TextView btnCustomInputOk;
    public final EditText etCustomInputValue;
    private final LinearLayout rootView;
    public final TextView tvCustomInputTitle;

    private DialogCustomInputBinding(LinearLayout linearLayout, TextView textView, TextView textView2, EditText editText, TextView textView3) {
        this.rootView = linearLayout;
        this.btnCustomInputCancel = textView;
        this.btnCustomInputOk = textView2;
        this.etCustomInputValue = editText;
        this.tvCustomInputTitle = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogCustomInputBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCustomInputBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_custom_input, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogCustomInputBinding bind(View view) {
        int i = R.id.btnCustomInputCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.btnCustomInputOk;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.etCustomInputValue;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText != null) {
                    i = R.id.tvCustomInputTitle;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        return new DialogCustomInputBinding((LinearLayout) view, textView, textView2, editText, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
