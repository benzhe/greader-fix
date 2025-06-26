package defpackage;

import defpackage.fq5;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class eq5 extends fq5 {
    public final fq5.a a;
    public final bd6 b;
    public final eu5 c;

    public eq5(eu5 eu5Var, fq5.a aVar, bd6 bd6Var) {
        this.c = eu5Var;
        this.a = aVar;
        this.b = bd6Var;
    }

    public static eq5 c(eu5 eu5Var, fq5.a aVar, bd6 bd6Var) {
        fq5.a aVar2 = fq5.a.ARRAY_CONTAINS_ANY;
        fq5.a aVar3 = fq5.a.NOT_IN;
        fq5.a aVar4 = fq5.a.IN;
        fq5.a aVar5 = fq5.a.ARRAY_CONTAINS;
        if (!eu5Var.N()) {
            return aVar == aVar5 ? new vp5(eu5Var, bd6Var) : aVar == aVar4 ? new nq5(eu5Var, bd6Var) : aVar == aVar2 ? new up5(eu5Var, bd6Var) : aVar == aVar3 ? new vq5(eu5Var, bd6Var) : new eq5(eu5Var, aVar, bd6Var);
        }
        if (aVar == aVar4) {
            return new pq5(eu5Var, bd6Var);
        }
        if (aVar == aVar3) {
            return new qq5(eu5Var, bd6Var);
        }
        bx5.c((aVar == aVar5 || aVar == aVar2) ? false : true, jo.s(new StringBuilder(), aVar.e, "queries don't make sense on document keys"), new Object[0]);
        return new oq5(eu5Var, aVar, bd6Var);
    }

    @Override // defpackage.fq5
    public String a() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c.l());
        sb.append(this.a.e);
        bd6 bd6Var = this.b;
        StringBuilder sb2 = new StringBuilder();
        lu5.a(sb2, bd6Var);
        sb.append(sb2.toString());
        return sb.toString();
    }

    @Override // defpackage.fq5
    public boolean b(yt5 yt5Var) {
        bd6 bd6VarB = yt5Var.b(this.c);
        return this.a == fq5.a.NOT_EQUAL ? bd6VarB != null && d(lu5.b(bd6VarB, this.b)) : bd6VarB != null && lu5.l(bd6VarB) == lu5.l(this.b) && d(lu5.b(bd6VarB, this.b));
    }

    public boolean d(int i) {
        int iOrdinal = this.a.ordinal();
        if (iOrdinal == 0) {
            return i < 0;
        }
        if (iOrdinal == 1) {
            return i <= 0;
        }
        if (iOrdinal == 2) {
            return i == 0;
        }
        if (iOrdinal == 3) {
            return i != 0;
        }
        if (iOrdinal == 4) {
            return i > 0;
        }
        if (iOrdinal == 5) {
            return i >= 0;
        }
        bx5.a("Unknown FieldFilter operator: %s", this.a);
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof eq5)) {
            return false;
        }
        eq5 eq5Var = (eq5) obj;
        return this.a == eq5Var.a && this.c.equals(eq5Var.c) && this.b.equals(eq5Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + ((this.c.hashCode() + ((this.a.hashCode() + 1147) * 31)) * 31);
    }

    public String toString() {
        return this.c.l() + StringUtils.SPACE + this.a + StringUtils.SPACE + this.b;
    }
}
