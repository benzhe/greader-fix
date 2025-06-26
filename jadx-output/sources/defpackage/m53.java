package defpackage;

/* loaded from: classes.dex */
public final class m53 extends t53 {
    public final int i;
    public final int j;

    public m53(byte[] bArr, int i, int i2) {
        super(bArr);
        k53.K(i, i + i2, bArr.length);
        this.i = i;
        this.j = i2;
    }

    @Override // defpackage.t53, defpackage.k53
    public final byte C(int i) {
        k53.p(i, this.j);
        return this.h[this.i + i];
    }

    @Override // defpackage.t53, defpackage.k53
    public final byte G(int i) {
        return this.h[this.i + i];
    }

    @Override // defpackage.t53
    public final int R() {
        return this.i;
    }

    @Override // defpackage.t53, defpackage.k53
    public final void r(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.h, this.i + i, bArr, i2, i3);
    }

    @Override // defpackage.t53, defpackage.k53
    public final int size() {
        return this.j;
    }
}
