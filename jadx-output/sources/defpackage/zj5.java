package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class zj5 extends tk5 {
    public final String b;
    public final String c;
    public final int d;
    public final String e;
    public final String f;
    public final String g;
    public final tk5.d h;
    public final tk5.c i;

    public static final class b extends tk5.a {
        public String a;
        public String b;
        public Integer c;
        public String d;
        public String e;
        public String f;
        public tk5.d g;
        public tk5.c h;

        public b() {
        }

        @Override // tk5.a
        public tk5 a() {
            String strN = this.a == null ? " sdkVersion" : "";
            if (this.b == null) {
                strN = jo.n(strN, " gmpAppId");
            }
            if (this.c == null) {
                strN = jo.n(strN, " platform");
            }
            if (this.d == null) {
                strN = jo.n(strN, " installationUuid");
            }
            if (this.e == null) {
                strN = jo.n(strN, " buildVersion");
            }
            if (this.f == null) {
                strN = jo.n(strN, " displayVersion");
            }
            if (strN.isEmpty()) {
                return new zj5(this.a, this.b, this.c.intValue(), this.d, this.e, this.f, this.g, this.h, null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }

        public b(tk5 tk5Var, a aVar) {
            zj5 zj5Var = (zj5) tk5Var;
            this.a = zj5Var.b;
            this.b = zj5Var.c;
            this.c = Integer.valueOf(zj5Var.d);
            this.d = zj5Var.e;
            this.e = zj5Var.f;
            this.f = zj5Var.g;
            this.g = zj5Var.h;
            this.h = zj5Var.i;
        }
    }

    public zj5(String str, String str2, int i, String str3, String str4, String str5, tk5.d dVar, tk5.c cVar, a aVar) {
        this.b = str;
        this.c = str2;
        this.d = i;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = dVar;
        this.i = cVar;
    }

    @Override // defpackage.tk5
    public String a() {
        return this.f;
    }

    @Override // defpackage.tk5
    public String b() {
        return this.g;
    }

    @Override // defpackage.tk5
    public String c() {
        return this.c;
    }

    @Override // defpackage.tk5
    public String d() {
        return this.e;
    }

    @Override // defpackage.tk5
    public tk5.c e() {
        return this.i;
    }

    public boolean equals(Object obj) {
        tk5.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5)) {
            return false;
        }
        tk5 tk5Var = (tk5) obj;
        if (this.b.equals(tk5Var.g()) && this.c.equals(tk5Var.c()) && this.d == tk5Var.f() && this.e.equals(tk5Var.d()) && this.f.equals(tk5Var.a()) && this.g.equals(tk5Var.b()) && ((dVar = this.h) != null ? dVar.equals(tk5Var.h()) : tk5Var.h() == null)) {
            tk5.c cVar = this.i;
            if (cVar == null) {
                if (tk5Var.e() == null) {
                    return true;
                }
            } else if (cVar.equals(tk5Var.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.tk5
    public int f() {
        return this.d;
    }

    @Override // defpackage.tk5
    public String g() {
        return this.b;
    }

    @Override // defpackage.tk5
    public tk5.d h() {
        return this.h;
    }

    public int hashCode() {
        int iHashCode = (((((((((((this.b.hashCode() ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d) * 1000003) ^ this.e.hashCode()) * 1000003) ^ this.f.hashCode()) * 1000003) ^ this.g.hashCode()) * 1000003;
        tk5.d dVar = this.h;
        int iHashCode2 = (iHashCode ^ (dVar == null ? 0 : dVar.hashCode())) * 1000003;
        tk5.c cVar = this.i;
        return iHashCode2 ^ (cVar != null ? cVar.hashCode() : 0);
    }

    @Override // defpackage.tk5
    public tk5.a i() {
        return new b(this, null);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("CrashlyticsReport{sdkVersion=");
        sbZ.append(this.b);
        sbZ.append(", gmpAppId=");
        sbZ.append(this.c);
        sbZ.append(", platform=");
        sbZ.append(this.d);
        sbZ.append(", installationUuid=");
        sbZ.append(this.e);
        sbZ.append(", buildVersion=");
        sbZ.append(this.f);
        sbZ.append(", displayVersion=");
        sbZ.append(this.g);
        sbZ.append(", session=");
        sbZ.append(this.h);
        sbZ.append(", ndkPayload=");
        sbZ.append(this.i);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
