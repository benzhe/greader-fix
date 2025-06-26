package defpackage;

import defpackage.nt;
import java.util.Set;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class kt extends nt.a {
    public final long a;
    public final long b;
    public final Set<nt.b> c;

    public static final class b extends nt.a.AbstractC0027a {
        public Long a;
        public Long b;
        public Set<nt.b> c;

        @Override // nt.a.AbstractC0027a
        public nt.a a() {
            String strN = this.a == null ? " delta" : "";
            if (this.b == null) {
                strN = jo.n(strN, " maxAllowedDelay");
            }
            if (this.c == null) {
                strN = jo.n(strN, " flags");
            }
            if (strN.isEmpty()) {
                return new kt(this.a.longValue(), this.b.longValue(), this.c, null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }

        @Override // nt.a.AbstractC0027a
        public nt.a.AbstractC0027a b(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // nt.a.AbstractC0027a
        public nt.a.AbstractC0027a c(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    public kt(long j, long j2, Set set, a aVar) {
        this.a = j;
        this.b = j2;
        this.c = set;
    }

    @Override // nt.a
    public long b() {
        return this.a;
    }

    @Override // nt.a
    public Set<nt.b> c() {
        return this.c;
    }

    @Override // nt.a
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof nt.a)) {
            return false;
        }
        nt.a aVar = (nt.a) obj;
        return this.a == aVar.b() && this.b == aVar.d() && this.c.equals(aVar.c());
    }

    public int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.b;
        return this.c.hashCode() ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("ConfigValue{delta=");
        sbZ.append(this.a);
        sbZ.append(", maxAllowedDelay=");
        sbZ.append(this.b);
        sbZ.append(", flags=");
        sbZ.append(this.c);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
