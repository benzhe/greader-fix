package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ml4 extends kl4 {
    public static final Class<?> c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public ml4(jl4 jl4Var) {
        super(null);
    }

    @Override // defpackage.kl4
    public final void a(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) in4.q(obj, j);
        if (list instanceof hl4) {
            objUnmodifiableList = ((hl4) list).k0();
        } else {
            if (c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof im4) && (list instanceof wk4)) {
                wk4 wk4Var = (wk4) list;
                if (wk4Var.a()) {
                    wk4Var.Q();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        in4.e(obj, j, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.kl4
    public final <E> void b(Object obj, Object obj2, long j) {
        il4 il4Var;
        List list = (List) in4.q(obj2, j);
        int size = list.size();
        List listI = (List) in4.q(obj, j);
        if (listI.isEmpty()) {
            listI = listI instanceof hl4 ? new il4(size) : ((listI instanceof im4) && (listI instanceof wk4)) ? ((wk4) listI).i(size) : new ArrayList(size);
            in4.e(obj, j, listI);
        } else {
            if (c.isAssignableFrom(listI.getClass())) {
                ArrayList arrayList = new ArrayList(listI.size() + size);
                arrayList.addAll(listI);
                in4.e(obj, j, arrayList);
                il4Var = arrayList;
            } else if (listI instanceof dn4) {
                il4 il4Var2 = new il4(listI.size() + size);
                il4Var2.addAll(il4Var2.size(), (dn4) listI);
                in4.e(obj, j, il4Var2);
                il4Var = il4Var2;
            } else if ((listI instanceof im4) && (listI instanceof wk4)) {
                wk4 wk4Var = (wk4) listI;
                if (!wk4Var.a()) {
                    listI = wk4Var.i(listI.size() + size);
                    in4.e(obj, j, listI);
                }
            }
            listI = il4Var;
        }
        int size2 = listI.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            listI.addAll(list);
        }
        if (size2 > 0) {
            list = listI;
        }
        in4.e(obj, j, list);
    }
}
