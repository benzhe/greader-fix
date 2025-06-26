package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class ot7 implements zs7 {
    public final xs7 e;
    public boolean f;
    public final tt7 g;

    public ot7(tt7 tt7Var) {
        im7.e(tt7Var, "sink");
        this.g = tt7Var;
        this.e = new xs7();
    }

    @Override // defpackage.zs7
    public zs7 E0(long j) throws IOException {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.E0(j);
        O();
        return this;
    }

    @Override // defpackage.zs7
    public zs7 K(int i) throws IOException {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.Q(i);
        O();
        return this;
    }

    @Override // defpackage.zs7
    public zs7 O() throws IOException {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        long jC = this.e.c();
        if (jC > 0) {
            this.g.write(this.e, jC);
        }
        return this;
    }

    @Override // defpackage.zs7
    public zs7 T(String str) {
        im7.e(str, "string");
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.k0(str);
        O();
        return this;
    }

    @Override // defpackage.zs7
    public long b0(vt7 vt7Var) throws IOException {
        im7.e(vt7Var, "source");
        long j = 0;
        while (true) {
            long j2 = ((it7) vt7Var).read(this.e, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            O();
        }
    }

    @Override // defpackage.zs7
    public zs7 c0(long j) throws IOException {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.c0(j);
        O();
        return this;
    }

    @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f) {
            return;
        }
        Throwable th = null;
        try {
            xs7 xs7Var = this.e;
            long j = xs7Var.f;
            if (j > 0) {
                this.g.write(xs7Var, j);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.g.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // defpackage.zs7, defpackage.tt7, java.io.Flushable
    public void flush() {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        xs7 xs7Var = this.e;
        long j = xs7Var.f;
        if (j > 0) {
            this.g.write(xs7Var, j);
        }
        this.g.flush();
    }

    @Override // defpackage.zs7
    public xs7 h() {
        return this.e;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f;
    }

    @Override // defpackage.zs7
    public zs7 j(byte[] bArr, int i, int i2) throws IOException {
        im7.e(bArr, "source");
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.L(bArr, i, i2);
        O();
        return this;
    }

    @Override // defpackage.zs7
    public zs7 o0(byte[] bArr) throws IOException {
        im7.e(bArr, "source");
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.I(bArr);
        O();
        return this;
    }

    @Override // defpackage.zs7
    public zs7 q0(bt7 bt7Var) throws IOException {
        im7.e(bt7Var, "byteString");
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.F(bt7Var);
        O();
        return this;
    }

    @Override // defpackage.tt7
    public wt7 timeout() {
        return this.g.timeout();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("buffer(");
        sbZ.append(this.g);
        sbZ.append(')');
        return sbZ.toString();
    }

    @Override // defpackage.zs7
    public zs7 u() throws IOException {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        xs7 xs7Var = this.e;
        long j = xs7Var.f;
        if (j > 0) {
            this.g.write(xs7Var, j);
        }
        return this;
    }

    @Override // defpackage.zs7
    public zs7 v(int i) throws IOException {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.h0(i);
        O();
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        im7.e(byteBuffer, "source");
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        int iWrite = this.e.write(byteBuffer);
        O();
        return iWrite;
    }

    @Override // defpackage.zs7
    public zs7 z(int i) throws IOException {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        this.e.a0(i);
        O();
        return this;
    }

    @Override // defpackage.tt7
    public void write(xs7 xs7Var, long j) throws IOException {
        im7.e(xs7Var, "source");
        if (!this.f) {
            this.e.write(xs7Var, j);
            O();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }
}
