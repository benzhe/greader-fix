package defpackage;

import android.animation.ObjectAnimator;
import android.util.Property;
import com.google.android.material.progressindicator.CircularProgressIndicatorSpec;

/* loaded from: classes.dex */
public final class k95 extends q95<ObjectAnimator> {
    public static final int[] l = {0, 1350, 2700, 4050};
    public static final int[] m = {667, 2017, 3367, 4717};
    public static final int[] n = {1000, 2350, 3700, 5050};
    public static final Property<k95, Float> o = new a(Float.class, "animationFraction");
    public static final Property<k95, Float> p = new b(Float.class, "completeEndFraction");
    public ObjectAnimator d;
    public ObjectAnimator e;
    public final uc f;
    public final g95 g;
    public int h;
    public float i;
    public float j;
    public oi k;

    public static class a extends Property<k95, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(k95 k95Var) {
            return Float.valueOf(k95Var.i);
        }

        @Override // android.util.Property
        public void set(k95 k95Var, Float f) {
            k95 k95Var2 = k95Var;
            float fFloatValue = f.floatValue();
            k95Var2.i = fFloatValue;
            int i = (int) (5400.0f * fFloatValue);
            float[] fArr = k95Var2.b;
            float f2 = fFloatValue * 1520.0f;
            fArr[0] = (-20.0f) + f2;
            fArr[1] = f2;
            for (int i2 = 0; i2 < 4; i2++) {
                float fB = k95Var2.b(i, k95.l[i2], 667);
                float[] fArr2 = k95Var2.b;
                fArr2[1] = (k95Var2.f.getInterpolation(fB) * 250.0f) + fArr2[1];
                float fB2 = k95Var2.b(i, k95.m[i2], 667);
                float[] fArr3 = k95Var2.b;
                fArr3[0] = (k95Var2.f.getInterpolation(fB2) * 250.0f) + fArr3[0];
            }
            float[] fArr4 = k95Var2.b;
            fArr4[0] = ((fArr4[1] - fArr4[0]) * k95Var2.j) + fArr4[0];
            fArr4[0] = fArr4[0] / 360.0f;
            fArr4[1] = fArr4[1] / 360.0f;
            int i3 = 0;
            while (true) {
                if (i3 >= 4) {
                    break;
                }
                float fB3 = k95Var2.b(i, k95.n[i3], 333);
                if (fB3 >= 0.0f && fB3 <= 1.0f) {
                    int i4 = i3 + k95Var2.h;
                    int[] iArr = k95Var2.g.c;
                    int length = i4 % iArr.length;
                    int length2 = (length + 1) % iArr.length;
                    int iH = c50.H(iArr[length], k95Var2.a.n);
                    int iH2 = c50.H(k95Var2.g.c[length2], k95Var2.a.n);
                    k95Var2.c[0] = j55.a.evaluate(k95Var2.f.getInterpolation(fB3), Integer.valueOf(iH), Integer.valueOf(iH2)).intValue();
                    break;
                }
                i3++;
            }
            k95Var2.a.invalidateSelf();
        }
    }

    public static class b extends Property<k95, Float> {
        public b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(k95 k95Var) {
            return Float.valueOf(k95Var.j);
        }

        @Override // android.util.Property
        public void set(k95 k95Var, Float f) {
            k95Var.j = f.floatValue();
        }
    }

    public k95(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.h = 0;
        this.k = null;
        this.g = circularProgressIndicatorSpec;
        this.f = new uc();
    }

    @Override // defpackage.q95
    public void a() {
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // defpackage.q95
    public void c() {
        h();
    }

    @Override // defpackage.q95
    public void d(oi oiVar) {
        this.k = oiVar;
    }

    @Override // defpackage.q95
    public void e() {
        if (this.e.isRunning()) {
            return;
        }
        if (this.a.isVisible()) {
            this.e.start();
        } else {
            a();
        }
    }

    @Override // defpackage.q95
    public void f() {
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, o, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new i95(this));
        }
        if (this.e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, p, 0.0f, 1.0f);
            this.e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.e.setInterpolator(this.f);
            this.e.addListener(new j95(this));
        }
        h();
        this.d.start();
    }

    @Override // defpackage.q95
    public void g() {
        this.k = null;
    }

    public void h() {
        this.h = 0;
        this.c[0] = c50.H(this.g.c[0], this.a.n);
        this.j = 0.0f;
    }
}
