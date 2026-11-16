package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivitySettingsBinding implements ViewBinding {
    public final ImageButton btnSettingsBack;
    public final LinearLayout headerSettings;
    public final LinearLayout rootSettings;
    private final LinearLayout rootView;
    public final LinearLayout rowAbisConfig;
    public final LinearLayout rowCustomLibName;
    public final LinearLayout rowCustomLoaderClass;
    public final LinearLayout rowEnvEncryption;
    public final LinearLayout rowMethodTypesConfig;
    public final LinearLayout rowMiniNdk;
    public final LinearLayout rowOutputSelection;
    public final LinearLayout rowParallelBuild;
    public final LinearLayout rowRegisterNatives;
    public final LinearLayout rowRewriteDex;
    public final LinearLayout rowThemePreference;
    public final SwitchCompat swEnvEncryption;
    public final SwitchCompat swParallelBuild;
    public final SwitchCompat swRegisterNatives;
    public final SwitchCompat swRewriteDex;
    public final TextView tvAbisConfigValue;
    public final TextView tvCustomLibNameValue;
    public final TextView tvCustomLoaderClassValue;
    public final TextView tvMethodTypesConfigValue;
    public final TextView tvNdkToggleSub;
    public final TextView tvOutputSelectionValue;
    public final TextView tvThemeCurrentValue;

    private ActivitySettingsBinding(LinearLayout linearLayout, ImageButton imageButton, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, LinearLayout linearLayout10, LinearLayout linearLayout11, LinearLayout linearLayout12, LinearLayout linearLayout13, LinearLayout linearLayout14, SwitchCompat switchCompat, SwitchCompat switchCompat2, SwitchCompat switchCompat3, SwitchCompat switchCompat4, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = linearLayout;
        this.btnSettingsBack = imageButton;
        this.headerSettings = linearLayout2;
        this.rootSettings = linearLayout3;
        this.rowAbisConfig = linearLayout4;
        this.rowCustomLibName = linearLayout5;
        this.rowCustomLoaderClass = linearLayout6;
        this.rowEnvEncryption = linearLayout7;
        this.rowMethodTypesConfig = linearLayout8;
        this.rowMiniNdk = linearLayout9;
        this.rowOutputSelection = linearLayout10;
        this.rowParallelBuild = linearLayout11;
        this.rowRegisterNatives = linearLayout12;
        this.rowRewriteDex = linearLayout13;
        this.rowThemePreference = linearLayout14;
        this.swEnvEncryption = switchCompat;
        this.swParallelBuild = switchCompat2;
        this.swRegisterNatives = switchCompat3;
        this.swRewriteDex = switchCompat4;
        this.tvAbisConfigValue = textView;
        this.tvCustomLibNameValue = textView2;
        this.tvCustomLoaderClassValue = textView3;
        this.tvMethodTypesConfigValue = textView4;
        this.tvNdkToggleSub = textView5;
        this.tvOutputSelectionValue = textView6;
        this.tvThemeCurrentValue = textView7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivitySettingsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySettingsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_settings, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivitySettingsBinding bind(View view) {
        int i = R.id.btnSettingsBack;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            i = R.id.headerSettings;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                LinearLayout linearLayout2 = (LinearLayout) view;
                i = R.id.rowAbisConfig;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout3 != null) {
                    i = R.id.rowCustomLibName;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout4 != null) {
                        i = R.id.rowCustomLoaderClass;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout5 != null) {
                            i = R.id.rowEnvEncryption;
                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout6 != null) {
                                i = R.id.rowMethodTypesConfig;
                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout7 != null) {
                                    i = R.id.rowMiniNdk;
                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout8 != null) {
                                        i = R.id.rowOutputSelection;
                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout9 != null) {
                                            i = R.id.rowParallelBuild;
                                            LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout10 != null) {
                                                i = R.id.rowRegisterNatives;
                                                LinearLayout linearLayout11 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout11 != null) {
                                                    i = R.id.rowRewriteDex;
                                                    LinearLayout linearLayout12 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout12 != null) {
                                                        i = R.id.rowThemePreference;
                                                        LinearLayout linearLayout13 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout13 != null) {
                                                            i = R.id.swEnvEncryption;
                                                            SwitchCompat switchCompat = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                            if (switchCompat != null) {
                                                                i = R.id.swParallelBuild;
                                                                SwitchCompat switchCompat2 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                                if (switchCompat2 != null) {
                                                                    i = R.id.swRegisterNatives;
                                                                    SwitchCompat switchCompat3 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                                    if (switchCompat3 != null) {
                                                                        i = R.id.swRewriteDex;
                                                                        SwitchCompat switchCompat4 = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                                        if (switchCompat4 != null) {
                                                                            i = R.id.tvAbisConfigValue;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView != null) {
                                                                                i = R.id.tvCustomLibNameValue;
                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView2 != null) {
                                                                                    i = R.id.tvCustomLoaderClassValue;
                                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView3 != null) {
                                                                                        i = R.id.tvMethodTypesConfigValue;
                                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView4 != null) {
                                                                                            i = R.id.tvNdkToggleSub;
                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView5 != null) {
                                                                                                i = R.id.tvOutputSelectionValue;
                                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView6 != null) {
                                                                                                    i = R.id.tvThemeCurrentValue;
                                                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView7 != null) {
                                                                                                        return new ActivitySettingsBinding(linearLayout2, imageButton, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, linearLayout11, linearLayout12, linearLayout13, switchCompat, switchCompat2, switchCompat3, switchCompat4, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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
