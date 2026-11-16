package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Cubic.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 ?2\u00020\u0001:\u0001?B7\b\u0010\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0006\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0007\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0002\u0010\bB\u0011\b\u0000\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ!\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\n2\b\b\u0002\u0010#\u001a\u00020$H\u0000¢\u0006\u0002\b%J\u0011\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\rH\u0086\u0002J\u0011\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H\u0086\u0002J\u0013\u0010)\u001a\u00020$2\b\u0010*\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010+\u001a\u00020(H\u0016J\u0011\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0000H\u0086\u0002J!\u0010.\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010/\u001a\u00020\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101J\u0006\u00102\u001a\u00020\u0000J\u001a\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0000042\u0006\u0010/\u001a\u00020\rJ\u0011\u00105\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\rH\u0086\u0002J\u0011\u00105\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H\u0086\u0002J\b\u00106\u001a\u000207H\u0016J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:J\u0010\u0010;\u001a\u00020$2\u0006\u0010<\u001a\u00020\rH\u0002J\r\u0010=\u001a\u00020$H\u0000¢\u0006\u0002\b>R\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0016\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000fR\u0011\u0010\u001a\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000fR\u0011\u0010\u001c\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u000fR\u0014\u0010\t\u001a\u00020\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006@"}, d2 = {"Landroidx/graphics/shapes/Cubic;", "", "anchor0", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "control0", "control1", "anchor1", "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "points", "", "([F)V", "anchor0X", "", "getAnchor0X", "()F", "anchor0Y", "getAnchor0Y", "anchor1X", "getAnchor1X", "anchor1Y", "getAnchor1Y", "control0X", "getControl0X", "control0Y", "getControl0Y", "control1X", "getControl1X", "control1Y", "getControl1Y", "getPoints$graphics_shapes_release", "()[F", "calculateBounds", "", "bounds", "approximate", "", "calculateBounds$graphics_shapes_release", "div", "x", "", "equals", "other", "hashCode", "plus", "o", "pointOnCurve", "t", "pointOnCurve-OOQOV4g$graphics_shapes_release", "(F)J", "reverse", "split", "Lkotlin/Pair;", "times", "toString", "", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "zeroIsh", "value", "zeroLength", "zeroLength$graphics_shapes_release", "Companion", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class Cubic {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final float[] points;

    /* JADX WARN: Multi-variable type inference failed */
    public Cubic() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ Cubic(long j, long j2, long j3, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4);
    }

    @JvmStatic
    public static final Cubic circularArc(float f, float f2, float f3, float f4, float f5, float f6) {
        return INSTANCE.circularArc(f, f2, f3, f4, f5, f6);
    }

    @JvmStatic
    public static final Cubic straightLine(float f, float f2, float f3, float f4) {
        return INSTANCE.straightLine(f, f2, f3, f4);
    }

    public Cubic(float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.points = points;
        if (points.length != 8) {
            throw new IllegalArgumentException("Points array size should be 8".toString());
        }
    }

    public /* synthetic */ Cubic(float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new float[8] : fArr);
    }

    /* JADX INFO: renamed from: getPoints$graphics_shapes_release, reason: from getter */
    public final float[] getPoints() {
        return this.points;
    }

    public final float getAnchor0X() {
        return this.points[0];
    }

    public final float getAnchor0Y() {
        return this.points[1];
    }

    public final float getControl0X() {
        return this.points[2];
    }

    public final float getControl0Y() {
        return this.points[3];
    }

    public final float getControl1X() {
        return this.points[4];
    }

    public final float getControl1Y() {
        return this.points[5];
    }

    public final float getAnchor1X() {
        return this.points[6];
    }

    public final float getAnchor1Y() {
        return this.points[7];
    }

    private Cubic(long j, long j2, long j3, long j4) {
        this(new float[]{PointKt.m243getXDnnuFBc(j), PointKt.m244getYDnnuFBc(j), PointKt.m243getXDnnuFBc(j2), PointKt.m244getYDnnuFBc(j2), PointKt.m243getXDnnuFBc(j3), PointKt.m244getYDnnuFBc(j3), PointKt.m243getXDnnuFBc(j4), PointKt.m244getYDnnuFBc(j4)});
    }

    /* JADX INFO: renamed from: pointOnCurve-OOQOV4g$graphics_shapes_release, reason: not valid java name */
    public final long m231pointOnCurveOOQOV4g$graphics_shapes_release(float t) {
        float f = 1 - t;
        float f2 = f * f * f;
        float f3 = 3 * t;
        float f4 = f3 * f * f;
        float f5 = f3 * t * f;
        float f6 = t * t * t;
        return FloatFloatPair.m37constructorimpl((getAnchor0X() * f2) + (getControl0X() * f4) + (getControl1X() * f5) + (getAnchor1X() * f6), (getAnchor0Y() * f2) + (getControl0Y() * f4) + (getControl1Y() * f5) + (getAnchor1Y() * f6));
    }

    public final boolean zeroLength$graphics_shapes_release() {
        return Math.abs(getAnchor0X() - getAnchor1X()) < 1.0E-4f && Math.abs(getAnchor0Y() - getAnchor1Y()) < 1.0E-4f;
    }

    private final boolean zeroIsh(float value) {
        return Math.abs(value) < 1.0E-4f;
    }

    public static /* synthetic */ void calculateBounds$graphics_shapes_release$default(Cubic cubic, float[] fArr, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: calculateBounds");
        }
        if ((i & 1) != 0) {
            fArr = new float[4];
        }
        if ((i & 2) != 0) {
            z = false;
        }
        cubic.calculateBounds$graphics_shapes_release(fArr, z);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:53:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:63:0x01d8 A[PHI: r3 r7
      0x01d8: PHI (r3v15 float) = (r3v12 float), (r3v21 float) binds: [B:85:0x022a, B:62:0x01d6] A[DONT_GENERATE, DONT_INLINE]
      0x01d8: PHI (r7v14 float) = (r7v10 float), (r7v16 float) binds: [B:85:0x022a, B:62:0x01d6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:64:0x01da  */
    /* JADX WARN: Code duplicated, block: B:66:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:72:0x0204  */
    /* JADX WARN: Code duplicated, block: B:75:0x0209  */
    /* JADX WARN: Code duplicated, block: B:87:0x022d A[PHI: r9 r15
      0x022d: PHI (r9v5 float) = (r9v2 float), (r9v3 float), (r9v3 float), (r9v2 float), (r9v2 float), (r9v2 float) binds: [B:65:0x01e3, B:77:0x0213, B:79:0x0217, B:51:0x01b3, B:54:0x01bf, B:56:0x01c3] A[DONT_GENERATE, DONT_INLINE]
      0x022d: PHI (r15v13 float) = (r15v9 float), (r15v10 float), (r15v10 float), (r15v9 float), (r15v9 float), (r15v9 float) binds: [B:65:0x01e3, B:77:0x0213, B:79:0x0217, B:51:0x01b3, B:54:0x01bf, B:56:0x01c3] A[DONT_GENERATE, DONT_INLINE]] */
    public final void calculateBounds$graphics_shapes_release(float[] bounds, boolean approximate) {
        char c;
        char c2;
        float f;
        char c3;
        float control0Y;
        float anchor0Y;
        float control0Y2;
        float f2;
        float fSqrt;
        float fSqrt2;
        float fM244getYDnnuFBc;
        float f3;
        float fM244getYDnnuFBc2;
        float f4;
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        if (zeroLength$graphics_shapes_release()) {
            bounds[0] = getAnchor0X();
            bounds[1] = getAnchor0Y();
            bounds[2] = getAnchor0X();
            bounds[3] = getAnchor0Y();
            return;
        }
        float fMin = Math.min(getAnchor0X(), getAnchor1X());
        float fMin2 = Math.min(getAnchor0Y(), getAnchor1Y());
        float fMax = Math.max(getAnchor0X(), getAnchor1X());
        float fMax2 = Math.max(getAnchor0Y(), getAnchor1Y());
        if (approximate) {
            bounds[0] = Math.min(fMin, Math.min(getControl0X(), getControl1X()));
            bounds[1] = Math.min(fMin2, Math.min(getControl0Y(), getControl1Y()));
            bounds[2] = Math.max(fMax, Math.max(getControl0X(), getControl1X()));
            bounds[3] = Math.max(fMax2, Math.max(getControl0Y(), getControl1Y()));
            return;
        }
        float f5 = 3;
        float control0X = (((-getAnchor0X()) + (getControl0X() * f5)) - (getControl1X() * f5)) + getAnchor1X();
        float f6 = 2;
        float f7 = 4;
        float anchor0X = ((getAnchor0X() * f6) - (getControl0X() * f7)) + (getControl1X() * f6);
        float control0X2 = (-getAnchor0X()) + getControl0X();
        if (!zeroIsh(control0X)) {
            float f8 = (anchor0X * anchor0X) - ((f7 * control0X) * control0X2);
            if (f8 >= 0.0f) {
                float f9 = -anchor0X;
                c = 3;
                c2 = 0;
                double d = f8;
                f = fMin2;
                c3 = 2;
                float f10 = control0X * f6;
                float fSqrt3 = (((float) Math.sqrt(d)) + f9) / f10;
                if (0.0f <= fSqrt3 && fSqrt3 <= 1.0f) {
                    float fM243getXDnnuFBc = PointKt.m243getXDnnuFBc(m231pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt3));
                    if (fM243getXDnnuFBc < fMin) {
                        fMin = fM243getXDnnuFBc;
                    }
                    if (fM243getXDnnuFBc > fMax) {
                        fMax = fM243getXDnnuFBc;
                    }
                }
                float fSqrt4 = (f9 - ((float) Math.sqrt(d))) / f10;
                if (0.0f <= fSqrt4 && fSqrt4 <= 1.0f) {
                    float fM243getXDnnuFBc2 = PointKt.m243getXDnnuFBc(m231pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt4));
                    if (fM243getXDnnuFBc2 < fMin) {
                        fMin = fM243getXDnnuFBc2;
                    }
                    if (fM243getXDnnuFBc2 > fMax) {
                        fMax = fM243getXDnnuFBc2;
                    }
                }
            }
            control0Y = (((-getAnchor0Y()) + (getControl0Y() * f5)) - (f5 * getControl1Y())) + getAnchor1Y();
            anchor0Y = ((getAnchor0Y() * f6) - (getControl0Y() * f7)) + (getControl1Y() * f6);
            control0Y2 = (-getAnchor0Y()) + getControl0Y();
            if (zeroIsh(control0Y)) {
                f2 = (anchor0Y * anchor0Y) - ((f7 * control0Y) * control0Y2);
                if (f2 >= 0.0f) {
                    float f11 = -anchor0Y;
                    double d2 = f2;
                    float f12 = f6 * control0Y;
                    fSqrt = (((float) Math.sqrt(d2)) + f11) / f12;
                    if (0.0f <= fSqrt && fSqrt <= 1.0f) {
                        fM244getYDnnuFBc2 = PointKt.m244getYDnnuFBc(m231pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                        if (fM244getYDnnuFBc2 < f) {
                            f = fM244getYDnnuFBc2;
                        }
                        if (fM244getYDnnuFBc2 > fMax2) {
                            fMax2 = fM244getYDnnuFBc2;
                        }
                    }
                    fSqrt2 = (f11 - ((float) Math.sqrt(d2))) / f12;
                    if (0.0f <= fSqrt2 || fSqrt2 > 1.0f) {
                        f3 = f;
                    } else {
                        fM244getYDnnuFBc = PointKt.m244getYDnnuFBc(m231pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt2));
                        f3 = fM244getYDnnuFBc < f ? fM244getYDnnuFBc : f;
                        if (fM244getYDnnuFBc > fMax2) {
                            fMax2 = fM244getYDnnuFBc;
                        }
                    }
                } else {
                    f3 = f;
                }
            } else if (anchor0Y == 0.0f) {
                f3 = f;
            } else {
                f4 = (f6 * control0Y2) / ((-2) * anchor0Y);
                if (0.0f <= f4 || f4 > 1.0f) {
                    f3 = f;
                } else {
                    fM244getYDnnuFBc = PointKt.m244getYDnnuFBc(m231pointOnCurveOOQOV4g$graphics_shapes_release(f4));
                    f3 = fM244getYDnnuFBc < f ? fM244getYDnnuFBc : f;
                    if (fM244getYDnnuFBc > fMax2) {
                        fMax2 = fM244getYDnnuFBc;
                    }
                }
            }
            bounds[c2] = fMin;
            bounds[1] = f3;
            bounds[c3] = fMax;
            bounds[c] = fMax2;
        }
        if (anchor0X != 0.0f) {
            float f13 = (control0X2 * f6) / ((-2) * anchor0X);
            if (0.0f <= f13 && f13 <= 1.0f) {
                float fM243getXDnnuFBc3 = PointKt.m243getXDnnuFBc(m231pointOnCurveOOQOV4g$graphics_shapes_release(f13));
                if (fM243getXDnnuFBc3 < fMin) {
                    fMin = fM243getXDnnuFBc3;
                }
                if (fM243getXDnnuFBc3 > fMax) {
                    fMax = fM243getXDnnuFBc3;
                }
            }
        }
        f = fMin2;
        c = 3;
        c2 = 0;
        c3 = 2;
        control0Y = (((-getAnchor0Y()) + (getControl0Y() * f5)) - (f5 * getControl1Y())) + getAnchor1Y();
        anchor0Y = ((getAnchor0Y() * f6) - (getControl0Y() * f7)) + (getControl1Y() * f6);
        control0Y2 = (-getAnchor0Y()) + getControl0Y();
        if (zeroIsh(control0Y)) {
            f2 = (anchor0Y * anchor0Y) - ((f7 * control0Y) * control0Y2);
            if (f2 >= 0.0f) {
                float f14 = -anchor0Y;
                double d3 = f2;
                float f15 = f6 * control0Y;
                fSqrt = (((float) Math.sqrt(d3)) + f14) / f15;
                if (0.0f <= fSqrt) {
                    fM244getYDnnuFBc2 = PointKt.m244getYDnnuFBc(m231pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                    if (fM244getYDnnuFBc2 < f) {
                        f = fM244getYDnnuFBc2;
                    }
                    if (fM244getYDnnuFBc2 > fMax2) {
                        fMax2 = fM244getYDnnuFBc2;
                    }
                }
                fSqrt2 = (f14 - ((float) Math.sqrt(d3))) / f15;
                if (0.0f <= fSqrt2) {
                    f3 = f;
                } else {
                    f3 = f;
                }
            } else {
                f3 = f;
            }
        } else if (anchor0Y == 0.0f) {
            f3 = f;
        } else {
            f4 = (f6 * control0Y2) / ((-2) * anchor0Y);
            if (0.0f <= f4) {
                f3 = f;
            } else {
                f3 = f;
            }
        }
        bounds[c2] = fMin;
        bounds[1] = f3;
        bounds[c3] = fMax;
        bounds[c] = fMax2;
    }

    public final Pair<Cubic, Cubic> split(float t) {
        float f = 1 - t;
        long jM231pointOnCurveOOQOV4g$graphics_shapes_release = m231pointOnCurveOOQOV4g$graphics_shapes_release(t);
        float f2 = f * f;
        float f3 = 2 * f * t;
        float f4 = t * t;
        return TuplesKt.to(CubicKt.Cubic(getAnchor0X(), getAnchor0Y(), (getAnchor0X() * f) + (getControl0X() * t), (getAnchor0Y() * f) + (getControl0Y() * t), (getAnchor0X() * f2) + (getControl0X() * f3) + (getControl1X() * f4), (getAnchor0Y() * f2) + (getControl0Y() * f3) + (getControl1Y() * f4), PointKt.m243getXDnnuFBc(jM231pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m244getYDnnuFBc(jM231pointOnCurveOOQOV4g$graphics_shapes_release)), CubicKt.Cubic(PointKt.m243getXDnnuFBc(jM231pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m244getYDnnuFBc(jM231pointOnCurveOOQOV4g$graphics_shapes_release), (getControl0X() * f2) + (getControl1X() * f3) + (getAnchor1X() * f4), (getControl0Y() * f2) + (getControl1Y() * f3) + (getAnchor1Y() * f4), (getControl1X() * f) + (getAnchor1X() * t), (getControl1Y() * f) + (getAnchor1Y() * t), getAnchor1X(), getAnchor1Y()));
    }

    public final Cubic reverse() {
        return CubicKt.Cubic(getAnchor1X(), getAnchor1Y(), getControl1X(), getControl1Y(), getControl0X(), getControl0Y(), getAnchor0X(), getAnchor0Y());
    }

    public final Cubic plus(Cubic o) {
        Intrinsics.checkNotNullParameter(o, "o");
        float[] fArr = new float[8];
        for (int i = 0; i < 8; i++) {
            fArr[i] = this.points[i] + o.points[i];
        }
        return new Cubic(fArr);
    }

    public final Cubic times(float x) {
        float[] fArr = new float[8];
        for (int i = 0; i < 8; i++) {
            fArr[i] = this.points[i] * x;
        }
        return new Cubic(fArr);
    }

    public final Cubic times(int x) {
        return times(x);
    }

    public final Cubic div(float x) {
        return times(1.0f / x);
    }

    public final Cubic div(int x) {
        return div(x);
    }

    public String toString() {
        return "anchor0: (" + getAnchor0X() + ", " + getAnchor0Y() + ") control0: (" + getControl0X() + ", " + getControl0Y() + "), control1: (" + getControl1X() + ", " + getControl1Y() + "), anchor1: (" + getAnchor1X() + ", " + getAnchor1Y() + ')';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Cubic) {
            return Arrays.equals(this.points, ((Cubic) other).points);
        }
        return false;
    }

    public final Cubic transformed(PointTransformer f) {
        Intrinsics.checkNotNullParameter(f, "f");
        MutableCubic mutableCubic = new MutableCubic();
        ArraysKt.copyInto$default(this.points, mutableCubic.getPoints(), 0, 0, 0, 14, (Object) null);
        mutableCubic.transform(f);
        return mutableCubic;
    }

    public int hashCode() {
        return Arrays.hashCode(this.points);
    }

    /* JADX INFO: compiled from: Cubic.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J(\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007¨\u0006\r"}, d2 = {"Landroidx/graphics/shapes/Cubic$Companion;", "", "()V", "circularArc", "Landroidx/graphics/shapes/Cubic;", "centerX", "", "centerY", "x0", "y0", "x1", "y1", "straightLine", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Cubic straightLine(float x0, float y0, float x1, float y1) {
            return CubicKt.Cubic(x0, y0, Utils.interpolate(x0, x1, 0.33333334f), Utils.interpolate(y0, y1, 0.33333334f), Utils.interpolate(x0, x1, 0.6666667f), Utils.interpolate(y0, y1, 0.6666667f), x1, y1);
        }

        @JvmStatic
        public final Cubic circularArc(float centerX, float centerY, float x0, float y0, float x1, float y1) {
            float f = x0 - centerX;
            float f2 = y0 - centerY;
            long jDirectionVector = Utils.directionVector(f, f2);
            float f3 = x1 - centerX;
            float f4 = y1 - centerY;
            long jDirectionVector2 = Utils.directionVector(f3, f4);
            long jM264rotate90DnnuFBc = Utils.m264rotate90DnnuFBc(jDirectionVector);
            long jM264rotate90DnnuFBc2 = Utils.m264rotate90DnnuFBc(jDirectionVector2);
            boolean z = PointKt.m238dotProduct5P9i7ZU(jM264rotate90DnnuFBc, f3, f4) >= 0.0f;
            float fM239dotProductybeJwSQ = PointKt.m239dotProductybeJwSQ(jDirectionVector, jDirectionVector2);
            if (fM239dotProductybeJwSQ > 0.999f) {
                return straightLine(x0, y0, x1, y1);
            }
            float f5 = 1;
            float f6 = f5 - fM239dotProductybeJwSQ;
            float fDistance = ((((Utils.distance(f, f2) * 4.0f) / 3.0f) * (((float) Math.sqrt(2 * f6)) - ((float) Math.sqrt(f5 - (fM239dotProductybeJwSQ * fM239dotProductybeJwSQ))))) / f6) * (z ? 1.0f : -1.0f);
            return CubicKt.Cubic(x0, y0, x0 + (PointKt.m243getXDnnuFBc(jM264rotate90DnnuFBc) * fDistance), y0 + (PointKt.m244getYDnnuFBc(jM264rotate90DnnuFBc) * fDistance), x1 - (PointKt.m243getXDnnuFBc(jM264rotate90DnnuFBc2) * fDistance), y1 - (PointKt.m244getYDnnuFBc(jM264rotate90DnnuFBc2) * fDistance), x1, y1);
        }
    }
}
