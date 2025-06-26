package defpackage;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class b83 implements y73 {
    @Override // defpackage.y73
    public final int a(int i, Object obj, Object obj2) {
        z73 z73Var = (z73) obj;
        if (z73Var.isEmpty()) {
            return 0;
        }
        Iterator it = z73Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // defpackage.y73
    public final Map<?, ?> b(Object obj) {
        return (z73) obj;
    }

    @Override // defpackage.y73
    public final boolean c(Object obj) {
        return !((z73) obj).e;
    }

    @Override // defpackage.y73
    public final Object d(Object obj) {
        ((z73) obj).e = false;
        return obj;
    }

    @Override // defpackage.y73
    public final Object e(Object obj) {
        z73 z73Var = z73.f;
        return z73Var.isEmpty() ? new z73() : new z73(z73Var);
    }

    @Override // defpackage.y73
    public final Object f(Object obj, Object obj2) {
        z73 z73Var = (z73) obj;
        z73 z73Var2 = (z73) obj2;
        if (!z73Var2.isEmpty()) {
            if (!z73Var.e) {
                z73Var = z73Var.isEmpty() ? new z73() : new z73(z73Var);
            }
            z73Var.c();
            if (!z73Var2.isEmpty()) {
                z73Var.putAll(z73Var2);
            }
        }
        return z73Var;
    }

    @Override // defpackage.y73
    public final w73<?, ?> g(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // defpackage.y73
    public final Map<?, ?> h(Object obj) {
        return (z73) obj;
    }
}
