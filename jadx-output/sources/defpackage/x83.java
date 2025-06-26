package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* loaded from: classes.dex */
public final class x83 extends InputStream {
    public u83 e;
    public q53 f;
    public int g;
    public int h;
    public int i;
    public int j;
    public final /* synthetic */ t83 k;

    public x83(t83 t83Var) {
        this.k = t83Var;
        a();
    }

    public final void a() {
        u83 u83Var = new u83(this.k, null);
        this.e = u83Var;
        q53 q53Var = (q53) u83Var.next();
        this.f = q53Var;
        this.g = q53Var.size();
        this.h = 0;
        this.i = 0;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.k.h - (this.i + this.h);
    }

    public final void b() {
        if (this.f != null) {
            int i = this.h;
            int i2 = this.g;
            if (i == i2) {
                this.i += i2;
                this.h = 0;
                if (!this.e.hasNext()) {
                    this.f = null;
                    this.g = 0;
                } else {
                    q53 q53Var = (q53) this.e.next();
                    this.f = q53Var;
                    this.g = q53Var.size();
                }
            }
        }
    }

    public final int c(byte[] bArr, int i, int i2) {
        int i3 = i2;
        while (i3 > 0) {
            b();
            if (this.f == null) {
                break;
            }
            int iMin = Math.min(this.g - this.h, i3);
            if (bArr != null) {
                this.f.n(bArr, this.h, i, iMin);
                i += iMin;
            }
            this.h += iMin;
            i3 -= iMin;
        }
        return i2 - i3;
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.j = this.i + this.h;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        int iC = c(bArr, i, i2);
        if (iC != 0) {
            return iC;
        }
        if (i2 <= 0) {
            if (this.k.h - (this.i + this.h) != 0) {
                return iC;
            }
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        a();
        c(null, 0, this.j);
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (j > 2147483647L) {
            j = 2147483647L;
        }
        return c(null, 0, (int) j);
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        b();
        q53 q53Var = this.f;
        if (q53Var == null) {
            return -1;
        }
        int i = this.h;
        this.h = i + 1;
        return q53Var.C(i) & 255;
    }
}
