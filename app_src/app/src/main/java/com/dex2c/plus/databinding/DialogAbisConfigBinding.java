package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;

/* JADX INFO: loaded from: classes.dex */
public final class DialogAbisConfigBinding implements ViewBinding {
    public final TextView btnAbisCancel;
    public final TextView btnAbisOk;
    private final LinearLayout rootView;
    public final LinearLayout rowAbiArm32;
    public final LinearLayout rowAbiArm64;
    public final LinearLayout rowAbiX86;
    public final LinearLayout rowAbiX8664;
    public final SwitchCompat swAbiArm32;
    public final SwitchCompat swAbiArm64;
    public final SwitchCompat swAbiX86;
    public final SwitchCompat swAbiX8664;

    private DialogAbisConfigBinding(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, SwitchCompat switchCompat, SwitchCompat switchCompat2, SwitchCompat switchCompat3, SwitchCompat switchCompat4) {
        this.rootView = linearLayout;
        this.btnAbisCancel = textView;
        this.btnAbisOk = textView2;
        this.rowAbiArm32 = linearLayout2;
        this.rowAbiArm64 = linearLayout3;
        this.rowAbiX86 = linearLayout4;
        this.rowAbiX8664 = linearLayout5;
        this.swAbiArm32 = switchCompat;
        this.swAbiArm64 = switchCompat2;
        this.swAbiX86 = switchCompat3;
        this.swAbiX8664 = switchCompat4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogAbisConfigBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAbisConfigBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_abis_config, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogAbisConfigBinding bind(View view) {
        int i = R.id.btnAbisCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.btnAbisOk;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.rowAbiArm32;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.rowAbiArm64;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        i = R.id.rowAbiX86;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout3 != null) {
                            i = R.id.rowAbiX8664;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout4 != null) {
                                i = R.id.swAbiArm32;
                                SwitchCompat switchCompat = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                if (switchCompat != null) {
                                    i = R.id.swAbiArm64;
                                    SwitchCompat switchCompat2 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                    if (switchCompat2 != null) {
                                        i = R.id.swAbiX86;
                                        SwitchCompat switchCompat3 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                        if (switchCompat3 != null) {
                                            i = R.id.swAbiX8664;
                                            SwitchCompat switchCompat4 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                            if (switchCompat4 != null) {
                                                return new DialogAbisConfigBinding((LinearLayout) view, textView, textView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, switchCompat, switchCompat2, switchCompat3, switchCompat4);
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
