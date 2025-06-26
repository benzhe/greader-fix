package defpackage;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public abstract class o95 extends Drawable implements Animatable {
    public static final Property<o95, Float> o = new a(Float.class, "growFraction");
    public final Context e;
    public final g95 f;
    public ValueAnimator h;
    public ValueAnimator i;
    public List<oi> j;
    public boolean k;
    public float l;
    public final Paint m = new Paint();
    public f95 g = new f95();
    public int n = Base64.BASELENGTH;

    public static class a extends Property<o95, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(o95 o95Var) {
            return Float.valueOf(o95Var.c());
        }

        @Override // android.util.Property
        public void set(o95 o95Var, Float f) {
            o95 o95Var2 = o95Var;
            float fFloatValue = f.floatValue();
            if (o95Var2.l != fFloatValue) {
                o95Var2.l = fFloatValue;
                o95Var2.invalidateSelf();
            }
        }
    }

    public o95(Context context, g95 g95Var) {
        this.e = context;
        this.f = g95Var;
        invalidateSelf();
    }

    public final void b(ValueAnimator... valueAnimatorArr) {
        boolean z = this.k;
        this.k = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.k = z;
    }

    public float c() {
        g95 g95Var = this.f;
        if (!(g95Var.e != 0)) {
            if (!(g95Var.f != 0)) {
                return 1.0f;
            }
        }
        return this.l;
    }

    public boolean d() {
        return h(false, false, false);
    }

    public boolean e() {
        ValueAnimator valueAnimator = this.i;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public boolean f() {
        ValueAnimator valueAnimator = this.h;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public void g(oi oiVar) {
        if (this.j == null) {
            this.j = new ArrayList();
        }
        if (this.j.contains(oiVar)) {
            return;
        }
        this.j.add(oiVar);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean h(boolean z, boolean z2, boolean z3) {
        return i(z, z2, z3 && this.g.a(this.e.getContentResolver()) > 0.0f);
    }

    public boolean i(boolean z, boolean z2, boolean z3) {
        if (this.h == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, o, 0.0f, 1.0f);
            this.h = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.h.setInterpolator(i55.b);
            ValueAnimator valueAnimator = this.h;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
            this.h = valueAnimator;
            valueAnimator.addListener(new m95(this));
        }
        if (this.i == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, o, 1.0f, 0.0f);
            this.i = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.i.setInterpolator(i55.b);
            ValueAnimator valueAnimator2 = this.i;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
            this.i = valueAnimator2;
            valueAnimator2.addListener(new n95(this));
        }
        if (!isVisible() && !z) {
            return false;
        }
        ValueAnimator valueAnimator3 = z ? this.h : this.i;
        if (!z3) {
            if (valueAnimator3.isRunning()) {
                valueAnimator3.end();
            } else {
                b(valueAnimator3);
            }
            return super.setVisible(z, false);
        }
        if (z3 && valueAnimator3.isRunning()) {
            return false;
        }
        boolean z4 = !z || super.setVisible(z, false);
        if (!(!z ? this.f.f == 0 : this.f.e == 0)) {
            b(valueAnimator3);
            return z4;
        }
        if (z2 || !valueAnimator3.isPaused()) {
            valueAnimator3.start();
        } else {
            valueAnimator3.resume();
        }
        return z4;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return f() || e();
    }

    public boolean j(oi oiVar) {
        List<oi> list = this.j;
        if (list == null || !list.contains(oiVar)) {
            return false;
        }
        this.j.remove(oiVar);
        if (!this.j.isEmpty()) {
            return true;
        }
        this.j = null;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.n = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.m.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return h(z, z2, true);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        i(true, true, false);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        i(false, true, false);
    }
}
