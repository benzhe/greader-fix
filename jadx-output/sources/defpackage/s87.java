package defpackage;

import defpackage.x47;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class s87 {
    public static final s87 f = new s87(1, 0, 0, 1.0d, Collections.emptySet());
    public final int a;
    public final long b;
    public final long c;
    public final double d;
    public final Set<x47.b> e;

    public interface a {
        s87 get();
    }

    public s87(int i, long j, long j2, double d, Set<x47.b> set) {
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = d;
        this.e = xd5.s(set);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s87)) {
            return false;
        }
        s87 s87Var = (s87) obj;
        return this.a == s87Var.a && this.b == s87Var.b && this.c == s87Var.c && Double.compare(this.d, s87Var.d) == 0 && c50.T(this.e, s87Var.e);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.a), Long.valueOf(this.b), Long.valueOf(this.c), Double.valueOf(this.d), this.e});
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.a("maxAttempts", this.a);
        nd5VarK0.b("initialBackoffNanos", this.b);
        nd5VarK0.b("maxBackoffNanos", this.c);
        nd5VarK0.d("backoffMultiplier", String.valueOf(this.d));
        nd5VarK0.d("retryableStatusCodes", this.e);
        return nd5VarK0.toString();
    }
}
