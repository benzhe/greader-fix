package defpackage;

import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zr {
    public final uq a;
    public final byte[] b;

    public zr(uq uqVar, byte[] bArr) {
        Objects.requireNonNull(uqVar, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.a = uqVar;
        this.b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zr)) {
            return false;
        }
        zr zrVar = (zr) obj;
        if (this.a.equals(zrVar.a)) {
            return Arrays.equals(this.b, zrVar.b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("EncodedPayload{encoding=");
        sbZ.append(this.a);
        sbZ.append(", bytes=[...]}");
        return sbZ.toString();
    }
}
