package defpackage;

import android.content.Context;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* loaded from: classes2.dex */
public class os7 {
    public static final float[] o;
    public static float p;
    public static float q;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public long g;
    public int h;
    public float i;
    public float j;
    public float k;
    public boolean l;
    public Interpolator m;
    public final float n;

    static {
        float f;
        float f2;
        Math.log(0.75d);
        Math.log(0.9d);
        o = new float[101];
        float f3 = 0.0f;
        for (int i = 0; i <= 100; i++) {
            float f4 = i / 100.0f;
            float f5 = 1.0f;
            while (true) {
                float f6 = ((f5 - f3) / 2.0f) + f3;
                float f7 = 1.0f - f6;
                f = 3.0f * f6 * f7;
                float f8 = ((0.6f * f6) + (f7 * 0.4f)) * f;
                f2 = f6 * f6 * f6;
                float f9 = f8 + f2;
                if (Math.abs(f9 - f4) < 1.0E-5d) {
                    break;
                } else if (f9 > f4) {
                    f5 = f6;
                } else {
                    f3 = f6;
                }
            }
            o[i] = f + f2;
        }
        o[100] = 1.0f;
        p = 8.0f;
        q = 1.0f;
        q = 1.0f / d(1.0f);
    }

    public os7(Context context, Interpolator interpolator) {
        int i = context.getApplicationInfo().targetSdkVersion;
        this.l = true;
        this.m = interpolator;
        this.n = context.getResources().getDisplayMetrics().density * 160.0f;
        ViewConfiguration.getScrollFriction();
    }

    public static float d(float f) {
        float f2 = f * p;
        return (f2 < 1.0f ? f2 - (1.0f - ((float) Math.exp(-f2))) : jo.a(1.0f, (float) Math.exp(1.0f - f2), 0.63212055f, 0.36787945f)) * q;
    }

    public void a() {
        this.e = this.c;
        this.f = this.d;
        this.l = true;
    }

    public boolean b() {
        if (this.l) {
            return false;
        }
        int iCurrentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - this.g);
        if (iCurrentAnimationTimeMillis < this.h) {
            float f = iCurrentAnimationTimeMillis * this.i;
            Interpolator interpolator = this.m;
            float fD = interpolator == null ? d(f) : interpolator.getInterpolation(f);
            this.e = Math.round(this.j * fD) + this.a;
            this.f = Math.round(fD * this.k) + this.b;
        } else {
            this.e = this.c;
            this.f = this.d;
            this.l = true;
        }
        return true;
    }

    public void c(int i, int i2, int i3, int i4, int i5) {
        this.l = false;
        this.h = i5;
        this.g = AnimationUtils.currentAnimationTimeMillis();
        this.a = i;
        this.b = i2;
        this.c = i + i3;
        this.d = i2 + i4;
        this.j = i3;
        this.k = i4;
        this.i = 1.0f / this.h;
    }
}
