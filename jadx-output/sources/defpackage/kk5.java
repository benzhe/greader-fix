package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class kk5 extends tk5.d.AbstractC0042d.a.b.AbstractC0044a {
    public final long a;
    public final long b;
    public final String c;
    public final String d;

    public kk5(long j, long j2, String str, String str2, a aVar) {
        this.a = j;
        this.b = j2;
        this.c = str;
        this.d = str2;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0044a
    public long a() {
        return this.a;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0044a
    public String b() {
        return this.c;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0044a
    public long c() {
        return this.b;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0044a
    public String d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d.a.b.AbstractC0044a)) {
            return false;
        }
        tk5.d.AbstractC0042d.a.b.AbstractC0044a abstractC0044a = (tk5.d.AbstractC0042d.a.b.AbstractC0044a) obj;
        if (this.a == abstractC0044a.a() && this.b == abstractC0044a.c() && this.c.equals(abstractC0044a.b())) {
            String str = this.d;
            if (str == null) {
                if (abstractC0044a.d() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0044a.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int iHashCode = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.c.hashCode()) * 1000003;
        String str = this.d;
        return (str == null ? 0 : str.hashCode()) ^ iHashCode;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("BinaryImage{baseAddress=");
        sbZ.append(this.a);
        sbZ.append(", size=");
        sbZ.append(this.b);
        sbZ.append(", name=");
        sbZ.append(this.c);
        sbZ.append(", uuid=");
        return jo.s(sbZ, this.d, StringSubstitutor.DEFAULT_VAR_END);
    }
}
