package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;

/* loaded from: classes.dex */
public final class uf3 implements xe3 {
    public sf3 d;
    public ByteBuffer g;
    public ShortBuffer h;
    public ByteBuffer i;
    public long j;
    public long k;
    public boolean l;
    public float e = 1.0f;
    public float f = 1.0f;
    public int b = -1;
    public int c = -1;

    public uf3() {
        ByteBuffer byteBuffer = xe3.a;
        this.g = byteBuffer;
        this.h = byteBuffer.asShortBuffer();
        this.i = byteBuffer;
    }

    @Override // defpackage.xe3
    public final int a() {
        return this.b;
    }

    @Override // defpackage.xe3
    public final int b() {
        return 2;
    }

    @Override // defpackage.xe3
    public final void c(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.j += iRemaining;
            sf3 sf3Var = this.d;
            Objects.requireNonNull(sf3Var);
            int iRemaining2 = shortBufferAsShortBuffer.remaining();
            int i = sf3Var.b;
            int i2 = iRemaining2 / i;
            sf3Var.e(i2);
            shortBufferAsShortBuffer.get(sf3Var.h, sf3Var.q * sf3Var.b, ((i * i2) << 1) / 2);
            sf3Var.q += i2;
            sf3Var.g();
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int i3 = (this.d.r * this.b) << 1;
        if (i3 > 0) {
            if (this.g.capacity() < i3) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i3).order(ByteOrder.nativeOrder());
                this.g = byteBufferOrder;
                this.h = byteBufferOrder.asShortBuffer();
            } else {
                this.g.clear();
                this.h.clear();
            }
            sf3 sf3Var2 = this.d;
            ShortBuffer shortBuffer = this.h;
            Objects.requireNonNull(sf3Var2);
            int iMin = Math.min(shortBuffer.remaining() / sf3Var2.b, sf3Var2.r);
            shortBuffer.put(sf3Var2.j, 0, sf3Var2.b * iMin);
            int i4 = sf3Var2.r - iMin;
            sf3Var2.r = i4;
            short[] sArr = sf3Var2.j;
            int i5 = sf3Var2.b;
            System.arraycopy(sArr, iMin * i5, sArr, 0, i4 * i5);
            this.k += i3;
            this.g.limit(i3);
            this.i = this.g;
        }
    }

    @Override // defpackage.xe3
    public final boolean d(int i, int i2, int i3) throws we3 {
        if (i3 != 2) {
            throw new we3(i, i2, i3);
        }
        if (this.c == i && this.b == i2) {
            return false;
        }
        this.c = i;
        this.b = i2;
        return true;
    }

    @Override // defpackage.xe3
    public final ByteBuffer e() {
        ByteBuffer byteBuffer = this.i;
        this.i = xe3.a;
        return byteBuffer;
    }

    @Override // defpackage.xe3
    public final void f() {
        int i;
        sf3 sf3Var = this.d;
        int i2 = sf3Var.q;
        float f = sf3Var.o;
        float f2 = sf3Var.p;
        int i3 = sf3Var.r + ((int) ((((i2 / (f / f2)) + sf3Var.s) / f2) + 0.5f));
        sf3Var.e((sf3Var.e * 2) + i2);
        int i4 = 0;
        while (true) {
            i = sf3Var.e * 2;
            int i5 = sf3Var.b;
            if (i4 >= i * i5) {
                break;
            }
            sf3Var.h[(i5 * i2) + i4] = 0;
            i4++;
        }
        sf3Var.q = i + sf3Var.q;
        sf3Var.g();
        if (sf3Var.r > i3) {
            sf3Var.r = i3;
        }
        sf3Var.q = 0;
        sf3Var.t = 0;
        sf3Var.s = 0;
        this.l = true;
    }

    @Override // defpackage.xe3
    public final void flush() {
        sf3 sf3Var = new sf3(this.c, this.b);
        this.d = sf3Var;
        sf3Var.o = this.e;
        sf3Var.p = this.f;
        this.i = xe3.a;
        this.j = 0L;
        this.k = 0L;
        this.l = false;
    }

    @Override // defpackage.xe3
    public final void g() {
        this.d = null;
        ByteBuffer byteBuffer = xe3.a;
        this.g = byteBuffer;
        this.h = byteBuffer.asShortBuffer();
        this.i = byteBuffer;
        this.b = -1;
        this.c = -1;
        this.j = 0L;
        this.k = 0L;
        this.l = false;
    }

    @Override // defpackage.xe3
    public final boolean isActive() {
        return Math.abs(this.e - 1.0f) >= 0.01f || Math.abs(this.f - 1.0f) >= 0.01f;
    }

    @Override // defpackage.xe3
    public final boolean j() {
        if (!this.l) {
            return false;
        }
        sf3 sf3Var = this.d;
        return sf3Var == null || sf3Var.r == 0;
    }
}
