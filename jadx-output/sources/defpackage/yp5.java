package defpackage;

import defpackage.xq5;
import java.util.List;

/* loaded from: classes.dex */
public final class yp5 {
    public final boolean a;
    public final List<bd6> b;

    public yp5(List<bd6> list, boolean z) {
        this.b = list;
        this.a = z;
    }

    public String a() {
        StringBuilder sb = new StringBuilder();
        if (this.a) {
            sb.append("b:");
        } else {
            sb.append("a:");
        }
        boolean z = true;
        for (bd6 bd6Var : this.b) {
            if (!z) {
                sb.append(",");
            }
            z = false;
            StringBuilder sb2 = new StringBuilder();
            lu5.a(sb2, bd6Var);
            sb.append(sb2.toString());
        }
        return sb.toString();
    }

    public boolean b(List<xq5> list, yt5 yt5Var) {
        int iB;
        bx5.c(this.b.size() <= list.size(), "Bound has more components than query's orderBy", new Object[0]);
        int i = 0;
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            xq5 xq5Var = list.get(i2);
            bd6 bd6Var = this.b.get(i2);
            if (xq5Var.b.equals(eu5.f)) {
                bx5.c(lu5.k(bd6Var), "Bound has a non-key value where the key path is being used %s", bd6Var);
                iB = bu5.k(bd6Var.V()).compareTo(yt5Var.a);
            } else {
                bd6 bd6VarB = yt5Var.b(xq5Var.b);
                bx5.c(bd6VarB != null, "Field should exist since document matched the orderBy already.", new Object[0]);
                iB = lu5.b(bd6Var, bd6VarB);
            }
            if (xq5Var.a.equals(xq5.a.DESCENDING)) {
                iB *= -1;
            }
            i = iB;
            if (i != 0) {
                break;
            }
        }
        if (this.a) {
            if (i <= 0) {
                return true;
            }
        } else if (i < 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yp5.class != obj.getClass()) {
            return false;
        }
        yp5 yp5Var = (yp5) obj;
        return this.a == yp5Var.a && this.b.equals(yp5Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + ((this.a ? 1 : 0) * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Bound{before=");
        sbZ.append(this.a);
        sbZ.append(", position=");
        sbZ.append(this.b);
        sbZ.append('}');
        return sbZ.toString();
    }
}
