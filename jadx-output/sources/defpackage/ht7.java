package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class ht7 implements vt7 {
    public int e;
    public boolean f;
    public final at7 g;
    public final Inflater h;

    public ht7(at7 at7Var, Inflater inflater) {
        im7.e(at7Var, "source");
        im7.e(inflater, "inflater");
        this.g = at7Var;
        this.h = inflater;
    }

    public final long a(xs7 xs7Var, long j) throws DataFormatException, IOException {
        im7.e(xs7Var, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
        }
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j == 0) {
            return 0L;
        }
        try {
            qt7 qt7VarE = xs7Var.E(1);
            int iMin = (int) Math.min(j, 8192 - qt7VarE.c);
            if (this.h.needsInput() && !this.g.J()) {
                qt7 qt7Var = this.g.h().e;
                im7.c(qt7Var);
                int i = qt7Var.c;
                int i2 = qt7Var.b;
                int i3 = i - i2;
                this.e = i3;
                this.h.setInput(qt7Var.a, i2, i3);
            }
            int iInflate = this.h.inflate(qt7VarE.a, qt7VarE.c, iMin);
            int i4 = this.e;
            if (i4 != 0) {
                int remaining = i4 - this.h.getRemaining();
                this.e -= remaining;
                this.g.skip(remaining);
            }
            if (iInflate > 0) {
                qt7VarE.c += iInflate;
                long j2 = iInflate;
                xs7Var.f += j2;
                return j2;
            }
            if (qt7VarE.b == qt7VarE.c) {
                xs7Var.e = qt7VarE.a();
                rt7.a(qt7VarE);
            }
            return 0L;
        } catch (DataFormatException e) {
            throw new IOException(e);
        }
    }

    @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f) {
            return;
        }
        this.h.end();
        this.f = true;
        this.g.close();
    }

    @Override // defpackage.vt7
    public long read(xs7 xs7Var, long j) throws DataFormatException, IOException {
        im7.e(xs7Var, "sink");
        do {
            long jA = a(xs7Var, j);
            if (jA > 0) {
                return jA;
            }
            if (this.h.finished() || this.h.needsDictionary()) {
                return -1L;
            }
        } while (!this.g.J());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // defpackage.vt7
    public wt7 timeout() {
        return this.g.timeout();
    }

    public ht7(vt7 vt7Var, Inflater inflater) {
        im7.e(vt7Var, "source");
        im7.e(inflater, "inflater");
        at7 at7VarP = n56.p(vt7Var);
        im7.e(at7VarP, "source");
        im7.e(inflater, "inflater");
        this.g = at7VarP;
        this.h = inflater;
    }
}
