package defpackage;

import defpackage.xq5;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class dr5 {
    public String a;
    public final List<xq5> b;
    public final List<fq5> c;
    public final iu5 d;
    public final String e;
    public final long f;
    public final yp5 g;
    public final yp5 h;

    public dr5(iu5 iu5Var, String str, List<fq5> list, List<xq5> list2, long j, yp5 yp5Var, yp5 yp5Var2) {
        this.d = iu5Var;
        this.e = str;
        this.b = list2;
        this.c = list;
        this.f = j;
        this.g = yp5Var;
        this.h = yp5Var2;
    }

    public String a() {
        String str = this.a;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.l());
        if (this.e != null) {
            sb.append("|cg:");
            sb.append(this.e);
        }
        sb.append("|f:");
        Iterator<fq5> it = this.c.iterator();
        while (it.hasNext()) {
            sb.append(it.next().a());
        }
        sb.append("|ob:");
        for (xq5 xq5Var : this.b) {
            sb.append(xq5Var.b.l());
            sb.append(xq5Var.a.equals(xq5.a.ASCENDING) ? "asc" : "desc");
        }
        if (b()) {
            sb.append("|l:");
            bx5.c(b(), "Called getLimit when no limit was set", new Object[0]);
            sb.append(this.f);
        }
        if (this.g != null) {
            sb.append("|lb:");
            sb.append(this.g.a());
        }
        if (this.h != null) {
            sb.append("|ub:");
            sb.append(this.h.a());
        }
        String string = sb.toString();
        this.a = string;
        return string;
    }

    public boolean b() {
        return this.f != -1;
    }

    public boolean c() {
        return bu5.l(this.d) && this.e == null && this.c.isEmpty();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || dr5.class != obj.getClass()) {
            return false;
        }
        dr5 dr5Var = (dr5) obj;
        String str = this.e;
        if (str == null ? dr5Var.e != null : !str.equals(dr5Var.e)) {
            return false;
        }
        if (this.f != dr5Var.f || !this.b.equals(dr5Var.b) || !this.c.equals(dr5Var.c) || !this.d.equals(dr5Var.d)) {
            return false;
        }
        yp5 yp5Var = this.g;
        if (yp5Var == null ? dr5Var.g != null : !yp5Var.equals(dr5Var.g)) {
            return false;
        }
        yp5 yp5Var2 = this.h;
        yp5 yp5Var3 = dr5Var.h;
        return yp5Var2 != null ? yp5Var2.equals(yp5Var3) : yp5Var3 == null;
    }

    public int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        String str = this.e;
        int iHashCode2 = (this.d.hashCode() + ((this.c.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        long j = this.f;
        int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        yp5 yp5Var = this.g;
        int iHashCode3 = (i + (yp5Var != null ? yp5Var.hashCode() : 0)) * 31;
        yp5 yp5Var2 = this.h;
        return iHashCode3 + (yp5Var2 != null ? yp5Var2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Query(");
        sbZ.append(this.d.l());
        if (this.e != null) {
            sbZ.append(" collectionGroup=");
            sbZ.append(this.e);
        }
        if (!this.c.isEmpty()) {
            sbZ.append(" where ");
            for (int i = 0; i < this.c.size(); i++) {
                if (i > 0) {
                    sbZ.append(" and ");
                }
                sbZ.append(this.c.get(i).toString());
            }
        }
        if (!this.b.isEmpty()) {
            sbZ.append(" order by ");
            for (int i2 = 0; i2 < this.b.size(); i2++) {
                if (i2 > 0) {
                    sbZ.append(", ");
                }
                sbZ.append(this.b.get(i2));
            }
        }
        sbZ.append(")");
        return sbZ.toString();
    }
}
