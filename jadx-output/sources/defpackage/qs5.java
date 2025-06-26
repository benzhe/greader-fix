package defpackage;

import android.util.Pair;
import defpackage.jn5;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class qs5 implements zs5 {
    public jn5<bu5, Pair<fu5, ju5>> a;
    public final ps5 b;

    public qs5(ps5 ps5Var) {
        ln5<bu5> ln5Var = bu5.f;
        au5 au5Var = au5.e;
        int i = jn5.a.a;
        this.a = new hn5(au5Var);
        this.b = ps5Var;
    }

    @Override // defpackage.zs5
    public fu5 a(bu5 bu5Var) {
        Pair<fu5, ju5> pairH = this.a.h(bu5Var);
        if (pairH != null) {
            return (fu5) pairH.first;
        }
        return null;
    }

    @Override // defpackage.zs5
    public void b(bu5 bu5Var) {
        this.a = this.a.r(bu5Var);
    }

    @Override // defpackage.zs5
    public Map<bu5, fu5> c(Iterable<bu5> iterable) {
        HashMap map = new HashMap();
        for (bu5 bu5Var : iterable) {
            map.put(bu5Var, a(bu5Var));
        }
        return map;
    }

    @Override // defpackage.zs5
    public jn5<bu5, yt5> d(yq5 yq5Var, ju5 ju5Var) {
        bx5.c(!yq5Var.g(), "CollectionGroup queries should be handled in LocalDocumentsView", new Object[0]);
        jn5 jn5VarO = zt5.a;
        iu5 iu5Var = yq5Var.e;
        Iterator<Map.Entry<bu5, Pair<fu5, ju5>>> itP = this.a.p(new bu5(iu5Var.k("")));
        while (itP.hasNext()) {
            Map.Entry<bu5, Pair<fu5, ju5>> next = itP.next();
            if (!iu5Var.D(next.getKey().e)) {
                break;
            }
            fu5 fu5Var = (fu5) next.getValue().first;
            if ((fu5Var instanceof yt5) && ((ju5) next.getValue().second).e.compareTo(ju5Var.e) > 0) {
                yt5 yt5Var = (yt5) fu5Var;
                if (yq5Var.h(yt5Var)) {
                    jn5VarO = jn5VarO.o(yt5Var.a, yt5Var);
                }
            }
        }
        return jn5VarO;
    }

    @Override // defpackage.zs5
    public void e(fu5 fu5Var, ju5 ju5Var) {
        bx5.c(!ju5Var.equals(ju5.f), "Cannot add document to the RemoteDocumentCache with a read time of zero", new Object[0]);
        this.a = this.a.o(fu5Var.a, new Pair<>(fu5Var, ju5Var));
        this.b.c.a.a(fu5Var.a.e.L());
    }
}
