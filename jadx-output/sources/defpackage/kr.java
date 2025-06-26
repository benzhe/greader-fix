package defpackage;

import defpackage.qr;
import java.util.Arrays;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class kr extends qr {
    public final long a;
    public final Integer b;
    public final long c;
    public final byte[] d;
    public final String e;
    public final long f;
    public final tr g;

    public static final class b extends qr.a {
        public Long a;
        public Integer b;
        public Long c;
        public byte[] d;
        public String e;
        public Long f;
        public tr g;
    }

    public kr(long j, Integer num, long j2, byte[] bArr, String str, long j3, tr trVar, a aVar) {
        this.a = j;
        this.b = num;
        this.c = j2;
        this.d = bArr;
        this.e = str;
        this.f = j3;
        this.g = trVar;
    }

    @Override // defpackage.qr
    public Integer a() {
        return this.b;
    }

    @Override // defpackage.qr
    public long b() {
        return this.a;
    }

    @Override // defpackage.qr
    public long c() {
        return this.c;
    }

    @Override // defpackage.qr
    public tr d() {
        return this.g;
    }

    @Override // defpackage.qr
    public byte[] e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qr)) {
            return false;
        }
        qr qrVar = (qr) obj;
        if (this.a == qrVar.b() && ((num = this.b) != null ? num.equals(qrVar.a()) : qrVar.a() == null) && this.c == qrVar.c()) {
            if (Arrays.equals(this.d, qrVar instanceof kr ? ((kr) qrVar).d : qrVar.e()) && ((str = this.e) != null ? str.equals(qrVar.f()) : qrVar.f() == null) && this.f == qrVar.g()) {
                tr trVar = this.g;
                if (trVar == null) {
                    if (qrVar.d() == null) {
                        return true;
                    }
                } else if (trVar.equals(qrVar.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.qr
    public String f() {
        return this.e;
    }

    @Override // defpackage.qr
    public long g() {
        return this.f;
    }

    public int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode = num == null ? 0 : num.hashCode();
        long j2 = this.c;
        int iHashCode2 = (((((i ^ iHashCode) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.d)) * 1000003;
        String str = this.e;
        int iHashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f;
        int i2 = (((iHashCode2 ^ iHashCode3) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003;
        tr trVar = this.g;
        return i2 ^ (trVar != null ? trVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("LogEvent{eventTimeMs=");
        sbZ.append(this.a);
        sbZ.append(", eventCode=");
        sbZ.append(this.b);
        sbZ.append(", eventUptimeMs=");
        sbZ.append(this.c);
        sbZ.append(", sourceExtension=");
        sbZ.append(Arrays.toString(this.d));
        sbZ.append(", sourceExtensionJsonProto3=");
        sbZ.append(this.e);
        sbZ.append(", timezoneOffsetSeconds=");
        sbZ.append(this.f);
        sbZ.append(", networkConnectionInfo=");
        sbZ.append(this.g);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
