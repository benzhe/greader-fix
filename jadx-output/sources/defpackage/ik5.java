package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ik5 extends tk5.d.AbstractC0042d.a {
    public final tk5.d.AbstractC0042d.a.b a;
    public final uk5<tk5.b> b;
    public final Boolean c;
    public final int d;

    public static final class b extends tk5.d.AbstractC0042d.a.AbstractC0043a {
        public tk5.d.AbstractC0042d.a.b a;
        public uk5<tk5.b> b;
        public Boolean c;
        public Integer d;

        public b() {
        }

        public tk5.d.AbstractC0042d.a a() {
            String strN = this.a == null ? " execution" : "";
            if (this.d == null) {
                strN = jo.n(strN, " uiOrientation");
            }
            if (strN.isEmpty()) {
                return new ik5(this.a, this.b, this.c, this.d.intValue(), null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }

        public b(tk5.d.AbstractC0042d.a aVar, a aVar2) {
            ik5 ik5Var = (ik5) aVar;
            this.a = ik5Var.a;
            this.b = ik5Var.b;
            this.c = ik5Var.c;
            this.d = Integer.valueOf(ik5Var.d);
        }
    }

    public ik5(tk5.d.AbstractC0042d.a.b bVar, uk5 uk5Var, Boolean bool, int i, a aVar) {
        this.a = bVar;
        this.b = uk5Var;
        this.c = bool;
        this.d = i;
    }

    @Override // tk5.d.AbstractC0042d.a
    public Boolean a() {
        return this.c;
    }

    @Override // tk5.d.AbstractC0042d.a
    public uk5<tk5.b> b() {
        return this.b;
    }

    @Override // tk5.d.AbstractC0042d.a
    public tk5.d.AbstractC0042d.a.b c() {
        return this.a;
    }

    @Override // tk5.d.AbstractC0042d.a
    public int d() {
        return this.d;
    }

    public tk5.d.AbstractC0042d.a.AbstractC0043a e() {
        return new b(this, null);
    }

    public boolean equals(Object obj) {
        uk5<tk5.b> uk5Var;
        Boolean bool;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d.a)) {
            return false;
        }
        tk5.d.AbstractC0042d.a aVar = (tk5.d.AbstractC0042d.a) obj;
        return this.a.equals(aVar.c()) && ((uk5Var = this.b) != null ? uk5Var.equals(aVar.b()) : aVar.b() == null) && ((bool = this.c) != null ? bool.equals(aVar.a()) : aVar.a() == null) && this.d == aVar.d();
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        uk5<tk5.b> uk5Var = this.b;
        int iHashCode2 = (iHashCode ^ (uk5Var == null ? 0 : uk5Var.hashCode())) * 1000003;
        Boolean bool = this.c;
        return ((iHashCode2 ^ (bool != null ? bool.hashCode() : 0)) * 1000003) ^ this.d;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Application{execution=");
        sbZ.append(this.a);
        sbZ.append(", customAttributes=");
        sbZ.append(this.b);
        sbZ.append(", background=");
        sbZ.append(this.c);
        sbZ.append(", uiOrientation=");
        return jo.q(sbZ, this.d, StringSubstitutor.DEFAULT_VAR_END);
    }
}
