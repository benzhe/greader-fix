package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class jk5 extends tk5.d.AbstractC0042d.a.b {
    public final uk5<tk5.d.AbstractC0042d.a.b.AbstractC0046d> a;
    public final tk5.d.AbstractC0042d.a.b.AbstractC0045b b;
    public final tk5.d.AbstractC0042d.a.b.c c;
    public final uk5<tk5.d.AbstractC0042d.a.b.AbstractC0044a> d;

    public jk5(uk5 uk5Var, tk5.d.AbstractC0042d.a.b.AbstractC0045b abstractC0045b, tk5.d.AbstractC0042d.a.b.c cVar, uk5 uk5Var2, a aVar) {
        this.a = uk5Var;
        this.b = abstractC0045b;
        this.c = cVar;
        this.d = uk5Var2;
    }

    @Override // tk5.d.AbstractC0042d.a.b
    public uk5<tk5.d.AbstractC0042d.a.b.AbstractC0044a> a() {
        return this.d;
    }

    @Override // tk5.d.AbstractC0042d.a.b
    public tk5.d.AbstractC0042d.a.b.AbstractC0045b b() {
        return this.b;
    }

    @Override // tk5.d.AbstractC0042d.a.b
    public tk5.d.AbstractC0042d.a.b.c c() {
        return this.c;
    }

    @Override // tk5.d.AbstractC0042d.a.b
    public uk5<tk5.d.AbstractC0042d.a.b.AbstractC0046d> d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d.a.b)) {
            return false;
        }
        tk5.d.AbstractC0042d.a.b bVar = (tk5.d.AbstractC0042d.a.b) obj;
        return this.a.equals(bVar.d()) && this.b.equals(bVar.b()) && this.c.equals(bVar.c()) && this.d.equals(bVar.a());
    }

    public int hashCode() {
        return ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Execution{threads=");
        sbZ.append(this.a);
        sbZ.append(", exception=");
        sbZ.append(this.b);
        sbZ.append(", signal=");
        sbZ.append(this.c);
        sbZ.append(", binaries=");
        sbZ.append(this.d);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
