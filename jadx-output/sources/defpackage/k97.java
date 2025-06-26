package defpackage;

import defpackage.q97;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class k97 implements ma7 {
    public static final Logger h = Logger.getLogger(p97.class.getName());
    public final a e;
    public final ma7 f;
    public final q97 g;

    public interface a {
        void a(Throwable th);
    }

    public k97(a aVar, ma7 ma7Var, q97 q97Var) {
        c50.A(aVar, "transportExceptionHandler");
        this.e = aVar;
        c50.A(ma7Var, "frameWriter");
        this.f = ma7Var;
        c50.A(q97Var, "frameLogger");
        this.g = q97Var;
    }

    @Override // defpackage.ma7
    public void B0(boolean z, boolean z2, int i, int i2, List<na7> list) {
        try {
            this.f.B0(z, z2, i, i2, list);
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // defpackage.ma7
    public void H0(int i, ka7 ka7Var, byte[] bArr) {
        this.g.c(q97.a.OUTBOUND, i, ka7Var, bt7.C(bArr));
        try {
            this.f.H0(i, ka7Var, bArr);
            this.f.flush();
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // defpackage.ma7
    public void I0(int i, ka7 ka7Var) {
        this.g.e(q97.a.OUTBOUND, i, ka7Var);
        try {
            this.f.I0(i, ka7Var);
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // defpackage.ma7
    public void X(ra7 ra7Var) {
        q97 q97Var = this.g;
        q97.a aVar = q97.a.OUTBOUND;
        if (q97Var.a()) {
            q97Var.a.log(q97Var.b, aVar + " SETTINGS: ack=true");
        }
        try {
            this.f.X(ra7Var);
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f.close();
        } catch (IOException e) {
            h.log(e.getClass().equals(IOException.class) ? Level.FINE : Level.INFO, "Failed closing connection", (Throwable) e);
        }
    }

    @Override // defpackage.ma7
    public void connectionPreface() {
        try {
            this.f.connectionPreface();
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // defpackage.ma7
    public void data(boolean z, int i, xs7 xs7Var, int i2) {
        this.g.b(q97.a.OUTBOUND, i, xs7Var, i2, z);
        try {
            this.f.data(z, i, xs7Var, i2);
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // defpackage.ma7
    public void f0(ra7 ra7Var) {
        this.g.f(q97.a.OUTBOUND, ra7Var);
        try {
            this.f.f0(ra7Var);
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // defpackage.ma7
    public void flush() {
        try {
            this.f.flush();
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // defpackage.ma7
    public int maxDataLength() {
        return this.f.maxDataLength();
    }

    @Override // defpackage.ma7
    public void ping(boolean z, int i, int i2) {
        q97.a aVar = q97.a.OUTBOUND;
        if (z) {
            q97 q97Var = this.g;
            long j = (4294967295L & i2) | (i << 32);
            if (q97Var.a()) {
                q97Var.a.log(q97Var.b, aVar + " PING: ack=true bytes=" + j);
            }
        } else {
            this.g.d(aVar, (4294967295L & i2) | (i << 32));
        }
        try {
            this.f.ping(z, i, i2);
        } catch (IOException e) {
            this.e.a(e);
        }
    }

    @Override // defpackage.ma7
    public void windowUpdate(int i, long j) {
        this.g.g(q97.a.OUTBOUND, i, j);
        try {
            this.f.windowUpdate(i, j);
        } catch (IOException e) {
            this.e.a(e);
        }
    }
}
