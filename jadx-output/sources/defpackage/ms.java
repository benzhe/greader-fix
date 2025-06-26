package defpackage;

import defpackage.rs;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ms extends rs {
    public final rs.a a;
    public final long b;

    public ms(rs.a aVar, long j) {
        Objects.requireNonNull(aVar, "Null status");
        this.a = aVar;
        this.b = j;
    }

    @Override // defpackage.rs
    public long b() {
        return this.b;
    }

    @Override // defpackage.rs
    public rs.a c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof rs)) {
            return false;
        }
        rs rsVar = (rs) obj;
        return this.a.equals(rsVar.c()) && this.b == rsVar.b();
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        return iHashCode ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder sbZ = jo.z("BackendResponse{status=");
        sbZ.append(this.a);
        sbZ.append(", nextRequestWaitMillis=");
        return jo.r(sbZ, this.b, StringSubstitutor.DEFAULT_VAR_END);
    }
}
