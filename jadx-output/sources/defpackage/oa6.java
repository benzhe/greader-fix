package defpackage;

import defpackage.sa6;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class oa6 extends sa6 {
    public final String a;
    public final long b;
    public final sa6.b c;

    public static final class b extends sa6.a {
        public String a;
        public Long b;
        public sa6.b c;

        @Override // sa6.a
        public sa6 a() {
            String str = this.b == null ? " tokenExpirationTimestamp" : "";
            if (str.isEmpty()) {
                return new oa6(this.a, this.b.longValue(), this.c, null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", str));
        }

        @Override // sa6.a
        public sa6.a b(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    public oa6(String str, long j, sa6.b bVar, a aVar) {
        this.a = str;
        this.b = j;
        this.c = bVar;
    }

    @Override // defpackage.sa6
    public sa6.b b() {
        return this.c;
    }

    @Override // defpackage.sa6
    public String c() {
        return this.a;
    }

    @Override // defpackage.sa6
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof sa6)) {
            return false;
        }
        sa6 sa6Var = (sa6) obj;
        String str = this.a;
        if (str != null ? str.equals(sa6Var.c()) : sa6Var.c() == null) {
            if (this.b == sa6Var.d()) {
                sa6.b bVar = this.c;
                if (bVar == null) {
                    if (sa6Var.b() == null) {
                        return true;
                    }
                } else if (bVar.equals(sa6Var.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j = this.b;
        int i = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        sa6.b bVar = this.c;
        return i ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("TokenResult{token=");
        sbZ.append(this.a);
        sbZ.append(", tokenExpirationTimestamp=");
        sbZ.append(this.b);
        sbZ.append(", responseCode=");
        sbZ.append(this.c);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
