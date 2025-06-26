package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class hk5 extends tk5.d.AbstractC0042d {
    public final long a;
    public final String b;
    public final tk5.d.AbstractC0042d.a c;
    public final tk5.d.AbstractC0042d.b d;
    public final tk5.d.AbstractC0042d.c e;

    public hk5(long j, String str, tk5.d.AbstractC0042d.a aVar, tk5.d.AbstractC0042d.b bVar, tk5.d.AbstractC0042d.c cVar, a aVar2) {
        this.a = j;
        this.b = str;
        this.c = aVar;
        this.d = bVar;
        this.e = cVar;
    }

    @Override // tk5.d.AbstractC0042d
    public tk5.d.AbstractC0042d.a a() {
        return this.c;
    }

    @Override // tk5.d.AbstractC0042d
    public tk5.d.AbstractC0042d.b b() {
        return this.d;
    }

    @Override // tk5.d.AbstractC0042d
    public tk5.d.AbstractC0042d.c c() {
        return this.e;
    }

    @Override // tk5.d.AbstractC0042d
    public long d() {
        return this.a;
    }

    @Override // tk5.d.AbstractC0042d
    public String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d)) {
            return false;
        }
        tk5.d.AbstractC0042d abstractC0042d = (tk5.d.AbstractC0042d) obj;
        if (this.a == abstractC0042d.d() && this.b.equals(abstractC0042d.e()) && this.c.equals(abstractC0042d.a()) && this.d.equals(abstractC0042d.b())) {
            tk5.d.AbstractC0042d.c cVar = this.e;
            if (cVar == null) {
                if (abstractC0042d.c() == null) {
                    return true;
                }
            } else if (cVar.equals(abstractC0042d.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.a;
        int iHashCode = (((((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003;
        tk5.d.AbstractC0042d.c cVar = this.e;
        return (cVar == null ? 0 : cVar.hashCode()) ^ iHashCode;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Event{timestamp=");
        sbZ.append(this.a);
        sbZ.append(", type=");
        sbZ.append(this.b);
        sbZ.append(", app=");
        sbZ.append(this.c);
        sbZ.append(", device=");
        sbZ.append(this.d);
        sbZ.append(", log=");
        sbZ.append(this.e);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
