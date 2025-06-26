package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class k08 {
    public final n18 a = new n18(this);
    public h18 b;
    public final HashSet<i18> c;

    public k08() {
        im7.e(this, "_koin");
        new ConcurrentHashMap();
        this.b = new f18();
        this.c = new HashSet<>();
    }

    public static void b(k08 k08Var, List list, boolean z, int i) throws u08 {
        Object next;
        if ((i & 2) != 0) {
            z = false;
        }
        Objects.requireNonNull(k08Var);
        im7.e(list, "modules");
        k08Var.c.addAll(list);
        n18 n18Var = k08Var.a;
        Objects.requireNonNull(n18Var);
        im7.e(list, "modules");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i18 i18Var = (i18) it.next();
            if (i18Var.b) {
                h18 h18Var = n18Var.e.b;
                String str = "module '" + i18Var + "' already loaded!";
                Objects.requireNonNull(h18Var);
                im7.e(str, "msg");
                h18Var.b(g18.ERROR, str);
            } else {
                for (k18 k18Var : i18Var.c) {
                    p18 p18Var = new p18(k18Var, false, 2);
                    if (n18Var.a.get(k18Var.getValue()) == null) {
                        n18Var.a.put(k18Var.getValue(), p18Var);
                    }
                }
                for (p08<?> p08Var : i18Var.d) {
                    im7.e(p08Var, "bean");
                    p18 p18Var2 = n18Var.a.get(p08Var.a.getValue());
                    if (p18Var2 == null) {
                        throw new IllegalStateException(("Undeclared scope definition for definition: " + p08Var).toString());
                    }
                    im7.d(p18Var2, "_scopeDefinitions[bean.s…n for definition: $bean\")");
                    l18 l18Var = p18.d;
                    im7.e(p08Var, "beanDefinition");
                    if (p18Var2.a.contains(p08Var)) {
                        if (!p08Var.g.b) {
                            Iterator<T> it2 = p18Var2.a.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    next = it2.next();
                                    if (im7.a((p08) next, p08Var)) {
                                        break;
                                    }
                                } else {
                                    next = null;
                                    break;
                                }
                            }
                            throw new u08("Definition '" + p08Var + "' try to override existing definition. Please use override option or check for definition '" + ((p08) next) + '\'');
                        }
                        p18Var2.a.remove(p08Var);
                    }
                    p18Var2.a.add(p08Var);
                    Collection<o18> collectionValues = n18Var.b.values();
                    im7.d(collectionValues, "_scopes.values");
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : collectionValues) {
                        if (im7.a(((o18) obj).f, p18Var2)) {
                            arrayList.add(obj);
                        }
                    }
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        o18 o18Var = (o18) it3.next();
                        Objects.requireNonNull(o18Var);
                        im7.e(p08Var, "beanDefinition");
                        m18 m18Var = o18Var.b;
                        Objects.requireNonNull(m18Var);
                        im7.e(p08Var, "definition");
                        m18Var.a(p08Var, p08Var.g.b);
                    }
                }
                i18Var.b = true;
            }
        }
        if (z) {
            k08Var.a();
        }
    }

    public final void a() {
        o18 o18VarA = this.a.a();
        if (o18VarA.f.c) {
            m18 m18Var = o18VarA.b;
            Collection<d18<?>> collectionValues = m18Var.a.values();
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionValues) {
                if (obj instanceof e18) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (((e18) next).b.g.a) {
                    arrayList2.add(next);
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                ((e18) it2.next()).b(new c18(m18Var.b, m18Var.c, null));
            }
        }
    }
}
