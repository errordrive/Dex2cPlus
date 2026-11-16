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
public final class DialogThemePickerBinding implements ViewBinding {
    public final TextView btnThemeCancel;
    public final MaterialRadioButton rbThemeDark;
    public final MaterialRadioButton rbThemeLight;
    public final MaterialRadioButton rbThemeSystem;
    public final RadioGroup rgThemeOptions;
    private final LinearLayout rootView;

    private DialogThemePickerBinding(LinearLayout linearLayout, TextView textView, MaterialRadioButton materialRadioButton, MaterialRadioButton materialRadioButton2, MaterialRadioButton materialRadioButton3, RadioGroup radioGroup) {
        this.rootView = linearLayout;
        this.btnThemeCancel = textView;
        this.rbThemeDark = materialRadioButton;
        this.rbThemeLight = materialRadioButton2;
        this.rbThemeSystem = materialRadioButton3;
        this.rgThemeOptions = radioGroup;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogThemePickerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogThemePickerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_theme_picker, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogThemePickerBinding bind(View view) {
        int i = R.id.btnThemeCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.rbThemeDark;
            MaterialRadioButton materialRadioButton = (MaterialRadioButton) ViewBindings.findChildViewById(view, i);
            if (materialRadioButton != null) {
                i = R.id.rbThemeLight;
                MaterialRadioButton materialRadioButton2 = (MaterialRadioButton) ViewBindings.findChildViewById(view, i);
                if (materialRadioButton2 != null) {
                    i = R.id.rbThemeSystem;
                    MaterialRadioButton materialRadioButton3 = (MaterialRadioButton) ViewBindings.findChildViewById(view, i);
                    if (materialRadioButton3 != null) {
                        i = R.id.rgThemeOptions;
                        RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, i);
                        if (radioGroup != null) {
                            return new DialogThemePickerBinding((LinearLayout) view, textView, materialRadioButton, materialRadioButton2, materialRadioButton3, radioGroup);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
