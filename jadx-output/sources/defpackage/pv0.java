package defpackage;

import android.net.Uri;
import java.io.IOException;

/* loaded from: classes.dex */
public final class pv0 implements ek3 {
    public final ek3 a;
    public final long b;
    public final ek3 c;
    public long d;
    public Uri e;

    public pv0(ek3 ek3Var, int i, ek3 ek3Var2) {
        this.a = ek3Var;
        this.b = i;
        this.c = ek3Var2;
    }

    @Override // defpackage.ek3
    public final long b(jk3 jk3Var) throws IOException {
        jk3 jk3Var2;
        this.e = jk3Var.a;
        long j = jk3Var.d;
        long j2 = this.b;
        jk3 jk3Var3 = null;
        if (j >= j2) {
            jk3Var2 = null;
        } else {
            long j3 = jk3Var.e;
            jk3Var2 = new jk3(jk3Var.a, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null);
        }
        long j4 = jk3Var.e;
        if (j4 == -1 || jk3Var.d + j4 > this.b) {
            long jMax = Math.max(this.b, jk3Var.d);
            long j5 = jk3Var.e;
            jk3Var3 = new jk3(jk3Var.a, jMax, j5 != -1 ? Math.min(j5, (jk3Var.d + j5) - this.b) : -1L, null);
        }
        long jB = jk3Var2 != null ? this.a.b(jk3Var2) : 0L;
        long jB2 = jk3Var3 != null ? this.c.b(jk3Var3) : 0L;
        this.d = jk3Var.d;
        if (jB == -1 || jB2 == -1) {
            return -1L;
        }
        return jB + jB2;
    }

    @Override // defpackage.ek3
    public final void close() throws IOException {
        this.a.close();
        this.c.close();
    }

    @Override // defpackage.ek3
    public final Uri i0() {
        return this.e;
    }

    @Override // defpackage.ek3
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.d;
        long j2 = this.b;
        if (j < j2) {
            i3 = this.a.read(bArr, i, (int) Math.min(i2, j2 - j));
            this.d += i3;
        } else {
            i3 = 0;
        }
        if (this.d < this.b) {
            return i3;
        }
        int i4 = this.c.read(bArr, i + i3, i2 - i3);
        int i5 = i3 + i4;
        this.d += i4;
        return i5;
    }
}
