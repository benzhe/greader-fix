package defpackage;

import defpackage.ln5;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class du5 implements Iterable<yt5> {
    public final jn5<bu5, yt5> e;
    public final ln5<yt5> f;

    public du5(jn5<bu5, yt5> jn5Var, ln5<yt5> ln5Var) {
        this.e = jn5Var;
        this.f = ln5Var;
    }

    public yt5 d(bu5 bu5Var) {
        return this.e.h(bu5Var);
    }

    public boolean equals(Object obj) {
        ln5.a aVar;
        if (this == obj) {
            return true;
        }
        if (obj == null || du5.class != obj.getClass()) {
            return false;
        }
        du5 du5Var = (du5) obj;
        if (size() != du5Var.size()) {
            return false;
        }
        Iterator<yt5> it = iterator();
        Iterator<yt5> it2 = du5Var.iterator();
        do {
            aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return true;
            }
        } while (((yt5) aVar.next()).equals((yt5) ((ln5.a) it2).next()));
        return false;
    }

    public du5 h(bu5 bu5Var) {
        yt5 yt5VarH = this.e.h(bu5Var);
        return yt5VarH == null ? this : new du5(this.e.r(bu5Var), this.f.h(yt5VarH));
    }

    public int hashCode() {
        Iterator<yt5> it = iterator();
        int iHashCode = 0;
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 31) + ((yt5) aVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<yt5> iterator() {
        return this.f.iterator();
    }

    public int size() {
        return this.e.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator<yt5> it = iterator();
        boolean z = true;
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            yt5 yt5Var = (yt5) aVar.next();
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(yt5Var);
        }
    }
}
