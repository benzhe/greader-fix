package defpackage;

import defpackage.x47;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class w67 {
    public static final w67 d = new w67(1, 0, Collections.emptySet());
    public final int a;
    public final long b;
    public final Set<x47.b> c;

    public interface a {
        w67 get();
    }

    public w67(int i, long j, Set<x47.b> set) {
        this.a = i;
        this.b = j;
        this.c = xd5.s(set);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w67.class != obj.getClass()) {
            return false;
        }
        w67 w67Var = (w67) obj;
        return this.a == w67Var.a && this.b == w67Var.b && c50.T(this.c, w67Var.c);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.a), Long.valueOf(this.b), this.c});
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.a("maxAttempts", this.a);
        nd5VarK0.b("hedgingDelayNanos", this.b);
        nd5VarK0.d("nonFatalStatusCodes", this.c);
        return nd5VarK0.toString();
    }
}
