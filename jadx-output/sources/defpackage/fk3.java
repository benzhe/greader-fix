package defpackage;

import android.net.Uri;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class fk3 implements ek3 {
    public final byte[] a;
    public Uri b;
    public int c;
    public int d;

    public fk3(byte[] bArr) {
        Objects.requireNonNull(bArr);
        c50.j(bArr.length > 0);
        this.a = bArr;
    }

    @Override // defpackage.ek3
    public final long b(jk3 jk3Var) throws IOException {
        this.b = jk3Var.a;
        long j = jk3Var.d;
        int i = (int) j;
        this.c = i;
        long length = jk3Var.e;
        if (length == -1) {
            length = this.a.length - j;
        }
        int i2 = (int) length;
        this.d = i2;
        if (i2 > 0 && i + i2 <= this.a.length) {
            return i2;
        }
        int i3 = this.c;
        long j2 = jk3Var.e;
        int length2 = this.a.length;
        StringBuilder sb = new StringBuilder(77);
        sb.append("Unsatisfiable range: [");
        sb.append(i3);
        sb.append(", ");
        sb.append(j2);
        sb.append("], length: ");
        sb.append(length2);
        throw new IOException(sb.toString());
    }

    @Override // defpackage.ek3
    public final void close() throws IOException {
        this.b = null;
    }

    @Override // defpackage.ek3
    public final Uri i0() {
        return this.b;
    }

    @Override // defpackage.ek3
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.d;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        System.arraycopy(this.a, this.c, bArr, i, iMin);
        this.c += iMin;
        this.d -= iMin;
        return iMin;
    }
}
