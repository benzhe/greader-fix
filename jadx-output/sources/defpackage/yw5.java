package defpackage;

import defpackage.bq5;
import defpackage.ln5;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class yw5 {
    public final a a;
    public final Map<Integer, ww5> b = new HashMap();
    public Map<bu5, fu5> c = new HashMap();
    public Map<bu5, Set<Integer>> d = new HashMap();
    public Set<Integer> e = new HashSet();

    public interface a {
    }

    public yw5(a aVar) {
        this.a = aVar;
    }

    public final ww5 a(int i) {
        ww5 ww5Var = this.b.get(Integer.valueOf(i));
        if (ww5Var != null) {
            return ww5Var;
        }
        ww5 ww5Var2 = new ww5();
        this.b.put(Integer.valueOf(i), ww5Var2);
        return ww5Var2;
    }

    public final boolean b(int i) {
        return c(i) != null;
    }

    public final ut5 c(int i) {
        ww5 ww5Var = this.b.get(Integer.valueOf(i));
        if (ww5Var == null || !ww5Var.a()) {
            return ((sw5) this.a).c.get(Integer.valueOf(i));
        }
        return null;
    }

    public final void d(int i, bu5 bu5Var, fu5 fu5Var) {
        if (c(i) != null) {
            ww5 ww5VarA = a(i);
            if (f(i, bu5Var)) {
                bq5.a aVar = bq5.a.REMOVED;
                ww5VarA.c = true;
                ww5VarA.b.put(bu5Var, aVar);
            } else {
                ww5VarA.c = true;
                ww5VarA.b.remove(bu5Var);
            }
            Set<Integer> hashSet = this.d.get(bu5Var);
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.d.put(bu5Var, hashSet);
            }
            hashSet.add(Integer.valueOf(i));
            if (fu5Var != null) {
                this.c.put(bu5Var, fu5Var);
            }
        }
    }

    public final void e(int i) {
        bx5.c((this.b.get(Integer.valueOf(i)) == null || this.b.get(Integer.valueOf(i)).a()) ? false : true, "Should only reset active targets", new Object[0]);
        this.b.put(Integer.valueOf(i), new ww5());
        Iterator<bu5> it = ((sw5) this.a).a.d(i).iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return;
            } else {
                d(i, (bu5) aVar.next(), null);
            }
        }
    }

    public final boolean f(int i, bu5 bu5Var) {
        return ((sw5) this.a).a.d(i).e.d(bu5Var);
    }
}
