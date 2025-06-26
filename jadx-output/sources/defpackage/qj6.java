package defpackage;

import defpackage.jj6;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class qj6 {
    public static final qj6 a = new b(null);
    public static final qj6 b = new c(null);

    public static final class b extends qj6 {
        public static final Class<?> c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public b(a aVar) {
            super(null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <L> List<L> d(Object obj, long j, int i) {
            oj6 oj6Var;
            List<L> list = (List) cl6.n(obj, j);
            if (list.isEmpty()) {
                List<L> oj6Var2 = list instanceof pj6 ? new oj6(i) : ((list instanceof jk6) && (list instanceof jj6.d)) ? ((jj6.d) list).E(i) : new ArrayList<>(i);
                cl6.e.q(obj, j, oj6Var2);
                return oj6Var2;
            }
            if (c.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                cl6.e.q(obj, j, arrayList);
                oj6Var = arrayList;
            } else {
                if (!(list instanceof bl6)) {
                    if (!(list instanceof jk6) || !(list instanceof jj6.d)) {
                        return list;
                    }
                    jj6.d dVar = (jj6.d) list;
                    if (dVar.F0()) {
                        return list;
                    }
                    jj6.d dVarE = dVar.E(list.size() + i);
                    cl6.e.q(obj, j, dVarE);
                    return dVarE;
                }
                oj6 oj6Var3 = new oj6(list.size() + i);
                oj6Var3.addAll(oj6Var3.size(), (bl6) list);
                cl6.e.q(obj, j, oj6Var3);
                oj6Var = oj6Var3;
            }
            return oj6Var;
        }

        @Override // defpackage.qj6
        public void a(Object obj, long j) {
            Object objUnmodifiableList;
            List list = (List) cl6.n(obj, j);
            if (list instanceof pj6) {
                objUnmodifiableList = ((pj6) list).p0();
            } else {
                if (c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof jk6) && (list instanceof jj6.d)) {
                    jj6.d dVar = (jj6.d) list;
                    if (dVar.F0()) {
                        dVar.t();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            cl6.e.q(obj, j, objUnmodifiableList);
        }

        @Override // defpackage.qj6
        public <E> void b(Object obj, Object obj2, long j) {
            List list = (List) cl6.n(obj2, j);
            List listD = d(obj, j, list.size());
            int size = listD.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listD.addAll(list);
            }
            if (size > 0) {
                list = listD;
            }
            cl6.e.q(obj, j, list);
        }

        @Override // defpackage.qj6
        public <L> List<L> c(Object obj, long j) {
            return d(obj, j, 10);
        }
    }

    public static final class c extends qj6 {
        public c(a aVar) {
            super(null);
        }

        public static <E> jj6.d<E> d(Object obj, long j) {
            return (jj6.d) cl6.n(obj, j);
        }

        @Override // defpackage.qj6
        public void a(Object obj, long j) {
            d(obj, j).t();
        }

        @Override // defpackage.qj6
        public <E> void b(Object obj, Object obj2, long j) {
            jj6.d dVarD = d(obj, j);
            jj6.d dVarD2 = d(obj2, j);
            int size = dVarD.size();
            int size2 = dVarD2.size();
            if (size > 0 && size2 > 0) {
                if (!dVarD.F0()) {
                    dVarD = dVarD.E(size2 + size);
                }
                dVarD.addAll(dVarD2);
            }
            if (size > 0) {
                dVarD2 = dVarD;
            }
            cl6.e.q(obj, j, dVarD2);
        }

        @Override // defpackage.qj6
        public <L> List<L> c(Object obj, long j) {
            jj6.d dVarD = d(obj, j);
            if (dVarD.F0()) {
                return dVarD;
            }
            int size = dVarD.size();
            jj6.d dVarE = dVarD.E(size == 0 ? 10 : size * 2);
            cl6.e.q(obj, j, dVarE);
            return dVarE;
        }
    }

    public qj6(a aVar) {
    }

    public abstract void a(Object obj, long j);

    public abstract <L> void b(Object obj, Object obj2, long j);

    public abstract <L> List<L> c(Object obj, long j);
}
