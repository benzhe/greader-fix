package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class t96 extends ea6 {
    public final String a;
    public final long b;
    public final long c;

    public t96(String str, long j, long j2, a aVar) {
        this.a = str;
        this.b = j;
        this.c = j2;
    }

    @Override // defpackage.ea6
    public String a() {
        return this.a;
    }

    @Override // defpackage.ea6
    public long b() {
        return this.c;
    }

    @Override // defpackage.ea6
    public long c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ea6)) {
            return false;
        }
        ea6 ea6Var = (ea6) obj;
        return this.a.equals(ea6Var.a()) && this.b == ea6Var.c() && this.c == ea6Var.b();
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        long j2 = this.c;
        return ((iHashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        StringBuilder sbZ = jo.z("InstallationTokenResult{token=");
        sbZ.append(this.a);
        sbZ.append(", tokenExpirationTimestamp=");
        sbZ.append(this.b);
        sbZ.append(", tokenCreationTimestamp=");
        return jo.r(sbZ, this.c, StringSubstitutor.DEFAULT_VAR_END);
    }
}
