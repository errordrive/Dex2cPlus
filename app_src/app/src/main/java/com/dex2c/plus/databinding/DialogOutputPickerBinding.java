package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;
import com.google.android.material.radiobutton.MaterialRadioButton;

/* JADX INFO: loaded from: classes.dex */
public final class DialogOutputPickerBinding implements ViewBinding {
    public final TextView btnOutputCancel;
    public final MaterialRadioButton rbOutputApkFolder;
    public final MaterialRadioButton rbOutputDefault;
    public final RadioGroup rgOutputOptions;
    private final LinearLayout rootView;

    private DialogOutputPickerBinding(LinearLayout linearLayout, TextView textView, MaterialRadioButton materialRadioButton, MaterialRadioButton materialRadioButton2, RadioGroup radioGroup) {
        this.rootView = linearLayout;
        this.btnOutputCancel = textView;
        this.rbOutputApkFolder = materialRadioButton;
        this.rbOutputDefault = materialRadioButton2;
        this.rgOutputOptions = radioGroup;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogOutputPickerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogOutputPickerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_output_picker, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogOutputPickerBinding bind(View view) {
        int i = R.id.btnOutputCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.rbOutputApkFolder;
            MaterialRadioButton materialRadioButton = (MaterialRadioButton) ViewBindings.findChildViewById(view, i);
            if (materialRadioButton != null) {
                i = R.id.rbOutputDefault;
                MaterialRadioButton materialRadioButton2 = (MaterialRadioButton) ViewBindings.findChildViewById(view, i);
                if (materialRadioButton2 != null) {
                    i = R.id.rgOutputOptions;
                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, i);
                    if (radioGroup != null) {
                        return new DialogOutputPickerBinding((LinearLayout) view, textView, materialRadioButton, materialRadioButton2, radioGroup);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
