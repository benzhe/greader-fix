package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public final class mt7 implements tt7 {
    public final OutputStream e;
    public final wt7 f;

    public mt7(OutputStream outputStream, wt7 wt7Var) {
        im7.e(outputStream, "out");
        im7.e(wt7Var, "timeout");
        this.e = outputStream;
        this.f = wt7Var;
    }

    @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.e.close();
    }

    @Override // defpackage.tt7, java.io.Flushable
    public void flush() throws IOException {
        this.e.flush();
    }

    @Override // defpackage.tt7
    public wt7 timeout() {
        return this.f;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("sink(");
        sbZ.append(this.e);
        sbZ.append(')');
        return sbZ.toString();
    }

    @Override // defpackage.tt7
    public void write(xs7 xs7Var, long j) throws IOException {
        im7.e(xs7Var, "source");
        n56.u(xs7Var.f, 0L, j);
        while (j > 0) {
            this.f.throwIfReached();
            qt7 qt7Var = xs7Var.e;
            im7.c(qt7Var);
            int iMin = (int) Math.min(j, qt7Var.c - qt7Var.b);
            this.e.write(qt7Var.a, qt7Var.b, iMin);
            int i = qt7Var.b + iMin;
            qt7Var.b = i;
            long j2 = iMin;
            j -= j2;
            xs7Var.f -= j2;
            if (i == qt7Var.c) {
                xs7Var.e = qt7Var.a();
                rt7.a(qt7Var);
            }
        }
    }
}
