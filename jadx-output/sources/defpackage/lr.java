package defpackage;

import java.util.List;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class lr extends rr {
    public final long a;
    public final long b;
    public final pr c;
    public final Integer d;
    public final String e;
    public final List<qr> f;
    public final ur g;

    public lr(long j, long j2, pr prVar, Integer num, String str, List list, ur urVar, a aVar) {
        this.a = j;
        this.b = j2;
        this.c = prVar;
        this.d = num;
        this.e = str;
        this.f = list;
        this.g = urVar;
    }

    @Override // defpackage.rr
    public pr a() {
        return this.c;
    }

    @Override // defpackage.rr
    public List<qr> b() {
        return this.f;
    }

    @Override // defpackage.rr
    public Integer c() {
        return this.d;
    }

    @Override // defpackage.rr
    public String d() {
        return this.e;
    }

    @Override // defpackage.rr
    public ur e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        pr prVar;
        Integer num;
        String str;
        List<qr> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof rr)) {
            return false;
        }
        rr rrVar = (rr) obj;
        if (this.a == rrVar.f() && this.b == rrVar.g() && ((prVar = this.c) != null ? prVar.equals(rrVar.a()) : rrVar.a() == null) && ((num = this.d) != null ? num.equals(rrVar.c()) : rrVar.c() == null) && ((str = this.e) != null ? str.equals(rrVar.d()) : rrVar.d() == null) && ((list = this.f) != null ? list.equals(rrVar.b()) : rrVar.b() == null)) {
            ur urVar = this.g;
            if (urVar == null) {
                if (rrVar.e() == null) {
                    return true;
                }
            } else if (urVar.equals(rrVar.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.rr
    public long f() {
        return this.a;
    }

    @Override // defpackage.rr
    public long g() {
        return this.b;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        pr prVar = this.c;
        int iHashCode = (i ^ (prVar == null ? 0 : prVar.hashCode())) * 1000003;
        Integer num = this.d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<qr> list = this.f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        ur urVar = this.g;
        return iHashCode4 ^ (urVar != null ? urVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("LogRequest{requestTimeMs=");
        sbZ.append(this.a);
        sbZ.append(", requestUptimeMs=");
        sbZ.append(this.b);
        sbZ.append(", clientInfo=");
        sbZ.append(this.c);
        sbZ.append(", logSource=");
        sbZ.append(this.d);
        sbZ.append(", logSourceName=");
        sbZ.append(this.e);
        sbZ.append(", logEvents=");
        sbZ.append(this.f);
        sbZ.append(", qosTier=");
        sbZ.append(this.g);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
