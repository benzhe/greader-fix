package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ak5 extends tk5.b {
    public final String a;
    public final String b;

    public ak5(String str, String str2, a aVar) {
        this.a = str;
        this.b = str2;
    }

    @Override // tk5.b
    public String a() {
        return this.a;
    }

    @Override // tk5.b
    public String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.b)) {
            return false;
        }
        tk5.b bVar = (tk5.b) obj;
        return this.a.equals(bVar.a()) && this.b.equals(bVar.b());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("CustomAttribute{key=");
        sbZ.append(this.a);
        sbZ.append(", value=");
        return jo.s(sbZ, this.b, StringSubstitutor.DEFAULT_VAR_END);
    }
}
