package defpackage;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class ty3 implements sy3 {
    @Override // defpackage.sy3
    public final int a(int i, Object obj, Object obj2) {
        ry3 ry3Var = (ry3) obj;
        if (ry3Var.isEmpty()) {
            return 0;
        }
        Iterator it = ry3Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // defpackage.sy3
    public final boolean c(Object obj) {
        return !((ry3) obj).e;
    }

    @Override // defpackage.sy3
    public final Object d(Object obj, Object obj2) {
        ry3 ry3Var = (ry3) obj;
        ry3 ry3Var2 = (ry3) obj2;
        if (!ry3Var2.isEmpty()) {
            if (!ry3Var.e) {
                ry3Var = ry3Var.isEmpty() ? new ry3() : new ry3(ry3Var);
            }
            ry3Var.b();
            if (!ry3Var2.isEmpty()) {
                ry3Var.putAll(ry3Var2);
            }
        }
        return ry3Var;
    }

    @Override // defpackage.sy3
    public final Object f(Object obj) {
        ((ry3) obj).e = false;
        return obj;
    }

    @Override // defpackage.sy3
    public final qy3<?, ?> g(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // defpackage.sy3
    public final Object h(Object obj) {
        ry3 ry3Var = ry3.f;
        return ry3Var.isEmpty() ? new ry3() : new ry3(ry3Var);
    }

    @Override // defpackage.sy3
    public final Map<?, ?> i(Object obj) {
        return (ry3) obj;
    }

    @Override // defpackage.sy3
    public final Map<?, ?> zzg(Object obj) {
        return (ry3) obj;
    }
}
