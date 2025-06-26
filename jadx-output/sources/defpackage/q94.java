package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class q94 extends s94 {
    public static final Class<?> c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    @Override // defpackage.s94
    public final void a(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) lb4.q(obj, j);
        if (list instanceof p94) {
            objUnmodifiableList = ((p94) list).e();
        } else {
            if (c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof ja4) && (list instanceof i94)) {
                i94 i94Var = (i94) list;
                if (i94Var.a()) {
                    i94Var.b();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        lb4.e.s(obj, j, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.s94
    public final <E> void b(Object obj, Object obj2, long j) {
        o94 o94Var;
        List list = (List) lb4.q(obj2, j);
        int size = list.size();
        List listW = (List) lb4.q(obj, j);
        if (listW.isEmpty()) {
            listW = listW instanceof p94 ? new o94(size) : ((listW instanceof ja4) && (listW instanceof i94)) ? ((i94) listW).w(size) : new ArrayList(size);
            lb4.e.s(obj, j, listW);
        } else {
            if (c.isAssignableFrom(listW.getClass())) {
                ArrayList arrayList = new ArrayList(listW.size() + size);
                arrayList.addAll(listW);
                lb4.e.s(obj, j, arrayList);
                o94Var = arrayList;
            } else if (listW instanceof fb4) {
                o94 o94Var2 = new o94(listW.size() + size);
                o94Var2.addAll(o94Var2.size(), (fb4) listW);
                lb4.e.s(obj, j, o94Var2);
                o94Var = o94Var2;
            } else if ((listW instanceof ja4) && (listW instanceof i94)) {
                i94 i94Var = (i94) listW;
                if (!i94Var.a()) {
                    listW = i94Var.w(listW.size() + size);
                    lb4.e.s(obj, j, listW);
                }
            }
            listW = o94Var;
        }
        int size2 = listW.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            listW.addAll(list);
        }
        if (size2 > 0) {
            list = listW;
        }
        lb4.e.s(obj, j, list);
    }
}
