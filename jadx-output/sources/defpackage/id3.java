package defpackage;

import defpackage.gl1;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public abstract class id3 implements Callable {
    public final xb3 e;
    public final String f;
    public final String g;
    public final gl1.b h;
    public Method i;
    public final int j;
    public final int k;

    public id3(xb3 xb3Var, String str, String str2, gl1.b bVar, int i, int i2) {
        getClass().getSimpleName();
        this.e = xb3Var;
        this.f = str;
        this.g = str2;
        this.h = bVar;
        this.j = i;
        this.k = i2;
    }

    public abstract void a() throws IllegalAccessException, InvocationTargetException;

    @Override // java.util.concurrent.Callable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        long jNanoTime;
        Method methodB;
        int i;
        try {
            jNanoTime = System.nanoTime();
            methodB = this.e.b(this.f, this.g);
            this.i = methodB;
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        if (methodB == null) {
            return null;
        }
        a();
        pr2 pr2Var = this.e.l;
        if (pr2Var != null && (i = this.j) != Integer.MIN_VALUE) {
            pr2Var.a(this.k, i, (System.nanoTime() - jNanoTime) / 1000, null, null);
        }
        return null;
    }
}
