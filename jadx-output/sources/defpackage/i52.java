package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class i52 {
    public final ConcurrentHashMap<String, vi0> a = new ConcurrentHashMap<>();
    public final nq1 b;

    public i52(nq1 nq1Var) {
        this.b = nq1Var;
    }

    public final vi0 a(String str) {
        if (this.a.containsKey(str)) {
            return this.a.get(str);
        }
        return null;
    }
}
