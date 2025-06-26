package defpackage;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class wm6 {
    public Set<Long> a = new HashSet();
    public j4<String> b = new j4<>();
    public j4<String> c = new j4<>();
    public an6 d = new an6();
    public rm6<String, Object> e = new rm6<>();

    public final void a(Long l) {
        this.a.remove(l);
        this.b.j(l.longValue());
        this.c.j(l.longValue());
    }

    public void b(String str, bn6 bn6Var) {
        this.d.a.remove(str);
        this.d.a(str, bn6Var);
        Iterator<Object> it = this.e.remove(str).iterator();
        while (it.hasNext()) {
            this.d.b(str, it.next());
        }
    }
}
