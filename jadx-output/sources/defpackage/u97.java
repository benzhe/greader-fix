package defpackage;

/* loaded from: classes2.dex */
public class u97 implements h97 {
    public final xs7 a;
    public int b;
    public int c;

    public u97(xs7 xs7Var, int i) {
        this.a = xs7Var;
        this.b = i;
    }

    @Override // defpackage.h97
    public int d() {
        return this.c;
    }

    @Override // defpackage.h97
    public void j(byte[] bArr, int i, int i2) {
        this.a.L(bArr, i, i2);
        this.b -= i2;
        this.c += i2;
    }

    @Override // defpackage.h97
    public int k() {
        return this.b;
    }

    @Override // defpackage.h97
    public void l(byte b) {
        this.a.Q(b);
        this.b--;
        this.c++;
    }

    @Override // defpackage.h97
    public void release() {
    }
}
