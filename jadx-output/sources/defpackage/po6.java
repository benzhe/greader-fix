package defpackage;

/* loaded from: classes2.dex */
public final class po6 {
    public final String a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final u48 e;
    public final u48 f;
    public final long g;
    public final long h;

    public po6(String str, String str2, boolean z, boolean z2, u48 u48Var, u48 u48Var2, long j, long j2) {
        im7.e(str, "code");
        im7.e(str2, "productId");
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = z2;
        this.e = u48Var;
        this.f = u48Var2;
        this.g = j;
        this.h = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof po6)) {
            return false;
        }
        po6 po6Var = (po6) obj;
        return im7.a(this.a, po6Var.a) && im7.a(this.b, po6Var.b) && this.c == po6Var.c && this.d == po6Var.d && im7.a(this.e, po6Var.e) && im7.a(this.f, po6Var.f) && this.g == po6Var.g && this.h == po6Var.h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z = this.c;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (iHashCode2 + i) * 31;
        boolean z2 = this.d;
        int i3 = (i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31;
        u48 u48Var = this.e;
        int iHashCode3 = (i3 + (u48Var != null ? u48Var.hashCode() : 0)) * 31;
        u48 u48Var2 = this.f;
        int iHashCode4 = (iHashCode3 + (u48Var2 != null ? u48Var2.hashCode() : 0)) * 31;
        long j = this.g;
        int i4 = (iHashCode4 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.h;
        return i4 + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        StringBuilder sbZ = jo.z("PromoCode(code=");
        sbZ.append(this.a);
        sbZ.append(", productId=");
        sbZ.append(this.b);
        sbZ.append(", redeemed=");
        sbZ.append(this.c);
        sbZ.append(", reusable=");
        sbZ.append(this.d);
        sbZ.append(", startTime=");
        sbZ.append(this.e);
        sbZ.append(", endTime=");
        sbZ.append(this.f);
        sbZ.append(", count=");
        sbZ.append(this.g);
        sbZ.append(", limit=");
        return jo.r(sbZ, this.h, ")");
    }
}
