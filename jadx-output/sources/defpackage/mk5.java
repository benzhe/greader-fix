package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class mk5 extends tk5.d.AbstractC0042d.a.b.c {
    public final String a;
    public final String b;
    public final long c;

    public mk5(String str, String str2, long j, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    @Override // tk5.d.AbstractC0042d.a.b.c
    public long a() {
        return this.c;
    }

    @Override // tk5.d.AbstractC0042d.a.b.c
    public String b() {
        return this.b;
    }

    @Override // tk5.d.AbstractC0042d.a.b.c
    public String c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d.a.b.c)) {
            return false;
        }
        tk5.d.AbstractC0042d.a.b.c cVar = (tk5.d.AbstractC0042d.a.b.c) obj;
        return this.a.equals(cVar.c()) && this.b.equals(cVar.b()) && this.c == cVar.a();
    }

    public int hashCode() {
        int iHashCode = (((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003;
        long j = this.c;
        return iHashCode ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Signal{name=");
        sbZ.append(this.a);
        sbZ.append(", code=");
        sbZ.append(this.b);
        sbZ.append(", address=");
        return jo.r(sbZ, this.c, StringSubstitutor.DEFAULT_VAR_END);
    }
}
