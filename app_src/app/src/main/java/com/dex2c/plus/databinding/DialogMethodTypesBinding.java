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
public final class DialogMethodTypesBinding implements ViewBinding {
    public final TextView btnMethodTypesCancel;
    public final TextView btnMethodTypesOk;
    private final LinearLayout rootView;
    public final LinearLayout rowDialogTypeBridge;
    public final LinearLayout rowDialogTypePrivate;
    public final LinearLayout rowDialogTypeStatic;
    public final LinearLayout rowDialogTypeSynchronized;
    public final LinearLayout rowDialogTypeSynthetic;
    public final LinearLayout rowDialogTypeVarargs;
    public final LinearLayout rowDialogTypeVirtual;
    public final SwitchCompat swDialogTypeBridge;
    public final SwitchCompat swDialogTypePrivate;
    public final SwitchCompat swDialogTypeStatic;
    public final SwitchCompat swDialogTypeSynchronized;
    public final SwitchCompat swDialogTypeSynthetic;
    public final SwitchCompat swDialogTypeVarargs;
    public final SwitchCompat swDialogTypeVirtual;

    private DialogMethodTypesBinding(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, SwitchCompat switchCompat, SwitchCompat switchCompat2, SwitchCompat switchCompat3, SwitchCompat switchCompat4, SwitchCompat switchCompat5, SwitchCompat switchCompat6, SwitchCompat switchCompat7) {
        this.rootView = linearLayout;
        this.btnMethodTypesCancel = textView;
        this.btnMethodTypesOk = textView2;
        this.rowDialogTypeBridge = linearLayout2;
        this.rowDialogTypePrivate = linearLayout3;
        this.rowDialogTypeStatic = linearLayout4;
        this.rowDialogTypeSynchronized = linearLayout5;
        this.rowDialogTypeSynthetic = linearLayout6;
        this.rowDialogTypeVarargs = linearLayout7;
        this.rowDialogTypeVirtual = linearLayout8;
        this.swDialogTypeBridge = switchCompat;
        this.swDialogTypePrivate = switchCompat2;
        this.swDialogTypeStatic = switchCompat3;
        this.swDialogTypeSynchronized = switchCompat4;
        this.swDialogTypeSynthetic = switchCompat5;
        this.swDialogTypeVarargs = switchCompat6;
        this.swDialogTypeVirtual = switchCompat7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogMethodTypesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogMethodTypesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_method_types, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogMethodTypesBinding bind(View view) {
        int i = R.id.btnMethodTypesCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.btnMethodTypesOk;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.rowDialogTypeBridge;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.rowDialogTypePrivate;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        i = R.id.rowDialogTypeStatic;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout3 != null) {
                            i = R.id.rowDialogTypeSynchronized;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout4 != null) {
                                i = R.id.rowDialogTypeSynthetic;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout5 != null) {
                                    i = R.id.rowDialogTypeVarargs;
                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout6 != null) {
                                        i = R.id.rowDialogTypeVirtual;
                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout7 != null) {
                                            i = R.id.swDialogTypeBridge;
                                            SwitchCompat switchCompat = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                            if (switchCompat != null) {
                                                i = R.id.swDialogTypePrivate;
                                                SwitchCompat switchCompat2 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                if (switchCompat2 != null) {
                                                    i = R.id.swDialogTypeStatic;
                                                    SwitchCompat switchCompat3 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                    if (switchCompat3 != null) {
                                                        i = R.id.swDialogTypeSynchronized;
                                                        SwitchCompat switchCompat4 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                        if (switchCompat4 != null) {
                                                            i = R.id.swDialogTypeSynthetic;
                                                            SwitchCompat switchCompat5 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                            if (switchCompat5 != null) {
                                                                i = R.id.swDialogTypeVarargs;
                                                                SwitchCompat switchCompat6 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                                if (switchCompat6 != null) {
                                                                    i = R.id.swDialogTypeVirtual;
                                                                    SwitchCompat switchCompat7 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                                    if (switchCompat7 != null) {
                                                                        return new DialogMethodTypesBinding((LinearLayout) view, textView, textView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, switchCompat, switchCompat2, switchCompat3, switchCompat4, switchCompat5, switchCompat6, switchCompat7);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
