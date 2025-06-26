package defpackage;

import defpackage.as;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class vr extends as {
    public final String a;
    public final Integer b;
    public final zr c;
    public final long d;
    public final long e;
    public final Map<String, String> f;

    public static final class b extends as.a {
        public String a;
        public Integer b;
        public zr c;
        public Long d;
        public Long e;
        public Map<String, String> f;

        @Override // as.a
        public as b() {
            String strN = this.a == null ? " transportName" : "";
            if (this.c == null) {
                strN = jo.n(strN, " encodedPayload");
            }
            if (this.d == null) {
                strN = jo.n(strN, " eventMillis");
            }
            if (this.e == null) {
                strN = jo.n(strN, " uptimeMillis");
            }
            if (this.f == null) {
                strN = jo.n(strN, " autoMetadata");
            }
            if (strN.isEmpty()) {
                return new vr(this.a, this.b, this.c, this.d.longValue(), this.e.longValue(), this.f, null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }

        @Override // as.a
        public Map<String, String> c() {
            Map<String, String> map = this.f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        public as.a d(zr zrVar) {
            Objects.requireNonNull(zrVar, "Null encodedPayload");
            this.c = zrVar;
            return this;
        }

        public as.a e(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        public as.a f(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.a = str;
            return this;
        }

        public as.a g(long j) {
            this.e = Long.valueOf(j);
            return this;
        }
    }

    public vr(String str, Integer num, zr zrVar, long j, long j2, Map map, a aVar) {
        this.a = str;
        this.b = num;
        this.c = zrVar;
        this.d = j;
        this.e = j2;
        this.f = map;
    }

    @Override // defpackage.as
    public Map<String, String> b() {
        return this.f;
    }

    @Override // defpackage.as
    public Integer c() {
        return this.b;
    }

    @Override // defpackage.as
    public zr d() {
        return this.c;
    }

    @Override // defpackage.as
    public long e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof as)) {
            return false;
        }
        as asVar = (as) obj;
        return this.a.equals(asVar.g()) && ((num = this.b) != null ? num.equals(asVar.c()) : asVar.c() == null) && this.c.equals(asVar.d()) && this.d == asVar.e() && this.e == asVar.h() && this.f.equals(asVar.b());
    }

    @Override // defpackage.as
    public String g() {
        return this.a;
    }

    @Override // defpackage.as
    public long h() {
        return this.e;
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.c.hashCode()) * 1000003;
        long j = this.d;
        int i = (iHashCode2 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.e;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("EventInternal{transportName=");
        sbZ.append(this.a);
        sbZ.append(", code=");
        sbZ.append(this.b);
        sbZ.append(", encodedPayload=");
        sbZ.append(this.c);
        sbZ.append(", eventMillis=");
        sbZ.append(this.d);
        sbZ.append(", uptimeMillis=");
        sbZ.append(this.e);
        sbZ.append(", autoMetadata=");
        sbZ.append(this.f);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
