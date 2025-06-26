package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class xm6 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ Long f;
    public final /* synthetic */ zm6 g;

    public xm6(zm6 zm6Var, int i, Long l) {
        this.g = zm6Var;
        this.e = i;
        this.f = l;
    }

    @Override // java.lang.Runnable
    public void run() {
        zm6 zm6Var = this.g;
        int i = this.e;
        Long l = this.f;
        Objects.requireNonNull(zm6Var);
        if (l == null || !zm6Var.a.contains(l)) {
            return;
        }
        String strF = zm6Var.c.f(l.longValue());
        zm6Var.a(l);
        Integer numValueOf = Integer.valueOf(i);
        if (zm6Var.d.b(strF, numValueOf) == 0) {
            zm6Var.e.b(strF, numValueOf);
        }
    }
}
