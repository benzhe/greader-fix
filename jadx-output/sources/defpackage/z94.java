package defpackage;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class z94 {
    public static final int a(int i, Object obj, Object obj2) {
        y94 y94Var = (y94) obj;
        if (y94Var.isEmpty()) {
            return 0;
        }
        Iterator it = y94Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final Object b(Object obj, Object obj2) {
        y94 y94Var = (y94) obj;
        y94 y94Var2 = (y94) obj2;
        if (!y94Var2.isEmpty()) {
            if (!y94Var.e) {
                y94Var = y94Var.isEmpty() ? new y94() : new y94(y94Var);
            }
            y94Var.c();
            if (!y94Var2.isEmpty()) {
                y94Var.putAll(y94Var2);
            }
        }
        return y94Var;
    }
}
