package defpackage;

import defpackage.vt5;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class vt5<B extends vt5<B>> implements Comparable<B> {
    public final List<String> e;

    public vt5(List<String> list) {
        this.e = list;
    }

    public boolean C() {
        return I() == 0;
    }

    public boolean D(B b) {
        if (I() > b.I()) {
            return false;
        }
        for (int i = 0; i < I(); i++) {
            if (!y(i).equals(b.y(i))) {
                return false;
            }
        }
        return true;
    }

    public int I() {
        return this.e.size();
    }

    public B K(int i) {
        int I = I();
        bx5.c(I >= i, "Can't call popFirst with count > length() (%d > %d)", Integer.valueOf(i), Integer.valueOf(I));
        return new iu5(this.e.subList(i, I));
    }

    public B L() {
        return (B) w(this.e.subList(0, I() - 1));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof vt5) && compareTo((vt5) obj) == 0;
    }

    public int hashCode() {
        return this.e.hashCode() + ((getClass().hashCode() + 37) * 37);
    }

    public B i(B b) {
        ArrayList arrayList = new ArrayList(this.e);
        arrayList.addAll(b.e);
        return (B) w(arrayList);
    }

    public B k(String str) {
        ArrayList arrayList = new ArrayList(this.e);
        arrayList.add(str);
        return (B) w(arrayList);
    }

    public abstract String l();

    @Override // java.lang.Comparable
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public int compareTo(B b) {
        int I = I();
        int I2 = b.I();
        for (int i = 0; i < I && i < I2; i++) {
            int iCompareTo = y(i).compareTo(b.y(i));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return vx5.b(I, I2);
    }

    public String toString() {
        return l();
    }

    public abstract B w(List<String> list);

    public String x() {
        return this.e.get(I() - 1);
    }

    public String y(int i) {
        return this.e.get(i);
    }
}
