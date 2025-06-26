package defpackage;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class xa6 implements cb6 {
    public final String a;
    public final ya6 b;

    public xa6(Set<za6> set, ya6 ya6Var) {
        this.a = b(set);
        this.b = ya6Var;
    }

    public static String b(Set<za6> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<za6> it = set.iterator();
        while (it.hasNext()) {
            za6 next = it.next();
            sb.append(next.a());
            sb.append('/');
            sb.append(next.b());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // defpackage.cb6
    public String a() {
        Set setUnmodifiableSet;
        Set setUnmodifiableSet2;
        ya6 ya6Var = this.b;
        synchronized (ya6Var.a) {
            setUnmodifiableSet = Collections.unmodifiableSet(ya6Var.a);
        }
        if (setUnmodifiableSet.isEmpty()) {
            return this.a;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append(' ');
        ya6 ya6Var2 = this.b;
        synchronized (ya6Var2.a) {
            setUnmodifiableSet2 = Collections.unmodifiableSet(ya6Var2.a);
        }
        sb.append(b(setUnmodifiableSet2));
        return sb.toString();
    }
}
