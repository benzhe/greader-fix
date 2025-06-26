package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import defpackage.g95;

/* loaded from: classes.dex */
public abstract class p95<S extends g95> {
    public S a;
    public o95 b;

    public p95(S s) {
        this.a = s;
    }

    public abstract void a(Canvas canvas, float f);

    public abstract void b(Canvas canvas, Paint paint, float f, float f2, int i);

    public abstract void c(Canvas canvas, Paint paint);

    public abstract int d();

    public abstract int e();
}
