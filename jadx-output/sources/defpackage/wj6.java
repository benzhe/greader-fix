package defpackage;

import defpackage.tj6;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class wj6 implements vj6 {
    @Override // defpackage.vj6
    public Object b(Object obj, Object obj2) {
        uj6 uj6VarD = (uj6) obj;
        uj6 uj6Var = (uj6) obj2;
        if (!uj6Var.isEmpty()) {
            if (!uj6VarD.e) {
                uj6VarD = uj6VarD.d();
            }
            uj6VarD.c();
            if (!uj6Var.isEmpty()) {
                uj6VarD.putAll(uj6Var);
            }
        }
        return uj6VarD;
    }

    @Override // defpackage.vj6
    public Object c(Object obj) {
        ((uj6) obj).e = false;
        return obj;
    }

    @Override // defpackage.vj6
    public tj6.a<?, ?> d(Object obj) {
        return ((tj6) obj).a;
    }

    @Override // defpackage.vj6
    public Map<?, ?> e(Object obj) {
        return (uj6) obj;
    }

    @Override // defpackage.vj6
    public Object f(Object obj) {
        return uj6.f.d();
    }

    @Override // defpackage.vj6
    public int g(int i, Object obj, Object obj2) {
        uj6 uj6Var = (uj6) obj;
        tj6 tj6Var = (tj6) obj2;
        int iP = 0;
        if (!uj6Var.isEmpty()) {
            for (Map.Entry entry : uj6Var.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                Objects.requireNonNull(tj6Var);
                iP += ti6.p(tj6.a(tj6Var.a, key, value)) + ti6.y(i);
            }
        }
        return iP;
    }

    @Override // defpackage.vj6
    public boolean h(Object obj) {
        return !((uj6) obj).e;
    }

    @Override // defpackage.vj6
    public Map<?, ?> i(Object obj) {
        return (uj6) obj;
    }
}
