package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    private int mChainStyle;
    ArrayList<WidgetRun> mWidgets;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.mWidgets = new ArrayList<>();
        this.orientation = i;
        build();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.mWidgets) {
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean supportsWrapComputation() {
        int size = this.mWidgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.mWidgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.mWidgets.size();
        long wrapDimension = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            wrapDimension = wrapDimension + ((long) widgetRun.start.mMargin) + widgetRun.getWrapDimension() + ((long) widgetRun.end.mMargin);
        }
        return wrapDimension;
    }

    private void build() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.mWidget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.mWidget = constraintWidget;
        this.mWidgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.mWidgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        for (WidgetRun widgetRun : this.mWidgets) {
            if (this.orientation == 0) {
                widgetRun.mWidget.horizontalChainRun = this;
            } else if (this.orientation == 1) {
                widgetRun.mWidget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.mWidget.getParent()).isRtl() && this.mWidgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.mWidgets;
            this.mWidget = arrayList.get(arrayList.size() - 1).mWidget;
        }
        this.mChainStyle = this.orientation == 0 ? this.mWidget.getHorizontalChainStyle() : this.mWidget.getVerticalChainStyle();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void clear() {
        this.mRunGroup = null;
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i;
        int i2;
        float f;
        int i3;
        int i4;
        int i5;
        float f2;
        boolean z;
        int i6;
        int i7;
        float f3;
        int i8;
        int i9;
        int i10;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.mWidget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i11 = this.end.value - this.start.value;
            int size = this.mWidgets.size();
            int i12 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i12 >= size) {
                    i12 = -1;
                    break;
                } else if (this.mWidgets.get(i12).mWidget.getVisibility() != 8) {
                    break;
                } else {
                    i12++;
                }
            }
            int i13 = size - 1;
            for (int i14 = i13; i14 >= 0; i14--) {
                if (this.mWidgets.get(i14).mWidget.getVisibility() != 8) {
                    i = i14;
                    break;
                }
            }
            int i15 = 0;
            while (true) {
                if (i15 >= 2) {
                    f = 0.0f;
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    f2 = 0.0f;
                    break;
                }
                int i16 = 0;
                i4 = 0;
                i5 = 0;
                int i17 = 0;
                f2 = 0.0f;
                while (i16 < size) {
                    WidgetRun widgetRun = this.mWidgets.get(i16);
                    if (widgetRun.mWidget.getVisibility() != i2) {
                        i17++;
                        if (i16 > 0 && i16 >= i12) {
                            i4 += widgetRun.start.mMargin;
                        }
                        int i18 = widgetRun.mDimension.value;
                        boolean z2 = widgetRun.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z2) {
                            if (this.orientation == 0 && !widgetRun.mWidget.mHorizontalRun.mDimension.resolved) {
                                return;
                            }
                            if (this.orientation == 1 && !widgetRun.mWidget.mVerticalRun.mDimension.resolved) {
                                return;
                            }
                        } else {
                            if (widgetRun.matchConstraintsType == 1 && i15 == 0) {
                                i18 = widgetRun.mDimension.wrapValue;
                                i5++;
                            } else if (widgetRun.mDimension.resolved) {
                            }
                            z2 = true;
                        }
                        if (z2) {
                            i4 += i18;
                        } else {
                            i5++;
                            float f4 = widgetRun.mWidget.mWeight[this.orientation];
                            if (f4 >= 0.0f) {
                                f2 += f4;
                            }
                        }
                        if (i16 < i13 && i16 < i) {
                            i4 += -widgetRun.end.mMargin;
                        }
                    }
                    i16++;
                    i2 = 8;
                }
                f = 0.0f;
                if (i4 < i11 || i5 == 0) {
                    i3 = i17;
                    break;
                } else {
                    i15++;
                    i2 = 8;
                }
            }
            int i19 = this.start.value;
            if (zIsRtl) {
                i19 = this.end.value;
            }
            if (i4 > i11) {
                i19 = zIsRtl ? i19 + ((int) (((i4 - i11) / 2.0f) + 0.5f)) : i19 - ((int) (((i4 - i11) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f5 = i11 - i4;
                int i20 = (int) ((f5 / i5) + 0.5f);
                int i21 = 0;
                int i22 = 0;
                while (i21 < size) {
                    WidgetRun widgetRun2 = this.mWidgets.get(i21);
                    boolean z3 = zIsRtl;
                    if (widgetRun2.mWidget.getVisibility() == 8 || widgetRun2.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || widgetRun2.mDimension.resolved) {
                        i19 = i19;
                    } else {
                        int i23 = f2 > f ? (int) (((widgetRun2.mWidget.mWeight[this.orientation] * f5) / f2) + 0.5f) : i20;
                        if (this.orientation == 0) {
                            i9 = widgetRun2.mWidget.mMatchConstraintMaxWidth;
                            i10 = widgetRun2.mWidget.mMatchConstraintMinWidth;
                        } else {
                            i9 = widgetRun2.mWidget.mMatchConstraintMaxHeight;
                            i10 = widgetRun2.mWidget.mMatchConstraintMinHeight;
                        }
                        int iMax = Math.max(i10, widgetRun2.matchConstraintsType == 1 ? Math.min(i23, widgetRun2.mDimension.wrapValue) : i23);
                        if (i9 > 0) {
                            iMax = Math.min(i9, iMax);
                        }
                        if (iMax != i23) {
                            i22++;
                            i23 = iMax;
                        }
                        widgetRun2.mDimension.resolve(i23);
                    }
                    i21++;
                    zIsRtl = z3;
                    i19 = i19;
                    f5 = f5;
                    i20 = i20;
                }
                z = zIsRtl;
                i6 = i19;
                f3 = 0.5f;
                if (i22 > 0) {
                    i5 -= i22;
                    int i24 = 0;
                    for (int i25 = 0; i25 < size; i25++) {
                        WidgetRun widgetRun3 = this.mWidgets.get(i25);
                        if (widgetRun3.mWidget.getVisibility() != 8) {
                            if (i25 > 0 && i25 >= i12) {
                                i24 += widgetRun3.start.mMargin;
                            }
                            i24 += widgetRun3.mDimension.value;
                            if (i25 < i13 && i25 < i) {
                                i24 += -widgetRun3.end.mMargin;
                            }
                        }
                    }
                    i4 = i24;
                }
                i7 = 2;
                if (this.mChainStyle == 2 && i22 == 0) {
                    this.mChainStyle = 0;
                }
            } else {
                z = zIsRtl;
                i6 = i19;
                i7 = 2;
                f3 = 0.5f;
            }
            if (i4 > i11) {
                this.mChainStyle = i7;
            }
            if (i3 > 0 && i5 == 0 && i12 == i) {
                this.mChainStyle = i7;
            }
            int i26 = this.mChainStyle;
            if (i26 == 1) {
                if (i3 > 1) {
                    i8 = (i11 - i4) / (i3 - 1);
                } else {
                    i8 = i3 == 1 ? (i11 - i4) / 2 : 0;
                }
                if (i5 > 0) {
                    i8 = 0;
                }
                int i27 = i6;
                for (int i28 = 0; i28 < size; i28++) {
                    WidgetRun widgetRun4 = this.mWidgets.get(z ? size - (i28 + 1) : i28);
                    if (widgetRun4.mWidget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i27);
                        widgetRun4.end.resolve(i27);
                    } else {
                        if (i28 > 0) {
                            i27 = z ? i27 - i8 : i27 + i8;
                        }
                        if (i28 > 0 && i28 >= i12) {
                            if (z) {
                                i27 -= widgetRun4.start.mMargin;
                            } else {
                                i27 += widgetRun4.start.mMargin;
                            }
                        }
                        if (z) {
                            widgetRun4.end.resolve(i27);
                        } else {
                            widgetRun4.start.resolve(i27);
                        }
                        int i29 = widgetRun4.mDimension.value;
                        if (widgetRun4.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i29 = widgetRun4.mDimension.wrapValue;
                        }
                        i27 = z ? i27 - i29 : i27 + i29;
                        if (z) {
                            widgetRun4.start.resolve(i27);
                        } else {
                            widgetRun4.end.resolve(i27);
                        }
                        widgetRun4.mResolved = true;
                        if (i28 < i13 && i28 < i) {
                            if (z) {
                                i27 -= -widgetRun4.end.mMargin;
                            } else {
                                i27 += -widgetRun4.end.mMargin;
                            }
                        }
                    }
                }
                return;
            }
            if (i26 == 0) {
                int i30 = (i11 - i4) / (i3 + 1);
                if (i5 > 0) {
                    i30 = 0;
                }
                int i31 = i6;
                for (int i32 = 0; i32 < size; i32++) {
                    WidgetRun widgetRun5 = this.mWidgets.get(z ? size - (i32 + 1) : i32);
                    if (widgetRun5.mWidget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i31);
                        widgetRun5.end.resolve(i31);
                    } else {
                        int i33 = z ? i31 - i30 : i31 + i30;
                        if (i32 > 0 && i32 >= i12) {
                            if (z) {
                                i33 -= widgetRun5.start.mMargin;
                            } else {
                                i33 += widgetRun5.start.mMargin;
                            }
                        }
                        if (z) {
                            widgetRun5.end.resolve(i33);
                        } else {
                            widgetRun5.start.resolve(i33);
                        }
                        int iMin = widgetRun5.mDimension.value;
                        if (widgetRun5.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, widgetRun5.mDimension.wrapValue);
                        }
                        i31 = z ? i33 - iMin : i33 + iMin;
                        if (z) {
                            widgetRun5.start.resolve(i31);
                        } else {
                            widgetRun5.end.resolve(i31);
                        }
                        if (i32 < i13 && i32 < i) {
                            if (z) {
                                i31 -= -widgetRun5.end.mMargin;
                            } else {
                                i31 += -widgetRun5.end.mMargin;
                            }
                        }
                    }
                }
                return;
            }
            if (i26 == 2) {
                float horizontalBiasPercent = this.orientation == 0 ? this.mWidget.getHorizontalBiasPercent() : this.mWidget.getVerticalBiasPercent();
                if (z) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i34 = (int) (((i11 - i4) * horizontalBiasPercent) + f3);
                if (i34 < 0 || i5 > 0) {
                    i34 = 0;
                }
                int i35 = z ? i6 - i34 : i6 + i34;
                for (int i36 = 0; i36 < size; i36++) {
                    WidgetRun widgetRun6 = this.mWidgets.get(z ? size - (i36 + 1) : i36);
                    if (widgetRun6.mWidget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i35);
                        widgetRun6.end.resolve(i35);
                    } else {
                        if (i36 > 0 && i36 >= i12) {
                            if (z) {
                                i35 -= widgetRun6.start.mMargin;
                            } else {
                                i35 += widgetRun6.start.mMargin;
                            }
                        }
                        if (z) {
                            widgetRun6.end.resolve(i35);
                        } else {
                            widgetRun6.start.resolve(i35);
                        }
                        int i37 = widgetRun6.mDimension.value;
                        if (widgetRun6.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i37 = widgetRun6.mDimension.wrapValue;
                        }
                        i35 = z ? i35 - i37 : i35 + i37;
                        if (z) {
                            widgetRun6.start.resolve(i35);
                        } else {
                            widgetRun6.end.resolve(i35);
                        }
                        if (i36 < i13 && i36 < i) {
                            if (z) {
                                i35 -= -widgetRun6.end.mMargin;
                            } else {
                                i35 += -widgetRun6.end.mMargin;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            this.mWidgets.get(i).applyToWidget();
        }
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.mWidgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.mWidgets.get(size);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void apply() {
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.mWidgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.mWidgets.get(0).mWidget;
        ConstraintWidget constraintWidget2 = this.mWidgets.get(size - 1).mWidget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }
}
