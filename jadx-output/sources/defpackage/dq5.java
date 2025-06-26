package defpackage;

import defpackage.cr5;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class dq5 implements cr5.b {
    public final cr5 a;
    public final Set<vo5<Void>> c = new HashSet();
    public wq5 d = wq5.UNKNOWN;
    public final Map<yq5, b> b = new HashMap();

    public static class a {
        public boolean a;
        public boolean b;
        public boolean c;
    }

    public static class b {
        public final List<zq5> a = new ArrayList();
        public mr5 b;
        public int c;
    }

    public dq5(cr5 cr5Var) {
        this.a = cr5Var;
        cr5Var.n = this;
    }

    public void a(List<mr5> list) {
        boolean z = false;
        for (mr5 mr5Var : list) {
            b bVar = this.b.get(mr5Var.a);
            if (bVar != null) {
                Iterator<zq5> it = bVar.a.iterator();
                while (it.hasNext()) {
                    if (it.next().b(mr5Var)) {
                        z = true;
                    }
                }
                bVar.b = mr5Var;
            }
        }
        if (z) {
            b();
        }
    }

    public final void b() {
        Iterator<vo5<Void>> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().a(null, null);
        }
    }
}
