package defpackage;

import android.animation.Animator;

/* loaded from: classes.dex */
public abstract class q95<T extends Animator> {
    public r95 a;
    public final float[] b;
    public final int[] c;

    public q95(int i) {
        this.b = new float[i * 2];
        this.c = new int[i];
    }

    public abstract void a();

    public float b(int i, int i2, int i3) {
        return (i - i2) / i3;
    }

    public abstract void c();

    public abstract void d(oi oiVar);

    public abstract void e();

    public abstract void f();

    public abstract void g();
}
