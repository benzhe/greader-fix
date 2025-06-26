package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class uq2 extends sq2 {
    public final String a;
    public final boolean b;
    public final boolean c;

    public uq2(String str, boolean z, boolean z2, wq2 wq2Var) {
        this.a = str;
        this.b = z;
        this.c = z2;
    }

    @Override // defpackage.sq2
    public final String a() {
        return this.a;
    }

    @Override // defpackage.sq2
    public final boolean b() {
        return this.b;
    }

    @Override // defpackage.sq2
    public final boolean c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof sq2) {
            sq2 sq2Var = (sq2) obj;
            if (this.a.equals(sq2Var.a()) && this.b == sq2Var.b() && this.c == sq2Var.c()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ (this.b ? 1231 : 1237)) * 1000003) ^ (this.c ? 1231 : 1237);
    }

    public final String toString() {
        String str = this.a;
        boolean z = this.b;
        boolean z2 = this.c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 99);
        sb.append("AdShield2Options{clientVersion=");
        sb.append(str);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(z);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(z2);
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }
}
