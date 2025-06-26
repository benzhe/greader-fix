package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class sk5 extends tk5.d.f {
    public final String a;

    public sk5(String str, a aVar) {
        this.a = str;
    }

    @Override // tk5.d.f
    public String a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof tk5.d.f) {
            return this.a.equals(((tk5.d.f) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public String toString() {
        return jo.s(jo.z("User{identifier="), this.a, StringSubstitutor.DEFAULT_VAR_END);
    }
}
