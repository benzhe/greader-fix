package defpackage;

import java.util.Collections;

/* loaded from: classes.dex */
public final class bu5 implements Comparable<bu5> {
    public static final ln5<bu5> f = new ln5<>(Collections.emptyList(), au5.e);
    public final iu5 e;

    public bu5(iu5 iu5Var) {
        bx5.c(l(iu5Var), "Not a document key path: %s", iu5Var);
        this.e = iu5Var;
    }

    public static bu5 k(String str) {
        iu5 iu5VarN = iu5.N(str);
        bx5.c(iu5VarN.I() >= 4 && iu5VarN.y(0).equals("projects") && iu5VarN.y(2).equals("databases") && iu5VarN.y(4).equals("documents"), "Tried to parse an invalid key: %s", iu5VarN);
        return new bu5(iu5VarN.K(5));
    }

    public static boolean l(iu5 iu5Var) {
        return iu5Var.I() % 2 == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || bu5.class != obj.getClass()) {
            return false;
        }
        return this.e.equals(((bu5) obj).e);
    }

    public int hashCode() {
        return this.e.hashCode();
    }

    @Override // java.lang.Comparable
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public int compareTo(bu5 bu5Var) {
        return this.e.compareTo(bu5Var.e);
    }

    public String toString() {
        return this.e.l();
    }
}
