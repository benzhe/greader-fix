package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public final class pt7 implements at7 {
    public final xs7 e;
    public boolean f;
    public final vt7 g;

    public pt7(vt7 vt7Var) {
        im7.e(vt7Var, "source");
        this.g = vt7Var;
        this.e = new xs7();
    }

    @Override // defpackage.at7
    public void D0(long j) throws EOFException {
        if (!l(j)) {
            throw new EOFException();
        }
    }

    @Override // defpackage.at7
    public byte[] G() throws IOException {
        this.e.b0(this.g);
        return this.e.G();
    }

    @Override // defpackage.at7
    public long G0() throws EOFException {
        byte bF;
        D0(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!l(i2)) {
                break;
            }
            bF = this.e.f(i);
            if ((bF < ((byte) 48) || bF > ((byte) 57)) && ((bF < ((byte) 97) || bF > ((byte) 102)) && (bF < ((byte) 65) || bF > ((byte) 70)))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            n56.v(16);
            n56.v(16);
            String string = Integer.toString(bF, 16);
            im7.d(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(string);
            throw new NumberFormatException(sb.toString());
        }
        return this.e.G0();
    }

    @Override // defpackage.at7
    public boolean J() {
        if (!this.f) {
            return this.e.J() && this.g.read(this.e, (long) RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // defpackage.at7
    public int J0(lt7 lt7Var) throws EOFException {
        im7.e(lt7Var, "options");
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            int iC = xt7.c(this.e, lt7Var, true);
            if (iC != -2) {
                if (iC != -1) {
                    this.e.skip(lt7Var.e[iC].t());
                    return iC;
                }
            } else if (this.g.read(this.e, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                break;
            }
        }
        return -1;
    }

    @Override // defpackage.at7
    public void N(xs7 xs7Var, long j) throws IOException {
        im7.e(xs7Var, "sink");
        try {
            if (!l(j)) {
                throw new EOFException();
            }
            this.e.N(xs7Var, j);
        } catch (EOFException e) {
            xs7Var.b0(this.e);
            throw e;
        }
    }

    @Override // defpackage.at7
    public long P() throws EOFException {
        byte bF;
        D0(1L);
        long j = 0;
        while (true) {
            long j2 = j + 1;
            if (!l(j2)) {
                break;
            }
            bF = this.e.f(j);
            if ((bF < ((byte) 48) || bF > ((byte) 57)) && !(j == 0 && bF == ((byte) 45))) {
                break;
            }
            j = j2;
        }
        if (j == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9] or '-' character but was 0x");
            n56.v(16);
            n56.v(16);
            String string = Integer.toString(bF, 16);
            im7.d(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(string);
            throw new NumberFormatException(sb.toString());
        }
        return this.e.P();
    }

    @Override // defpackage.at7
    public String R(long j) throws EOFException {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("limit < 0: ", j).toString());
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        byte b = (byte) 10;
        long jA = a(b, 0L, j2);
        if (jA != -1) {
            return xt7.b(this.e, jA);
        }
        if (j2 < Long.MAX_VALUE && l(j2) && this.e.f(j2 - 1) == ((byte) 13) && l(1 + j2) && this.e.f(j2) == b) {
            return xt7.b(this.e, j2);
        }
        xs7 xs7Var = new xs7();
        xs7 xs7Var2 = this.e;
        xs7Var2.e(xs7Var, 0L, Math.min(32, xs7Var2.f));
        StringBuilder sbZ = jo.z("\\n not found: limit=");
        sbZ.append(Math.min(this.e.f, j));
        sbZ.append(" content=");
        sbZ.append(xs7Var.e0().w());
        sbZ.append("…");
        throw new EOFException(sbZ.toString());
    }

    @Override // defpackage.at7
    public boolean U(long j, bt7 bt7Var) {
        im7.e(bt7Var, "bytes");
        int iT = bt7Var.t();
        im7.e(bt7Var, "bytes");
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j >= 0 && iT >= 0 && bt7Var.t() - 0 >= iT) {
            for (int i = 0; i < iT; i++) {
                long j2 = i + j;
                if (l(1 + j2) && this.e.f(j2) == bt7Var.y(0 + i)) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.at7
    public String V(Charset charset) throws IOException {
        im7.e(charset, "charset");
        this.e.b0(this.g);
        return this.e.V(charset);
    }

    public long a(byte b, long j, long j2) {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        if (!(0 <= j && j2 >= j)) {
            throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
        }
        while (j < j2) {
            long jG = this.e.g(b, j, j2);
            if (jG != -1) {
                return jG;
            }
            xs7 xs7Var = this.e;
            long j3 = xs7Var.f;
            if (j3 >= j2 || this.g.read(xs7Var, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                return -1L;
            }
            j = Math.max(j, j3);
        }
        return -1L;
    }

    public int b() throws EOFException {
        D0(4L);
        int i = this.e.readInt();
        return ((i & Base64.BASELENGTH) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f) {
            return;
        }
        this.f = true;
        this.g.close();
        xs7 xs7Var = this.e;
        xs7Var.skip(xs7Var.f);
    }

    @Override // defpackage.at7
    public bt7 e0() throws IOException {
        this.e.b0(this.g);
        return this.e.e0();
    }

    @Override // defpackage.at7
    public xs7 h() {
        return this.e;
    }

    @Override // defpackage.at7
    public String i0() {
        return R(Long.MAX_VALUE);
    }

    @Override // defpackage.at7
    public InputStream inputStream() {
        return new a();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f;
    }

    @Override // defpackage.at7
    public boolean l(long j) {
        xs7 xs7Var;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
        }
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            xs7Var = this.e;
            if (xs7Var.f >= j) {
                return true;
            }
        } while (this.g.read(xs7Var, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != -1);
        return false;
    }

    @Override // defpackage.at7
    public byte[] l0(long j) throws EOFException {
        if (l(j)) {
            return this.e.l0(j);
        }
        throw new EOFException();
    }

    @Override // defpackage.at7
    public at7 peek() {
        return n56.p(new nt7(this));
    }

    @Override // defpackage.at7
    public xs7 r() {
        return this.e;
    }

    @Override // defpackage.vt7
    public long read(xs7 xs7Var, long j) {
        im7.e(xs7Var, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
        }
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        xs7 xs7Var2 = this.e;
        if (xs7Var2.f == 0 && this.g.read(xs7Var2, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
            return -1L;
        }
        return this.e.read(xs7Var, Math.min(j, this.e.f));
    }

    @Override // defpackage.at7
    public byte readByte() throws EOFException {
        D0(1L);
        return this.e.readByte();
    }

    @Override // defpackage.at7
    public void readFully(byte[] bArr) throws EOFException {
        im7.e(bArr, "sink");
        try {
            D0(bArr.length);
            this.e.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                xs7 xs7Var = this.e;
                long j = xs7Var.f;
                if (j <= 0) {
                    throw e;
                }
                int i2 = xs7Var.read(bArr, i, (int) j);
                if (i2 == -1) {
                    throw new AssertionError();
                }
                i += i2;
            }
        }
    }

    @Override // defpackage.at7
    public int readInt() throws EOFException {
        D0(4L);
        return this.e.readInt();
    }

    @Override // defpackage.at7
    public long readLong() throws EOFException {
        D0(8L);
        return this.e.readLong();
    }

    @Override // defpackage.at7
    public short readShort() throws EOFException {
        D0(2L);
        return this.e.readShort();
    }

    @Override // defpackage.at7
    public bt7 s(long j) throws EOFException {
        if (l(j)) {
            return this.e.s(j);
        }
        throw new EOFException();
    }

    @Override // defpackage.at7
    public void skip(long j) throws EOFException {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j > 0) {
            xs7 xs7Var = this.e;
            if (xs7Var.f == 0 && this.g.read(xs7Var, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.e.f);
            this.e.skip(jMin);
            j -= jMin;
        }
    }

    @Override // defpackage.vt7
    public wt7 timeout() {
        return this.g.timeout();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("buffer(");
        sbZ.append(this.g);
        sbZ.append(')');
        return sbZ.toString();
    }

    @Override // defpackage.at7
    public long w0(tt7 tt7Var) {
        im7.e(tt7Var, "sink");
        long j = 0;
        while (this.g.read(this.e, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != -1) {
            long jC = this.e.c();
            if (jC > 0) {
                j += jC;
                ((xs7) tt7Var).write(this.e, jC);
            }
        }
        xs7 xs7Var = this.e;
        long j2 = xs7Var.f;
        if (j2 <= 0) {
            return j;
        }
        long j3 = j + j2;
        ((xs7) tt7Var).write(xs7Var, j2);
        return j3;
    }

    public static final class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            pt7 pt7Var = pt7.this;
            if (pt7Var.f) {
                throw new IOException("closed");
            }
            return (int) Math.min(pt7Var.e.f, Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            pt7.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            pt7 pt7Var = pt7.this;
            if (pt7Var.f) {
                throw new IOException("closed");
            }
            xs7 xs7Var = pt7Var.e;
            if (xs7Var.f == 0 && pt7Var.g.read(xs7Var, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                return -1;
            }
            return pt7.this.e.readByte() & 255;
        }

        public String toString() {
            return pt7.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            im7.e(bArr, "data");
            if (!pt7.this.f) {
                n56.u(bArr.length, i, i2);
                pt7 pt7Var = pt7.this;
                xs7 xs7Var = pt7Var.e;
                if (xs7Var.f == 0 && pt7Var.g.read(xs7Var, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
                    return -1;
                }
                return pt7.this.e.read(bArr, i, i2);
            }
            throw new IOException("closed");
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        im7.e(byteBuffer, "sink");
        xs7 xs7Var = this.e;
        if (xs7Var.f == 0 && this.g.read(xs7Var, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) == -1) {
            return -1;
        }
        return this.e.read(byteBuffer);
    }
}
