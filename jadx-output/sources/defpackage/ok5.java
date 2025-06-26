package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ok5 extends tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a {
    public final long a;
    public final String b;
    public final String c;
    public final long d;
    public final int e;

    public static final class b extends tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a.AbstractC0048a {
        public Long a;
        public String b;
        public String c;
        public Long d;
        public Integer e;

        public tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a a() {
            String strN = this.a == null ? " pc" : "";
            if (this.b == null) {
                strN = jo.n(strN, " symbol");
            }
            if (this.d == null) {
                strN = jo.n(strN, " offset");
            }
            if (this.e == null) {
                strN = jo.n(strN, " importance");
            }
            if (strN.isEmpty()) {
                return new ok5(this.a.longValue(), this.b, this.c, this.d.longValue(), this.e.intValue(), null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }
    }

    public ok5(long j, String str, String str2, long j2, int i, a aVar) {
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = j2;
        this.e = i;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a
    public String a() {
        return this.c;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a
    public int b() {
        return this.e;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a
    public long c() {
        return this.d;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a
    public long d() {
        return this.a;
    }

    @Override // tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a
    public String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a)) {
            return false;
        }
        tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a abstractC0047a = (tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a) obj;
        return this.a == abstractC0047a.d() && this.b.equals(abstractC0047a.e()) && ((str = this.c) != null ? str.equals(abstractC0047a.a()) : abstractC0047a.a() == null) && this.d == abstractC0047a.c() && this.e == abstractC0047a.b();
    }

    public int hashCode() {
        long j = this.a;
        int iHashCode = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003;
        String str = this.c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j2 = this.d;
        return this.e ^ ((iHashCode2 ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Frame{pc=");
        sbZ.append(this.a);
        sbZ.append(", symbol=");
        sbZ.append(this.b);
        sbZ.append(", file=");
        sbZ.append(this.c);
        sbZ.append(", offset=");
        sbZ.append(this.d);
        sbZ.append(", importance=");
        return jo.q(sbZ, this.e, StringSubstitutor.DEFAULT_VAR_END);
    }
}
