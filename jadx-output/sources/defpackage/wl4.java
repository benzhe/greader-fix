package defpackage;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class wl4 implements tl4 {
    @Override // defpackage.tl4
    public final Object a(Object obj) {
        ((ul4) obj).e = false;
        return obj;
    }

    @Override // defpackage.tl4
    public final rl4<?, ?> b(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // defpackage.tl4
    public final Map<?, ?> c(Object obj) {
        return (ul4) obj;
    }

    @Override // defpackage.tl4
    public final Object e(Object obj, Object obj2) {
        ul4 ul4Var = (ul4) obj;
        ul4 ul4Var2 = (ul4) obj2;
        if (!ul4Var2.isEmpty()) {
            if (!ul4Var.e) {
                ul4Var = ul4Var.isEmpty() ? new ul4() : new ul4(ul4Var);
            }
            ul4Var.c();
            if (!ul4Var2.isEmpty()) {
                ul4Var.putAll(ul4Var2);
            }
        }
        return ul4Var;
    }

    @Override // defpackage.tl4
    public final int f(int i, Object obj, Object obj2) {
        ul4 ul4Var = (ul4) obj;
        if (ul4Var.isEmpty()) {
            return 0;
        }
        Iterator it = ul4Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
