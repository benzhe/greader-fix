package defpackage;

/* loaded from: classes.dex */
public final class wj4 extends ak4 {
    public final int i;
    public final int j;

    public wj4(byte[] bArr, int i, int i2) {
        super(bArr);
        vj4.r(i, i + i2, bArr.length);
        this.i = i;
        this.j = i2;
    }

    @Override // defpackage.ak4, defpackage.vj4
    public final byte d(int i) {
        int i2 = this.j;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.h[this.i + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(jo.M(22, "Index < 0: ", i));
        }
        throw new ArrayIndexOutOfBoundsException(jo.N(40, "Index > length: ", i, ", ", i2));
    }

    @Override // defpackage.ak4, defpackage.vj4
    public final int h() {
        return this.j;
    }

    @Override // defpackage.ak4, defpackage.vj4
    public final byte p(int i) {
        return this.h[this.i + i];
    }

    @Override // defpackage.ak4
    public final int u() {
        return this.i;
    }
}
