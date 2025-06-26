package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class c96 extends o96 {
    public final String a;
    public final long b;
    public final long c;

    public c96(String str, long j, long j2, a aVar) {
        this.a = str;
        this.b = j;
        this.c = j2;
    }

    @Override // defpackage.o96
    public long a() {
        return this.b;
    }

    @Override // defpackage.o96
    public String b() {
        return this.a;
    }

    @Override // defpackage.o96
    public long c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o96)) {
            return false;
        }
        o96 o96Var = (o96) obj;
        return this.a.equals(o96Var.b()) && this.b == o96Var.a() && this.c == o96Var.c();
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        long j2 = this.c;
        return ((iHashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        StringBuilder sbZ = jo.z("RateLimit{limiterKey=");
        sbZ.append(this.a);
        sbZ.append(", limit=");
        sbZ.append(this.b);
        sbZ.append(", timeToLiveMillis=");
        return jo.r(sbZ, this.c, StringSubstitutor.DEFAULT_VAR_END);
    }
}
