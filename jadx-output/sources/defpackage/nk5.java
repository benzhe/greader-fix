package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class nk5 extends tk5.d.AbstractC0042d.a.b.AbstractC0046d {
    public final String a;
    public final int b;
    public final uk5<tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a> c;

    public nk5(String str, int i, uk5 uk5Var, a aVar) {
        this.a = str;
        this.b = i;
        this.c = uk5Var;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0046d
    public uk5<tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a> a() {
        return this.c;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0046d
    public int b() {
        return this.b;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0046d
    public String c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d.a.b.AbstractC0046d)) {
            return false;
        }
        tk5.d.AbstractC0042d.a.b.AbstractC0046d abstractC0046d = (tk5.d.AbstractC0042d.a.b.AbstractC0046d) obj;
        return this.a.equals(abstractC0046d.c()) && this.b == abstractC0046d.b() && this.c.equals(abstractC0046d.a());
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ this.c.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Thread{name=");
        sbZ.append(this.a);
        sbZ.append(", importance=");
        sbZ.append(this.b);
        sbZ.append(", frames=");
        sbZ.append(this.c);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
