package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class gk5 extends tk5.d.c {
    public final int a;
    public final String b;
    public final int c;
    public final long d;
    public final long e;
    public final boolean f;
    public final int g;
    public final String h;
    public final String i;

    public static final class b extends tk5.d.c.a {
        public Integer a;
        public String b;
        public Integer c;
        public Long d;
        public Long e;
        public Boolean f;
        public Integer g;
        public String h;
        public String i;

        public tk5.d.c a() {
            String strN = this.a == null ? " arch" : "";
            if (this.b == null) {
                strN = jo.n(strN, " model");
            }
            if (this.c == null) {
                strN = jo.n(strN, " cores");
            }
            if (this.d == null) {
                strN = jo.n(strN, " ram");
            }
            if (this.e == null) {
                strN = jo.n(strN, " diskSpace");
            }
            if (this.f == null) {
                strN = jo.n(strN, " simulator");
            }
            if (this.g == null) {
                strN = jo.n(strN, " state");
            }
            if (this.h == null) {
                strN = jo.n(strN, " manufacturer");
            }
            if (this.i == null) {
                strN = jo.n(strN, " modelClass");
            }
            if (strN.isEmpty()) {
                return new gk5(this.a.intValue(), this.b, this.c.intValue(), this.d.longValue(), this.e.longValue(), this.f.booleanValue(), this.g.intValue(), this.h, this.i, null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }
    }

    public gk5(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3, a aVar) {
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = j;
        this.e = j2;
        this.f = z;
        this.g = i3;
        this.h = str2;
        this.i = str3;
    }

    @Override // tk5.d.c
    public int a() {
        return this.a;
    }

    @Override // tk5.d.c
    public int b() {
        return this.c;
    }

    @Override // tk5.d.c
    public long c() {
        return this.e;
    }

    @Override // tk5.d.c
    public String d() {
        return this.h;
    }

    @Override // tk5.d.c
    public String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d.c)) {
            return false;
        }
        tk5.d.c cVar = (tk5.d.c) obj;
        return this.a == cVar.a() && this.b.equals(cVar.e()) && this.c == cVar.b() && this.d == cVar.g() && this.e == cVar.c() && this.f == cVar.i() && this.g == cVar.h() && this.h.equals(cVar.d()) && this.i.equals(cVar.f());
    }

    @Override // tk5.d.c
    public String f() {
        return this.i;
    }

    @Override // tk5.d.c
    public long g() {
        return this.d;
    }

    @Override // tk5.d.c
    public int h() {
        return this.g;
    }

    public int hashCode() {
        int iHashCode = (((((this.a ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c) * 1000003;
        long j = this.d;
        int i = (iHashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.e;
        return ((((((((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f ? 1231 : 1237)) * 1000003) ^ this.g) * 1000003) ^ this.h.hashCode()) * 1000003) ^ this.i.hashCode();
    }

    @Override // tk5.d.c
    public boolean i() {
        return this.f;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Device{arch=");
        sbZ.append(this.a);
        sbZ.append(", model=");
        sbZ.append(this.b);
        sbZ.append(", cores=");
        sbZ.append(this.c);
        sbZ.append(", ram=");
        sbZ.append(this.d);
        sbZ.append(", diskSpace=");
        sbZ.append(this.e);
        sbZ.append(", simulator=");
        sbZ.append(this.f);
        sbZ.append(", state=");
        sbZ.append(this.g);
        sbZ.append(", manufacturer=");
        sbZ.append(this.h);
        sbZ.append(", modelClass=");
        return jo.s(sbZ, this.i, StringSubstitutor.DEFAULT_VAR_END);
    }
}
