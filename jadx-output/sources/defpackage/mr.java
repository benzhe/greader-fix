package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class mr extends sr {
    public final long a;

    public mr(long j) {
        this.a = j;
    }

    @Override // defpackage.sr
    public long b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof sr) && this.a == ((sr) obj).b();
    }

    public int hashCode() {
        long j = this.a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return jo.r(jo.z("LogResponse{nextRequestWaitMillis="), this.a, StringSubstitutor.DEFAULT_VAR_END);
    }
}
