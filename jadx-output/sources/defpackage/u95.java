package defpackage;

import android.animation.ObjectAnimator;
import android.util.Property;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class u95 extends q95<ObjectAnimator> {
    public static final Property<u95, Float> j = new a(Float.class, "animationFraction");
    public ObjectAnimator d;
    public uc e;
    public final g95 f;
    public int g;
    public boolean h;
    public float i;

    public static class a extends Property<u95, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(u95 u95Var) {
            return Float.valueOf(u95Var.i);
        }

        @Override // android.util.Property
        public void set(u95 u95Var, Float f) {
            u95 u95Var2 = u95Var;
            float fFloatValue = f.floatValue();
            u95Var2.i = fFloatValue;
            u95Var2.b[0] = 0.0f;
            float fB = u95Var2.b((int) (fFloatValue * 333.0f), 0, 667);
            float[] fArr = u95Var2.b;
            float interpolation = u95Var2.e.getInterpolation(fB);
            fArr[2] = interpolation;
            fArr[1] = interpolation;
            float[] fArr2 = u95Var2.b;
            float interpolation2 = u95Var2.e.getInterpolation(fB + 0.49925038f);
            fArr2[4] = interpolation2;
            fArr2[3] = interpolation2;
            float[] fArr3 = u95Var2.b;
            fArr3[5] = 1.0f;
            if (u95Var2.h && fArr3[3] < 1.0f) {
                int[] iArr = u95Var2.c;
                iArr[2] = iArr[1];
                iArr[1] = iArr[0];
                iArr[0] = c50.H(u95Var2.f.c[u95Var2.g], u95Var2.a.n);
                u95Var2.h = false;
            }
            u95Var2.a.invalidateSelf();
        }
    }

    public u95(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.g = 1;
        this.f = linearProgressIndicatorSpec;
        this.e = new uc();
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
    }

    @Override // defpackage.q95
    public void e() {
    }

    @Override // defpackage.q95
    public void f() {
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, j, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new t95(this));
        }
        h();
        this.d.start();
    }

    @Override // defpackage.q95
    public void g() {
    }

    public void h() {
        this.h = true;
        this.g = 1;
        Arrays.fill(this.c, c50.H(this.f.c[0], this.a.n));
    }
}
