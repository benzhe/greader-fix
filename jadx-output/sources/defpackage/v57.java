package defpackage;

import defpackage.a37;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class v57 implements Runnable {
    public final /* synthetic */ long e;
    public final /* synthetic */ a37.a f;
    public final /* synthetic */ t57 g;

    public v57(t57 t57Var, long j, a37.a aVar) {
        this.g = t57Var;
        this.e = j;
        this.f = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        t57 t57Var = this.g;
        long j = this.e;
        Objects.requireNonNull(t57Var);
        c77 c77Var = new c77();
        t57Var.i.h(c77Var);
        long jAbs = Math.abs(j);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long nanos = jAbs / timeUnit.toNanos(1L);
        long jAbs2 = Math.abs(j) % timeUnit.toNanos(1L);
        StringBuilder sbZ = jo.z("deadline exceeded after ");
        if (j < 0) {
            sbZ.append('-');
        }
        sbZ.append(nanos);
        sbZ.append(String.format(".%09d", Long.valueOf(jAbs2)));
        sbZ.append("s. ");
        sbZ.append(c77Var);
        t57.f(this.g, x47.i.b(sbZ.toString()), this.f);
    }
}
