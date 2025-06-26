package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class it7 implements vt7 {
    public final InputStream e;
    public final wt7 f;

    public it7(InputStream inputStream, wt7 wt7Var) {
        im7.e(inputStream, "input");
        im7.e(wt7Var, "timeout");
        this.e = inputStream;
        this.f = wt7Var;
    }

    @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.e.close();
    }

    @Override // defpackage.vt7
    public long read(xs7 xs7Var, long j) throws IOException {
        im7.e(xs7Var, "sink");
        if (j == 0) {
            return 0L;
        }
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
        }
        try {
            this.f.throwIfReached();
            qt7 qt7VarE = xs7Var.E(1);
            int i = this.e.read(qt7VarE.a, qt7VarE.c, (int) Math.min(j, 8192 - qt7VarE.c));
            if (i != -1) {
                qt7VarE.c += i;
                long j2 = i;
                xs7Var.f += j2;
                return j2;
            }
            if (qt7VarE.b != qt7VarE.c) {
                return -1L;
            }
            xs7Var.e = qt7VarE.a();
            rt7.a(qt7VarE);
            return -1L;
        } catch (AssertionError e) {
            if (n56.i1(e)) {
                throw new IOException(e);
            }
            throw e;
        }
    }

    @Override // defpackage.vt7
    public wt7 timeout() {
        return this.f;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("source(");
        sbZ.append(this.e);
        sbZ.append(')');
        return sbZ.toString();
    }
}
