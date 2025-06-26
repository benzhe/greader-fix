package defpackage;

import defpackage.f37;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class h37 {
    public static final h37 b = new h37(new f37.a(), f37.b.a);
    public final ConcurrentMap<String, g37> a = new ConcurrentHashMap();

    public h37(g37... g37VarArr) {
        for (g37 g37Var : g37VarArr) {
            this.a.put(g37Var.a(), g37Var);
        }
    }
}
