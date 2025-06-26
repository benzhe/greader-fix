package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class bk5 extends tk5.c {
    public final uk5<tk5.c.a> a;
    public final String b;

    public bk5(uk5 uk5Var, String str, a aVar) {
        this.a = uk5Var;
        this.b = str;
    }

    @Override // tk5.c
    public uk5<tk5.c.a> a() {
        return this.a;
    }

    @Override // tk5.c
    public String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.c)) {
            return false;
        }
        tk5.c cVar = (tk5.c) obj;
        if (this.a.equals(cVar.a())) {
            String str = this.b;
            if (str == null) {
                if (cVar.b() == null) {
                    return true;
                }
            } else if (str.equals(cVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        String str = this.b;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        StringBuilder sbZ = jo.z("FilesPayload{files=");
        sbZ.append(this.a);
        sbZ.append(", orgId=");
        return jo.s(sbZ, this.b, StringSubstitutor.DEFAULT_VAR_END);
    }
}
