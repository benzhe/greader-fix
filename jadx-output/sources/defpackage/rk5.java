package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class rk5 extends tk5.d.e {
    public final int a;
    public final String b;
    public final String c;
    public final boolean d;

    public rk5(int i, String str, String str2, boolean z, a aVar) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = z;
    }

    @Override // tk5.d.e
    public String a() {
        return this.c;
    }

    @Override // tk5.d.e
    public int b() {
        return this.a;
    }

    @Override // tk5.d.e
    public String c() {
        return this.b;
    }

    @Override // tk5.d.e
    public boolean d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.e)) {
            return false;
        }
        tk5.d.e eVar = (tk5.d.e) obj;
        return this.a == eVar.b() && this.b.equals(eVar.c()) && this.c.equals(eVar.a()) && this.d == eVar.d();
    }

    public int hashCode() {
        return ((((((this.a ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ (this.d ? 1231 : 1237);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("OperatingSystem{platform=");
        sbZ.append(this.a);
        sbZ.append(", version=");
        sbZ.append(this.b);
        sbZ.append(", buildVersion=");
        sbZ.append(this.c);
        sbZ.append(", jailbroken=");
        sbZ.append(this.d);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
