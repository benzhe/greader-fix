package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class dm {
    public String a;
    public ak b;
    public String c;
    public String d;
    public sj e;
    public sj f;
    public long g;
    public long h;
    public long i;
    public qj j;
    public int k;
    public oj l;
    public long m;
    public long n;
    public long o;
    public long p;

    public static class a {
        public String a;
        public ak b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.b != aVar.b) {
                return false;
            }
            return this.a.equals(aVar.a);
        }

        public int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }
    }

    static {
        vj.e("WorkSpec");
    }

    public dm(String str, String str2) {
        this.b = ak.ENQUEUED;
        sj sjVar = sj.c;
        this.e = sjVar;
        this.f = sjVar;
        this.j = qj.i;
        this.l = oj.EXPONENTIAL;
        this.m = 30000L;
        this.p = -1L;
        this.a = str;
        this.c = str2;
    }

    public long a() {
        long jCurrentTimeMillis;
        long j;
        if (c()) {
            long jScalb = this.l == oj.LINEAR ? this.m * this.k : (long) Math.scalb(this.m, this.k - 1);
            j = this.n;
            jCurrentTimeMillis = Math.min(18000000L, jScalb);
        } else {
            if (d()) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                long j2 = this.n;
                long j3 = j2 == 0 ? jCurrentTimeMillis2 + this.g : j2;
                long j4 = this.i;
                long j5 = this.h;
                if (j4 != j5) {
                    return j3 + j5 + (j2 == 0 ? j4 * (-1) : 0L);
                }
                return j3 + (j2 != 0 ? j5 : 0L);
            }
            jCurrentTimeMillis = this.n;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            j = this.g;
        }
        return jCurrentTimeMillis + j;
    }

    public boolean b() {
        return !qj.i.equals(this.j);
    }

    public boolean c() {
        return this.b == ak.ENQUEUED && this.k > 0;
    }

    public boolean d() {
        return this.h != 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || dm.class != obj.getClass()) {
            return false;
        }
        dm dmVar = (dm) obj;
        if (this.g != dmVar.g || this.h != dmVar.h || this.i != dmVar.i || this.k != dmVar.k || this.m != dmVar.m || this.n != dmVar.n || this.o != dmVar.o || this.p != dmVar.p || !this.a.equals(dmVar.a) || this.b != dmVar.b || !this.c.equals(dmVar.c)) {
            return false;
        }
        String str = this.d;
        if (str == null ? dmVar.d == null : str.equals(dmVar.d)) {
            return this.e.equals(dmVar.e) && this.f.equals(dmVar.f) && this.j.equals(dmVar.j) && this.l == dmVar.l;
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
        String str = this.d;
        int iHashCode2 = (this.f.hashCode() + ((this.e.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        long j = this.g;
        int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.h;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.i;
        int iHashCode3 = (this.l.hashCode() + ((((this.j.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31) + this.k) * 31)) * 31;
        long j4 = this.m;
        int i3 = (iHashCode3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.n;
        int i4 = (i3 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.o;
        int i5 = (i4 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j7 = this.p;
        return i5 + ((int) (j7 ^ (j7 >>> 32)));
    }

    public String toString() {
        return jo.s(jo.z("{WorkSpec: "), this.a, StringSubstitutor.DEFAULT_VAR_END);
    }

    public dm(dm dmVar) {
        this.b = ak.ENQUEUED;
        sj sjVar = sj.c;
        this.e = sjVar;
        this.f = sjVar;
        this.j = qj.i;
        this.l = oj.EXPONENTIAL;
        this.m = 30000L;
        this.p = -1L;
        this.a = dmVar.a;
        this.c = dmVar.c;
        this.b = dmVar.b;
        this.d = dmVar.d;
        this.e = new sj(dmVar.e);
        this.f = new sj(dmVar.f);
        this.g = dmVar.g;
        this.h = dmVar.h;
        this.i = dmVar.i;
        this.j = new qj(dmVar.j);
        this.k = dmVar.k;
        this.l = dmVar.l;
        this.m = dmVar.m;
        this.n = dmVar.n;
        this.o = dmVar.o;
        this.p = dmVar.p;
    }
}
