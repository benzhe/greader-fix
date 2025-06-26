package defpackage;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.material.R$animator;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class w95 extends q95<ObjectAnimator> {
    public static final int[] l = {533, 567, 850, 750};
    public static final int[] m = {1267, 1000, 333, 0};
    public static final Property<w95, Float> n = new a(Float.class, "animationFraction");
    public ObjectAnimator d;
    public final Interpolator[] e;
    public final g95 f;
    public int g;
    public boolean h;
    public float i;
    public boolean j;
    public oi k;

    public static class a extends Property<w95, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(w95 w95Var) {
            return Float.valueOf(w95Var.i);
        }

        @Override // android.util.Property
        public void set(w95 w95Var, Float f) {
            w95 w95Var2 = w95Var;
            float fFloatValue = f.floatValue();
            w95Var2.i = fFloatValue;
            int i = (int) (fFloatValue * 1800.0f);
            for (int i2 = 0; i2 < 4; i2++) {
                w95Var2.b[i2] = Math.max(0.0f, Math.min(1.0f, w95Var2.e[i2].getInterpolation(w95Var2.b(i, w95.m[i2], w95.l[i2]))));
            }
            if (w95Var2.h) {
                Arrays.fill(w95Var2.c, c50.H(w95Var2.f.c[w95Var2.g], w95Var2.a.n));
                w95Var2.h = false;
            }
            w95Var2.a.invalidateSelf();
        }
    }

    public w95(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.g = 0;
        this.k = null;
        this.f = linearProgressIndicatorSpec;
        this.e = new Interpolator[]{AnimationUtils.loadInterpolator(context, R$animator.linear_indeterminate_line1_head_interpolator), AnimationUtils.loadInterpolator(context, R$animator.linear_indeterminate_line1_tail_interpolator), AnimationUtils.loadInterpolator(context, R$animator.linear_indeterminate_line2_head_interpolator), AnimationUtils.loadInterpolator(context, R$animator.linear_indeterminate_line2_tail_interpolator)};
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
        if (this.a.isVisible()) {
            this.j = true;
            this.d.setRepeatCount(0);
        } else {
            ObjectAnimator objectAnimator = this.d;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
        }
    }

    @Override // defpackage.q95
    public void f() {
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, n, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new v95(this));
        }
        h();
        this.d.start();
    }

    @Override // defpackage.q95
    public void g() {
        this.k = null;
    }

    public void h() {
        this.g = 0;
        int iH = c50.H(this.f.c[0], this.a.n);
        int[] iArr = this.c;
        iArr[0] = iH;
        iArr[1] = iH;
    }
}
