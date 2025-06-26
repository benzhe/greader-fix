package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class p20 extends m20 {
    public final byte[] g;

    public p20(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.g = bArr;
    }

    @Override // defpackage.m20
    public final byte[] g0() {
        return this.g;
    }
}
