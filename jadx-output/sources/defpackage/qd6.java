package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class qd6 extends td6 implements Iterable<td6> {
    public final List<td6> e = new ArrayList();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof qd6) && ((qd6) obj).e.equals(this.e));
    }

    public int hashCode() {
        return this.e.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<td6> iterator() {
        return this.e.iterator();
    }
}
