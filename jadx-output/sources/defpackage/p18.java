package defpackage;

import java.util.HashSet;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class p18 {
    public static final l18 d;
    public static final p18 e = null;
    public final HashSet<p08<?>> a;
    public final k18 b;
    public final boolean c;

    static {
        im7.e("-Root-", InetAddressKeys.KEY_NAME);
        d = new l18("-Root-");
    }

    public p18(k18 k18Var, boolean z, int i) {
        z = (i & 2) != 0 ? false : z;
        im7.e(k18Var, "qualifier");
        this.b = k18Var;
        this.c = z;
        this.a = new HashSet<>();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p18)) {
            return false;
        }
        p18 p18Var = (p18) obj;
        return im7.a(this.b, p18Var.b) && this.c == p18Var.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        k18 k18Var = this.b;
        int iHashCode = (k18Var != null ? k18Var.hashCode() : 0) * 31;
        boolean z = this.c;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return iHashCode + i;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("ScopeDefinition(qualifier=");
        sbZ.append(this.b);
        sbZ.append(", isRoot=");
        sbZ.append(this.c);
        sbZ.append(")");
        return sbZ.toString();
    }

    public p18(k18 k18Var, boolean z) {
        im7.e(k18Var, "qualifier");
        this.b = k18Var;
        this.c = z;
        this.a = new HashSet<>();
    }
}
