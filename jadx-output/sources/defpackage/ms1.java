package defpackage;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class ms1 {
    public final Map<String, String> a = new ConcurrentHashMap();
    public final /* synthetic */ ns1 b;

    public ms1(ns1 ns1Var) {
        this.b = ns1Var;
    }

    public final ms1 a(wk2 wk2Var) {
        this.a.put("gqi", wk2Var.b);
        return this;
    }

    public final void b() {
        this.b.b.execute(new Runnable(this) { // from class: ps1
            public final ms1 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ms1 ms1Var = this.e;
                ms1Var.b.a.a(ms1Var.a);
            }
        });
    }
}
