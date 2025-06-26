package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class pk5 extends tk5.d.AbstractC0042d.b {
    public final Double a;
    public final int b;
    public final boolean c;
    public final int d;
    public final long e;
    public final long f;

    public static final class b extends tk5.d.AbstractC0042d.b.a {
        public Double a;
        public Integer b;
        public Boolean c;
        public Integer d;
        public Long e;
        public Long f;

        public tk5.d.AbstractC0042d.b a() {
            String strN = this.b == null ? " batteryVelocity" : "";
            if (this.c == null) {
                strN = jo.n(strN, " proximityOn");
            }
            if (this.d == null) {
                strN = jo.n(strN, " orientation");
            }
            if (this.e == null) {
                strN = jo.n(strN, " ramUsed");
            }
            if (this.f == null) {
                strN = jo.n(strN, " diskUsed");
            }
            if (strN.isEmpty()) {
                return new pk5(this.a, this.b.intValue(), this.c.booleanValue(), this.d.intValue(), this.e.longValue(), this.f.longValue(), null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }
    }

    public pk5(Double d, int i, boolean z, int i2, long j, long j2, a aVar) {
        this.a = d;
        this.b = i;
        this.c = z;
        this.d = i2;
        this.e = j;
        this.f = j2;
    }

    @Override // tk5.d.AbstractC0042d.b
    public Double a() {
        return this.a;
    }

    @Override // tk5.d.AbstractC0042d.b
    public int b() {
        return this.b;
    }

    @Override // tk5.d.AbstractC0042d.b
    public long c() {
        return this.f;
    }

    @Override // tk5.d.AbstractC0042d.b
    public int d() {
        return this.d;
    }

    @Override // tk5.d.AbstractC0042d.b
    public long e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.AbstractC0042d.b)) {
            return false;
        }
        tk5.d.AbstractC0042d.b bVar = (tk5.d.AbstractC0042d.b) obj;
        Double d = this.a;
        if (d != null ? d.equals(bVar.a()) : bVar.a() == null) {
            if (this.b == bVar.b() && this.c == bVar.f() && this.d == bVar.d() && this.e == bVar.e() && this.f == bVar.c()) {
                return true;
            }
        }
        return false;
    }

    @Override // tk5.d.AbstractC0042d.b
    public boolean f() {
        return this.c;
    }

    public int hashCode() {
        Double d = this.a;
        int iHashCode = ((((((((d == null ? 0 : d.hashCode()) ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ (this.c ? 1231 : 1237)) * 1000003) ^ this.d) * 1000003;
        long j = this.e;
        long j2 = this.f;
        return ((iHashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Device{batteryLevel=");
        sbZ.append(this.a);
        sbZ.append(", batteryVelocity=");
        sbZ.append(this.b);
        sbZ.append(", proximityOn=");
        sbZ.append(this.c);
        sbZ.append(", orientation=");
        sbZ.append(this.d);
        sbZ.append(", ramUsed=");
        sbZ.append(this.e);
        sbZ.append(", diskUsed=");
        return jo.r(sbZ, this.f, StringSubstitutor.DEFAULT_VAR_END);
    }
}
