package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class ym6 implements Runnable {
    public final /* synthetic */ Object e;
    public final /* synthetic */ Long f;
    public final /* synthetic */ zm6 g;

    public ym6(zm6 zm6Var, Object obj, Long l) {
        this.g = zm6Var;
        this.e = obj;
        this.f = l;
    }

    @Override // java.lang.Runnable
    public void run() {
        zm6 zm6Var = this.g;
        Object obj = this.e;
        Long l = this.f;
        Objects.requireNonNull(zm6Var);
        if (l == null || !zm6Var.a.contains(l)) {
            return;
        }
        String strF = zm6Var.b.f(l.longValue());
        zm6Var.a(l);
        if (zm6Var.d.b(strF, obj) == 0) {
            zm6Var.e.b(strF, obj);
        }
    }
}
