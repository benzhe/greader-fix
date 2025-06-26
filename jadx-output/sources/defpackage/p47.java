package defpackage;

import defpackage.l47;
import java.net.URI;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class p47 {
    public static final Logger d = Logger.getLogger(p47.class.getName());
    public static p47 e;
    public final l47.c a = new a(null);
    public final LinkedHashSet<n47> b = new LinkedHashSet<>();
    public List<n47> c = Collections.emptyList();

    public final class a extends l47.c {
        public a(o47 o47Var) {
        }

        @Override // l47.c
        public String a() {
            List<n47> list;
            p47 p47Var = p47.this;
            synchronized (p47Var) {
                list = p47Var.c;
            }
            return list.isEmpty() ? "unknown" : list.get(0).a();
        }

        @Override // l47.c
        public l47 b(URI uri, l47.a aVar) {
            List<n47> list;
            p47 p47Var = p47.this;
            synchronized (p47Var) {
                list = p47Var.c;
            }
            Iterator<n47> it = list.iterator();
            while (it.hasNext()) {
                l47 l47VarB = it.next().b(uri, aVar);
                if (l47VarB != null) {
                    return l47VarB;
                }
            }
            return null;
        }
    }

    public static final class b implements w47<n47> {
        public b(o47 o47Var) {
        }

        @Override // defpackage.w47
        public boolean a(n47 n47Var) {
            return n47Var.c();
        }

        @Override // defpackage.w47
        public int b(n47 n47Var) {
            return n47Var.d();
        }
    }
}
