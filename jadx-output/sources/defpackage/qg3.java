package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class qg3 {
    public final byte[] a;

    public qg3(byte[] bArr) {
        this.a = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && qg3.class == obj.getClass() && Arrays.equals(this.a, ((qg3) obj).a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.a) + 31;
    }
}
