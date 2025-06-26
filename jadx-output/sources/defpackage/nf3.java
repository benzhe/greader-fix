package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class nf3 implements xe3 {
    public int b;
    public int c;
    public int[] d;
    public boolean e;
    public int[] f;
    public ByteBuffer g;
    public ByteBuffer h;
    public boolean i;

    public nf3() {
        ByteBuffer byteBuffer = xe3.a;
        this.g = byteBuffer;
        this.h = byteBuffer;
        this.b = -1;
        this.c = -1;
    }

    @Override // defpackage.xe3
    public final int a() {
        int[] iArr = this.f;
        return iArr == null ? this.b : iArr.length;
    }

    @Override // defpackage.xe3
    public final int b() {
        return 2;
    }

    @Override // defpackage.xe3
    public final void c(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int length = (((iLimit - iPosition) / (this.b * 2)) * this.f.length) << 1;
        if (this.g.capacity() < length) {
            this.g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.g.clear();
        }
        while (iPosition < iLimit) {
            for (int i : this.f) {
                this.g.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.b << 1;
        }
        byteBuffer.position(iLimit);
        this.g.flip();
        this.h = this.g;
    }

    @Override // defpackage.xe3
    public final boolean d(int i, int i2, int i3) throws we3 {
        boolean z = !Arrays.equals(this.d, this.f);
        int[] iArr = this.d;
        this.f = iArr;
        if (iArr == null) {
            this.e = false;
            return z;
        }
        if (i3 != 2) {
            throw new we3(i, i2, i3);
        }
        if (!z && this.c == i && this.b == i2) {
            return false;
        }
        this.c = i;
        this.b = i2;
        this.e = i2 != iArr.length;
        int i4 = 0;
        while (true) {
            int[] iArr2 = this.f;
            if (i4 >= iArr2.length) {
                return true;
            }
            int i5 = iArr2[i4];
            if (i5 >= i2) {
                throw new we3(i, i2, i3);
            }
            this.e = (i5 != i4) | this.e;
            i4++;
        }
    }

    @Override // defpackage.xe3
    public final ByteBuffer e() {
        ByteBuffer byteBuffer = this.h;
        this.h = xe3.a;
        return byteBuffer;
    }

    @Override // defpackage.xe3
    public final void f() {
        this.i = true;
    }

    @Override // defpackage.xe3
    public final void flush() {
        this.h = xe3.a;
        this.i = false;
    }

    @Override // defpackage.xe3
    public final void g() {
        flush();
        this.g = xe3.a;
        this.b = -1;
        this.c = -1;
        this.f = null;
        this.e = false;
    }

    @Override // defpackage.xe3
    public final boolean isActive() {
        return this.e;
    }

    @Override // defpackage.xe3
    public final boolean j() {
        return this.i && this.h == xe3.a;
    }
}
