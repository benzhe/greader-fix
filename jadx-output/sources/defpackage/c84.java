package defpackage;

/* loaded from: classes.dex */
public final class c84 extends e84 {
    public final int i;

    public c84(byte[] bArr, int i) {
        super(bArr);
        g84.u(0, i, bArr.length);
        this.i = i;
    }

    @Override // defpackage.e84, defpackage.g84
    public final byte d(int i) {
        int i2 = this.i;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.h[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(jo.M(22, "Index < 0: ", i));
        }
        throw new ArrayIndexOutOfBoundsException(jo.N(40, "Index > length: ", i, ", ", i2));
    }

    @Override // defpackage.e84, defpackage.g84
    public final byte h(int i) {
        return this.h[i];
    }

    @Override // defpackage.e84, defpackage.g84
    public final int j() {
        return this.i;
    }

    @Override // defpackage.e84
    public final int v() {
        return 0;
    }
}
