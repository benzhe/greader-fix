package defpackage;

import java.io.EOFException;

/* loaded from: classes2.dex */
public class s97 extends g57 {
    public final xs7 e;

    public s97(xs7 xs7Var) {
        this.e = xs7Var;
    }

    @Override // defpackage.n87
    public n87 A(int i) {
        xs7 xs7Var = new xs7();
        xs7Var.write(this.e, i);
        return new s97(xs7Var);
    }

    @Override // defpackage.n87
    public void W(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int i3 = this.e.read(bArr, i, i2);
            if (i3 == -1) {
                throw new IndexOutOfBoundsException(jo.h("EOF trying to read ", i2, " bytes"));
            }
            i2 -= i3;
            i += i3;
        }
    }

    @Override // defpackage.g57, defpackage.n87, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws EOFException {
        xs7 xs7Var = this.e;
        xs7Var.skip(xs7Var.f);
    }

    @Override // defpackage.n87
    public int d() {
        return (int) this.e.f;
    }

    @Override // defpackage.n87
    public int readUnsignedByte() {
        return this.e.readByte() & 255;
    }
}
