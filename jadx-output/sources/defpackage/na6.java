package defpackage;

import defpackage.qa6;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class na6 extends qa6 {
    public final String a;
    public final String b;
    public final String c;
    public final sa6 d;
    public final qa6.a e;

    public na6(String str, String str2, String str3, sa6 sa6Var, qa6.a aVar, a aVar2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = sa6Var;
        this.e = aVar;
    }

    @Override // defpackage.qa6
    public sa6 a() {
        return this.d;
    }

    @Override // defpackage.qa6
    public String b() {
        return this.b;
    }

    @Override // defpackage.qa6
    public String c() {
        return this.c;
    }

    @Override // defpackage.qa6
    public qa6.a d() {
        return this.e;
    }

    @Override // defpackage.qa6
    public String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qa6)) {
            return false;
        }
        qa6 qa6Var = (qa6) obj;
        String str = this.a;
        if (str != null ? str.equals(qa6Var.e()) : qa6Var.e() == null) {
            String str2 = this.b;
            if (str2 != null ? str2.equals(qa6Var.b()) : qa6Var.b() == null) {
                String str3 = this.c;
                if (str3 != null ? str3.equals(qa6Var.c()) : qa6Var.c() == null) {
                    sa6 sa6Var = this.d;
                    if (sa6Var != null ? sa6Var.equals(qa6Var.a()) : qa6Var.a() == null) {
                        qa6.a aVar = this.e;
                        if (aVar == null) {
                            if (qa6Var.d() == null) {
                                return true;
                            }
                        } else if (aVar.equals(qa6Var.d())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        sa6 sa6Var = this.d;
        int iHashCode4 = (iHashCode3 ^ (sa6Var == null ? 0 : sa6Var.hashCode())) * 1000003;
        qa6.a aVar = this.e;
        return iHashCode4 ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("InstallationResponse{uri=");
        sbZ.append(this.a);
        sbZ.append(", fid=");
        sbZ.append(this.b);
        sbZ.append(", refreshToken=");
        sbZ.append(this.c);
        sbZ.append(", authToken=");
        sbZ.append(this.d);
        sbZ.append(", responseCode=");
        sbZ.append(this.e);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
