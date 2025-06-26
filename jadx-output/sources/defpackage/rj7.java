package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class rj7<A, B> implements Serializable {
    public final A e;
    public final B f;

    public rj7(A a, B b) {
        this.e = a;
        this.f = b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rj7)) {
            return false;
        }
        rj7 rj7Var = (rj7) obj;
        return im7.a(this.e, rj7Var.e) && im7.a(this.f, rj7Var.f);
    }

    public int hashCode() {
        A a = this.e;
        int iHashCode = (a != null ? a.hashCode() : 0) * 31;
        B b = this.f;
        return iHashCode + (b != null ? b.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.e + ", " + this.f + ')';
    }
}
