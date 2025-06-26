package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class uq {
    public final String a;

    public uq(String str) {
        Objects.requireNonNull(str, "name is null");
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof uq) {
            return this.a.equals(((uq) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public String toString() {
        return jo.s(jo.z("Encoding{name=\""), this.a, "\"}");
    }
}
