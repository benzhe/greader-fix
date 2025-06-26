package defpackage;

import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class va6 extends za6 {
    public final String a;
    public final String b;

    public va6(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.a = str;
        Objects.requireNonNull(str2, "Null version");
        this.b = str2;
    }

    @Override // defpackage.za6
    public String a() {
        return this.a;
    }

    @Override // defpackage.za6
    public String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof za6)) {
            return false;
        }
        za6 za6Var = (za6) obj;
        return this.a.equals(za6Var.a()) && this.b.equals(za6Var.b());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("LibraryVersion{libraryName=");
        sbZ.append(this.a);
        sbZ.append(", version=");
        return jo.s(sbZ, this.b, StringSubstitutor.DEFAULT_VAR_END);
    }
}
