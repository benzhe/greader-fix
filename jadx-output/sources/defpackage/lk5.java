package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class lk5 extends tk5.d.AbstractC0042d.a.b.AbstractC0045b {
    public final String a;
    public final String b;
    public final uk5<tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a> c;
    public final tk5.d.AbstractC0042d.a.b.AbstractC0045b d;
    public final int e;

    public lk5(String str, String str2, uk5 uk5Var, tk5.d.AbstractC0042d.a.b.AbstractC0045b abstractC0045b, int i, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = uk5Var;
        this.d = abstractC0045b;
        this.e = i;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0045b
    public tk5.d.AbstractC0042d.a.b.AbstractC0045b a() {
        return this.d;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0045b
    public uk5<tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a> b() {
        return this.c;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0045b
    public int c() {
        return this.e;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0045b
    public String d() {
        return this.b;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0045b
    public String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        String str;
        tk5.d.AbstractC0042d.a.b.AbstractC0045b abstractC0045b;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d.a.b.AbstractC0045b)) {
            return false;
        }
        tk5.d.AbstractC0042d.a.b.AbstractC0045b abstractC0045b2 = (tk5.d.AbstractC0042d.a.b.AbstractC0045b) obj;
        return this.a.equals(abstractC0045b2.e()) && ((str = this.b) != null ? str.equals(abstractC0045b2.d()) : abstractC0045b2.d() == null) && this.c.equals(abstractC0045b2.b()) && ((abstractC0045b = this.d) != null ? abstractC0045b.equals(abstractC0045b2.a()) : abstractC0045b2.a() == null) && this.e == abstractC0045b2.c();
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        String str = this.b;
        int iHashCode2 = (((iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.c.hashCode()) * 1000003;
        tk5.d.AbstractC0042d.a.b.AbstractC0045b abstractC0045b = this.d;
        return ((iHashCode2 ^ (abstractC0045b != null ? abstractC0045b.hashCode() : 0)) * 1000003) ^ this.e;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Exception{type=");
        sbZ.append(this.a);
        sbZ.append(", reason=");
        sbZ.append(this.b);
        sbZ.append(", frames=");
        sbZ.append(this.c);
        sbZ.append(", causedBy=");
        sbZ.append(this.d);
        sbZ.append(", overflowCount=");
        return jo.q(sbZ, this.e, StringSubstitutor.DEFAULT_VAR_END);
    }
}
