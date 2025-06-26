package defpackage;

/* loaded from: classes.dex */
public final class wt5 implements Comparable<wt5> {
    public final String e;
    public final String f;

    public wt5(String str, String str2) {
        this.e = str;
        this.f = str2;
    }

    @Override // java.lang.Comparable
    public int compareTo(wt5 wt5Var) {
        wt5 wt5Var2 = wt5Var;
        int iCompareTo = this.e.compareTo(wt5Var2.e);
        return iCompareTo != 0 ? iCompareTo : this.f.compareTo(wt5Var2.f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wt5.class != obj.getClass()) {
            return false;
        }
        wt5 wt5Var = (wt5) obj;
        return this.e.equals(wt5Var.e) && this.f.equals(wt5Var.f);
    }

    public int hashCode() {
        return this.f.hashCode() + (this.e.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DatabaseId(");
        sbZ.append(this.e);
        sbZ.append(", ");
        return jo.s(sbZ, this.f, ")");
    }
}
