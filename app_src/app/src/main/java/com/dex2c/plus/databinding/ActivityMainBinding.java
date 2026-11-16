package com.dex2c.plus.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.dex2c.plus.R;
import com.dex2c.plus.ui.ShimmerFrameLayout;
import com.google.android.material.checkbox.MaterialCheckBox;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityMainBinding implements ViewBinding {
    public final ImageButton btnBuild;
    public final ImageButton btnHeaderApkPicker;
    public final ImageButton btnHeaderTelegram;
    public final ImageButton btnMoreMenu;
    public final MaterialCheckBox cbSelectAll;
    public final EditText etFilter;
    public final ShimmerFrameLayout filterBarContainer;
    public final LinearLayout filterBarContent;
    public final LinearLayout headerContainer;
    public final FrameLayout rootContainer;
    private final FrameLayout rootView;
    public final RecyclerView rvClasses;
    public final LinearLayout shimmerFilterLoading;
    public final ShimmerFrameLayout shimmerTreeLoading;
    public final SwitchCompat swTreeMode;
    public final TextView tvHeaderTitle;
    public final TextView tvSelectedCount;

    private ActivityMainBinding(FrameLayout frameLayout, ImageButton imageButton, ImageButton imageButton2, ImageButton imageButton3, ImageButton imageButton4, MaterialCheckBox materialCheckBox, EditText editText, ShimmerFrameLayout shimmerFrameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, FrameLayout frameLayout2, RecyclerView recyclerView, LinearLayout linearLayout3, ShimmerFrameLayout shimmerFrameLayout2, SwitchCompat switchCompat, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.btnBuild = imageButton;
        this.btnHeaderApkPicker = imageButton2;
        this.btnHeaderTelegram = imageButton3;
        this.btnMoreMenu = imageButton4;
        this.cbSelectAll = materialCheckBox;
        this.etFilter = editText;
        this.filterBarContainer = shimmerFrameLayout;
        this.filterBarContent = linearLayout;
        this.headerContainer = linearLayout2;
        this.rootContainer = frameLayout2;
        this.rvClasses = recyclerView;
        this.shimmerFilterLoading = linearLayout3;
        this.shimmerTreeLoading = shimmerFrameLayout2;
        this.swTreeMode = switchCompat;
        this.tvHeaderTitle = textView;
        this.tvSelectedCount = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_main, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityMainBinding bind(View view) {
        int i = R.id.btnBuild;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            i = R.id.btnHeaderApkPicker;
            ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, i);
            if (imageButton2 != null) {
                i = R.id.btnHeaderTelegram;
                ImageButton imageButton3 = (ImageButton) ViewBindings.findChildViewById(view, i);
                if (imageButton3 != null) {
                    i = R.id.btnMoreMenu;
                    ImageButton imageButton4 = (ImageButton) ViewBindings.findChildViewById(view, i);
                    if (imageButton4 != null) {
                        i = R.id.cbSelectAll;
                        MaterialCheckBox materialCheckBox = (MaterialCheckBox) ViewBindings.findChildViewById(view, i);
                        if (materialCheckBox != null) {
                            i = R.id.etFilter;
                            EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                            if (editText != null) {
                                i = R.id.filterBarContainer;
                                ShimmerFrameLayout shimmerFrameLayout = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, i);
                                if (shimmerFrameLayout != null) {
                                    i = R.id.filterBarContent;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = R.id.headerContainer;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            FrameLayout frameLayout = (FrameLayout) view;
                                            i = R.id.rvClasses;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                            if (recyclerView != null) {
                                                i = R.id.shimmerFilterLoading;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout3 != null) {
                                                    i = R.id.shimmerTreeLoading;
                                                    ShimmerFrameLayout shimmerFrameLayout2 = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, i);
                                                    if (shimmerFrameLayout2 != null) {
                                                        i = R.id.swTreeMode;
                                                        SwitchCompat switchCompat = (SwitchCompat) ViewBindings.findChildViewById(view, i);
                                                        if (switchCompat != null) {
                                                            i = R.id.tvHeaderTitle;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView != null) {
                                                                i = R.id.tvSelectedCount;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView2 != null) {
                                                                    return new ActivityMainBinding(frameLayout, imageButton, imageButton2, imageButton3, imageButton4, materialCheckBox, editText, shimmerFrameLayout, linearLayout, linearLayout2, frameLayout, recyclerView, linearLayout3, shimmerFrameLayout2, switchCompat, textView, textView2);
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
