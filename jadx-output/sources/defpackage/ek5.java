package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ek5 extends tk5.d.a {
    public final String a;
    public final String b;
    public final String c;
    public final tk5.d.a.AbstractC0041a d = null;
    public final String e;
    public final String f;
    public final String g;

    public ek5(String str, String str2, String str3, tk5.d.a.AbstractC0041a abstractC0041a, String str4, String str5, String str6, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
    }

    @Override // tk5.d.a
    public String a() {
        return this.f;
    }

    @Override // tk5.d.a
    public String b() {
        return this.g;
    }

    @Override // tk5.d.a
    public String c() {
        return this.c;
    }

    @Override // tk5.d.a
    public String d() {
        return this.a;
    }

    @Override // tk5.d.a
    public String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        String str;
        tk5.d.a.AbstractC0041a abstractC0041a;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.a)) {
            return false;
        }
        tk5.d.a aVar = (tk5.d.a) obj;
        if (this.a.equals(aVar.d()) && this.b.equals(aVar.g()) && ((str = this.c) != null ? str.equals(aVar.c()) : aVar.c() == null) && ((abstractC0041a = this.d) != null ? abstractC0041a.equals(aVar.f()) : aVar.f() == null) && ((str2 = this.e) != null ? str2.equals(aVar.e()) : aVar.e() == null) && ((str3 = this.f) != null ? str3.equals(aVar.a()) : aVar.a() == null)) {
            String str4 = this.g;
            if (str4 == null) {
                if (aVar.b() == null) {
                    return true;
                }
            } else if (str4.equals(aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @Override // tk5.d.a
    public tk5.d.a.AbstractC0041a f() {
        return this.d;
    }

    @Override // tk5.d.a
    public String g() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = (((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003;
        String str = this.c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        tk5.d.a.AbstractC0041a abstractC0041a = this.d;
        int iHashCode3 = (iHashCode2 ^ (abstractC0041a == null ? 0 : abstractC0041a.hashCode())) * 1000003;
        String str2 = this.e;
        int iHashCode4 = (iHashCode3 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f;
        int iHashCode5 = (iHashCode4 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.g;
        return iHashCode5 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Application{identifier=");
        sbZ.append(this.a);
        sbZ.append(", version=");
        sbZ.append(this.b);
        sbZ.append(", displayVersion=");
        sbZ.append(this.c);
        sbZ.append(", organization=");
        sbZ.append(this.d);
        sbZ.append(", installationUuid=");
        sbZ.append(this.e);
        sbZ.append(", developmentPlatform=");
        sbZ.append(this.f);
        sbZ.append(", developmentPlatformVersion=");
        return jo.s(sbZ, this.g, StringSubstitutor.DEFAULT_VAR_END);
    }
}
