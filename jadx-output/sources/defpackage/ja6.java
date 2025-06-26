package defpackage;

import defpackage.la6;
import defpackage.ma6;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ja6 extends ma6 {
    public final String b;
    public final la6.a c;
    public final String d;
    public final String e;
    public final long f;
    public final long g;
    public final String h;

    public static final class b extends ma6.a {
        public String a;
        public la6.a b;
        public String c;
        public String d;
        public Long e;
        public Long f;
        public String g;

        public b() {
        }

        @Override // ma6.a
        public ma6 a() {
            String strN = this.b == null ? " registrationStatus" : "";
            if (this.e == null) {
                strN = jo.n(strN, " expiresInSecs");
            }
            if (this.f == null) {
                strN = jo.n(strN, " tokenCreationEpochInSecs");
            }
            if (strN.isEmpty()) {
                return new ja6(this.a, this.b, this.c, this.d, this.e.longValue(), this.f.longValue(), this.g, null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }

        @Override // ma6.a
        public ma6.a b(la6.a aVar) {
            Objects.requireNonNull(aVar, "Null registrationStatus");
            this.b = aVar;
            return this;
        }

        public ma6.a c(long j) {
            this.e = Long.valueOf(j);
            return this;
        }

        public ma6.a d(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        public b(ma6 ma6Var, a aVar) {
            ja6 ja6Var = (ja6) ma6Var;
            this.a = ja6Var.b;
            this.b = ja6Var.c;
            this.c = ja6Var.d;
            this.d = ja6Var.e;
            this.e = Long.valueOf(ja6Var.f);
            this.f = Long.valueOf(ja6Var.g);
            this.g = ja6Var.h;
        }
    }

    public ja6(String str, la6.a aVar, String str2, String str3, long j, long j2, String str4, a aVar2) {
        this.b = str;
        this.c = aVar;
        this.d = str2;
        this.e = str3;
        this.f = j;
        this.g = j2;
        this.h = str4;
    }

    @Override // defpackage.ma6
    public String a() {
        return this.d;
    }

    @Override // defpackage.ma6
    public long b() {
        return this.f;
    }

    @Override // defpackage.ma6
    public String c() {
        return this.b;
    }

    @Override // defpackage.ma6
    public String d() {
        return this.h;
    }

    @Override // defpackage.ma6
    public String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ma6)) {
            return false;
        }
        ma6 ma6Var = (ma6) obj;
        String str3 = this.b;
        if (str3 != null ? str3.equals(ma6Var.c()) : ma6Var.c() == null) {
            if (this.c.equals(ma6Var.f()) && ((str = this.d) != null ? str.equals(ma6Var.a()) : ma6Var.a() == null) && ((str2 = this.e) != null ? str2.equals(ma6Var.e()) : ma6Var.e() == null) && this.f == ma6Var.b() && this.g == ma6Var.g()) {
                String str4 = this.h;
                if (str4 == null) {
                    if (ma6Var.d() == null) {
                        return true;
                    }
                } else if (str4.equals(ma6Var.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.ma6
    public la6.a f() {
        return this.c;
    }

    @Override // defpackage.ma6
    public long g() {
        return this.g;
    }

    public int hashCode() {
        String str = this.b;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003;
        String str2 = this.d;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j = this.f;
        int i = (iHashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.g;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.h;
        return i2 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // defpackage.ma6
    public ma6.a k() {
        return new b(this, null);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("PersistedInstallationEntry{firebaseInstallationId=");
        sbZ.append(this.b);
        sbZ.append(", registrationStatus=");
        sbZ.append(this.c);
        sbZ.append(", authToken=");
        sbZ.append(this.d);
        sbZ.append(", refreshToken=");
        sbZ.append(this.e);
        sbZ.append(", expiresInSecs=");
        sbZ.append(this.f);
        sbZ.append(", tokenCreationEpochInSecs=");
        sbZ.append(this.g);
        sbZ.append(", fisError=");
        return jo.s(sbZ, this.h, StringSubstitutor.DEFAULT_VAR_END);
    }
}
