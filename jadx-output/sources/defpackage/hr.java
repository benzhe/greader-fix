package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class hr extends fr {
    public final Integer a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;

    public hr(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, a aVar) {
        this.a = num;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = str8;
        this.j = str9;
        this.k = str10;
        this.l = str11;
    }

    @Override // defpackage.fr
    public String a() {
        return this.l;
    }

    @Override // defpackage.fr
    public String b() {
        return this.j;
    }

    @Override // defpackage.fr
    public String c() {
        return this.d;
    }

    @Override // defpackage.fr
    public String d() {
        return this.h;
    }

    @Override // defpackage.fr
    public String e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof fr)) {
            return false;
        }
        fr frVar = (fr) obj;
        Integer num = this.a;
        if (num != null ? num.equals(frVar.l()) : frVar.l() == null) {
            String str = this.b;
            if (str != null ? str.equals(frVar.i()) : frVar.i() == null) {
                String str2 = this.c;
                if (str2 != null ? str2.equals(frVar.e()) : frVar.e() == null) {
                    String str3 = this.d;
                    if (str3 != null ? str3.equals(frVar.c()) : frVar.c() == null) {
                        String str4 = this.e;
                        if (str4 != null ? str4.equals(frVar.k()) : frVar.k() == null) {
                            String str5 = this.f;
                            if (str5 != null ? str5.equals(frVar.j()) : frVar.j() == null) {
                                String str6 = this.g;
                                if (str6 != null ? str6.equals(frVar.g()) : frVar.g() == null) {
                                    String str7 = this.h;
                                    if (str7 != null ? str7.equals(frVar.d()) : frVar.d() == null) {
                                        String str8 = this.i;
                                        if (str8 != null ? str8.equals(frVar.f()) : frVar.f() == null) {
                                            String str9 = this.j;
                                            if (str9 != null ? str9.equals(frVar.b()) : frVar.b() == null) {
                                                String str10 = this.k;
                                                if (str10 != null ? str10.equals(frVar.h()) : frVar.h() == null) {
                                                    String str11 = this.l;
                                                    if (str11 == null) {
                                                        if (frVar.a() == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(frVar.a())) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.fr
    public String f() {
        return this.i;
    }

    @Override // defpackage.fr
    public String g() {
        return this.g;
    }

    @Override // defpackage.fr
    public String h() {
        return this.k;
    }

    public int hashCode() {
        Integer num = this.a;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.e;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.g;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.h;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.i;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.j;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.k;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.l;
        return iHashCode11 ^ (str11 != null ? str11.hashCode() : 0);
    }

    @Override // defpackage.fr
    public String i() {
        return this.b;
    }

    @Override // defpackage.fr
    public String j() {
        return this.f;
    }

    @Override // defpackage.fr
    public String k() {
        return this.e;
    }

    @Override // defpackage.fr
    public Integer l() {
        return this.a;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("AndroidClientInfo{sdkVersion=");
        sbZ.append(this.a);
        sbZ.append(", model=");
        sbZ.append(this.b);
        sbZ.append(", hardware=");
        sbZ.append(this.c);
        sbZ.append(", device=");
        sbZ.append(this.d);
        sbZ.append(", product=");
        sbZ.append(this.e);
        sbZ.append(", osBuild=");
        sbZ.append(this.f);
        sbZ.append(", manufacturer=");
        sbZ.append(this.g);
        sbZ.append(", fingerprint=");
        sbZ.append(this.h);
        sbZ.append(", locale=");
        sbZ.append(this.i);
        sbZ.append(", country=");
        sbZ.append(this.j);
        sbZ.append(", mccMnc=");
        sbZ.append(this.k);
        sbZ.append(", applicationBuild=");
        return jo.s(sbZ, this.l, StringSubstitutor.DEFAULT_VAR_END);
    }
}
