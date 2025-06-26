package defpackage;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* loaded from: classes2.dex */
public final class ct7 implements tt7 {
    public boolean e;
    public final zs7 f;
    public final Deflater g;

    public ct7(tt7 tt7Var, Deflater deflater) {
        im7.e(tt7Var, "sink");
        im7.e(deflater, "deflater");
        zs7 zs7VarO = n56.o(tt7Var);
        im7.e(zs7VarO, "sink");
        im7.e(deflater, "deflater");
        this.f = zs7VarO;
        this.g = deflater;
    }

    @IgnoreJRERequirement
    public final void a(boolean z) throws IOException {
        qt7 qt7VarE;
        int iDeflate;
        xs7 xs7VarH = this.f.h();
        while (true) {
            qt7VarE = xs7VarH.E(1);
            if (z) {
                Deflater deflater = this.g;
                byte[] bArr = qt7VarE.a;
                int i = qt7VarE.c;
                iDeflate = deflater.deflate(bArr, i, 8192 - i, 2);
            } else {
                Deflater deflater2 = this.g;
                byte[] bArr2 = qt7VarE.a;
                int i2 = qt7VarE.c;
                iDeflate = deflater2.deflate(bArr2, i2, 8192 - i2);
            }
            if (iDeflate > 0) {
                qt7VarE.c += iDeflate;
                xs7VarH.f += iDeflate;
                this.f.O();
            } else if (this.g.needsInput()) {
                break;
            }
        }
        if (qt7VarE.b == qt7VarE.c) {
            xs7VarH.e = qt7VarE.a();
            rt7.a(qt7VarE);
        }
    }

    @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.e) {
            return;
        }
        Throwable th = null;
        try {
            this.g.finish();
            a(false);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.g.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.e = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // defpackage.tt7, java.io.Flushable
    public void flush() throws IOException {
        a(true);
        this.f.flush();
    }

    @Override // defpackage.tt7
    public wt7 timeout() {
        return this.f.timeout();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DeflaterSink(");
        sbZ.append(this.f);
        sbZ.append(')');
        return sbZ.toString();
    }

    @Override // defpackage.tt7
    public void write(xs7 xs7Var, long j) throws IOException {
        im7.e(xs7Var, "source");
        n56.u(xs7Var.f, 0L, j);
        while (j > 0) {
            qt7 qt7Var = xs7Var.e;
            im7.c(qt7Var);
            int iMin = (int) Math.min(j, qt7Var.c - qt7Var.b);
            this.g.setInput(qt7Var.a, qt7Var.b, iMin);
            a(false);
            long j2 = iMin;
            xs7Var.f -= j2;
            int i = qt7Var.b + iMin;
            qt7Var.b = i;
            if (i == qt7Var.c) {
                xs7Var.e = qt7Var.a();
                rt7.a(qt7Var);
            }
            j -= j2;
        }
    }
}
