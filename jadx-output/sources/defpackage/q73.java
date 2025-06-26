package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class q73 extends o73 {
    public static final Class<?> c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public q73(n73 n73Var) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <L> List<L> d(Object obj, long j, int i) {
        m73 m73Var;
        List<L> list = (List) r93.t(obj, j);
        if (list.isEmpty()) {
            List<L> m73Var2 = list instanceof l73 ? new m73(i) : ((list instanceof n83) && (list instanceof b73)) ? ((b73) list).D(i) : new ArrayList<>(i);
            r93.e(obj, j, m73Var2);
            return m73Var2;
        }
        if (c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i);
            arrayList.addAll(list);
            r93.e(obj, j, arrayList);
            m73Var = arrayList;
        } else {
            if (!(list instanceof q93)) {
                if (!(list instanceof n83) || !(list instanceof b73)) {
                    return list;
                }
                b73 b73Var = (b73) list;
                if (b73Var.h0()) {
                    return list;
                }
                b73 b73VarD = b73Var.D(list.size() + i);
                r93.e(obj, j, b73VarD);
                return b73VarD;
            }
            m73 m73Var3 = new m73(list.size() + i);
            m73Var3.addAll(m73Var3.size(), (q93) list);
            r93.e(obj, j, m73Var3);
            m73Var = m73Var3;
        }
        return m73Var;
    }

    @Override // defpackage.o73
    public final <L> List<L> a(Object obj, long j) {
        return d(obj, j, 10);
    }

    @Override // defpackage.o73
    public final <E> void b(Object obj, Object obj2, long j) {
        List list = (List) r93.t(obj2, j);
        List listD = d(obj, j, list.size());
        int size = listD.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listD.addAll(list);
        }
        if (size > 0) {
            list = listD;
        }
        r93.e(obj, j, list);
    }

    @Override // defpackage.o73
    public final void c(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) r93.t(obj, j);
        if (list instanceof l73) {
            objUnmodifiableList = ((l73) list).j0();
        } else {
            if (c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof n83) && (list instanceof b73)) {
                b73 b73Var = (b73) list;
                if (b73Var.h0()) {
                    b73Var.t0();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        r93.e(obj, j, objUnmodifiableList);
    }
}
