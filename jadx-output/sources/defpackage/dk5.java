package defpackage;

import defpackage.tk5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class dk5 extends tk5.d {
    public final String a;
    public final String b;
    public final long c;
    public final Long d;
    public final boolean e;
    public final tk5.d.a f;
    public final tk5.d.f g;
    public final tk5.d.e h;
    public final tk5.d.c i;
    public final uk5<tk5.d.AbstractC0042d> j;
    public final int k;

    public static final class b extends tk5.d.b {
        public String a;
        public String b;
        public Long c;
        public Long d;
        public Boolean e;
        public tk5.d.a f;
        public tk5.d.f g;
        public tk5.d.e h;
        public tk5.d.c i;
        public uk5<tk5.d.AbstractC0042d> j;
        public Integer k;

        public b() {
        }

        @Override // tk5.d.b
        public tk5.d a() {
            String strN = this.a == null ? " generator" : "";
            if (this.b == null) {
                strN = jo.n(strN, " identifier");
            }
            if (this.c == null) {
                strN = jo.n(strN, " startedAt");
            }
            if (this.e == null) {
                strN = jo.n(strN, " crashed");
            }
            if (this.f == null) {
                strN = jo.n(strN, " app");
            }
            if (this.k == null) {
                strN = jo.n(strN, " generatorType");
            }
            if (strN.isEmpty()) {
                return new dk5(this.a, this.b, this.c.longValue(), this.d, this.e.booleanValue(), this.f, this.g, this.h, this.i, this.j, this.k.intValue(), null);
            }
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }

        public tk5.d.b b(boolean z) {
            this.e = Boolean.valueOf(z);
            return this;
        }

        public b(tk5.d dVar, a aVar) {
            dk5 dk5Var = (dk5) dVar;
            this.a = dk5Var.a;
            this.b = dk5Var.b;
            this.c = Long.valueOf(dk5Var.c);
            this.d = dk5Var.d;
            this.e = Boolean.valueOf(dk5Var.e);
            this.f = dk5Var.f;
            this.g = dk5Var.g;
            this.h = dk5Var.h;
            this.i = dk5Var.i;
            this.j = dk5Var.j;
            this.k = Integer.valueOf(dk5Var.k);
        }
    }

    public dk5(String str, String str2, long j, Long l, boolean z, tk5.d.a aVar, tk5.d.f fVar, tk5.d.e eVar, tk5.d.c cVar, uk5 uk5Var, int i, a aVar2) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = l;
        this.e = z;
        this.f = aVar;
        this.g = fVar;
        this.h = eVar;
        this.i = cVar;
        this.j = uk5Var;
        this.k = i;
    }

    @Override // tk5.d
    public tk5.d.a a() {
        return this.f;
    }

    @Override // tk5.d
    public tk5.d.c b() {
        return this.i;
    }

    @Override // tk5.d
    public Long c() {
        return this.d;
    }

    @Override // tk5.d
    public uk5<tk5.d.AbstractC0042d> d() {
        return this.j;
    }

    @Override // tk5.d
    public String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        Long l;
        tk5.d.f fVar;
        tk5.d.e eVar;
        tk5.d.c cVar;
        uk5<tk5.d.AbstractC0042d> uk5Var;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tk5.d)) {
            return false;
        }
        tk5.d dVar = (tk5.d) obj;
        return this.a.equals(dVar.e()) && this.b.equals(dVar.g()) && this.c == dVar.i() && ((l = this.d) != null ? l.equals(dVar.c()) : dVar.c() == null) && this.e == dVar.k() && this.f.equals(dVar.a()) && ((fVar = this.g) != null ? fVar.equals(dVar.j()) : dVar.j() == null) && ((eVar = this.h) != null ? eVar.equals(dVar.h()) : dVar.h() == null) && ((cVar = this.i) != null ? cVar.equals(dVar.b()) : dVar.b() == null) && ((uk5Var = this.j) != null ? uk5Var.equals(dVar.d()) : dVar.d() == null) && this.k == dVar.f();
    }

    @Override // tk5.d
    public int f() {
        return this.k;
    }

    @Override // tk5.d
    public String g() {
        return this.b;
    }

    @Override // tk5.d
    public tk5.d.e h() {
        return this.h;
    }

    public int hashCode() {
        int iHashCode = (((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003;
        long j = this.c;
        int i = (iHashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        Long l = this.d;
        int iHashCode2 = (((((i ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (this.e ? 1231 : 1237)) * 1000003) ^ this.f.hashCode()) * 1000003;
        tk5.d.f fVar = this.g;
        int iHashCode3 = (iHashCode2 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        tk5.d.e eVar = this.h;
        int iHashCode4 = (iHashCode3 ^ (eVar == null ? 0 : eVar.hashCode())) * 1000003;
        tk5.d.c cVar = this.i;
        int iHashCode5 = (iHashCode4 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        uk5<tk5.d.AbstractC0042d> uk5Var = this.j;
        return ((iHashCode5 ^ (uk5Var != null ? uk5Var.hashCode() : 0)) * 1000003) ^ this.k;
    }

    @Override // tk5.d
    public long i() {
        return this.c;
    }

    @Override // tk5.d
    public tk5.d.f j() {
        return this.g;
    }

    @Override // tk5.d
    public boolean k() {
        return this.e;
    }

    @Override // tk5.d
    public tk5.d.b l() {
        return new b(this, null);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Session{generator=");
        sbZ.append(this.a);
        sbZ.append(", identifier=");
        sbZ.append(this.b);
        sbZ.append(", startedAt=");
        sbZ.append(this.c);
        sbZ.append(", endedAt=");
        sbZ.append(this.d);
        sbZ.append(", crashed=");
        sbZ.append(this.e);
        sbZ.append(", app=");
        sbZ.append(this.f);
        sbZ.append(", user=");
        sbZ.append(this.g);
        sbZ.append(", os=");
        sbZ.append(this.h);
        sbZ.append(", device=");
        sbZ.append(this.i);
        sbZ.append(", events=");
        sbZ.append(this.j);
        sbZ.append(", generatorType=");
        return jo.q(sbZ, this.k, StringSubstitutor.DEFAULT_VAR_END);
    }
}
