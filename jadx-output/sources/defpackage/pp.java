package defpackage;

import java.io.Serializable;

/* loaded from: classes.dex */
public class pp implements ep, Serializable {
    public final String e;

    static {
        np npVar = np.a;
    }

    public pp(String str) {
        this.e = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != pp.class) {
            return false;
        }
        return this.e.equals(((pp) obj).e);
    }

    public final int hashCode() {
        return this.e.hashCode();
    }

    public final String toString() {
        return this.e;
    }
}
