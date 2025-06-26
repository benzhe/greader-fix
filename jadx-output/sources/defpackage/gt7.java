package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class gt7 implements vt7 {
    public byte e;
    public final pt7 f;
    public final Inflater g;
    public final ht7 h;
    public final CRC32 i;

    public gt7(vt7 vt7Var) {
        im7.e(vt7Var, "source");
        pt7 pt7Var = new pt7(vt7Var);
        this.f = pt7Var;
        Inflater inflater = new Inflater(true);
        this.g = inflater;
        this.h = new ht7((at7) pt7Var, inflater);
        this.i = new CRC32();
    }

    public final void a(String str, int i, int i2) throws IOException {
        if (i2 == i) {
            return;
        }
        String str2 = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3));
        im7.d(str2, "java.lang.String.format(this, *args)");
        throw new IOException(str2);
    }

    public final void b(xs7 xs7Var, long j, long j2) {
        qt7 qt7Var = xs7Var.e;
        im7.c(qt7Var);
        while (true) {
            int i = qt7Var.c;
            int i2 = qt7Var.b;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            qt7Var = qt7Var.f;
            im7.c(qt7Var);
        }
        while (j2 > 0) {
            int iMin = (int) Math.min(qt7Var.c - r7, j2);
            this.i.update(qt7Var.a, (int) (qt7Var.b + j), iMin);
            j2 -= iMin;
            qt7Var = qt7Var.f;
            im7.c(qt7Var);
            j = 0;
        }
    }

    @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.h.close();
    }

    @Override // defpackage.vt7
    public long read(xs7 xs7Var, long j) throws DataFormatException, IOException {
        long j2;
        im7.e(xs7Var, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
        }
        if (j == 0) {
            return 0L;
        }
        if (this.e == 0) {
            this.f.D0(10L);
            byte bF = this.f.e.f(3L);
            boolean z = ((bF >> 1) & 1) == 1;
            if (z) {
                b(this.f.e, 0L, 10L);
            }
            a("ID1ID2", 8075, this.f.readShort());
            this.f.skip(8L);
            if (((bF >> 2) & 1) == 1) {
                this.f.D0(2L);
                if (z) {
                    b(this.f.e, 0L, 2L);
                }
                long jM = this.f.e.m();
                this.f.D0(jM);
                if (z) {
                    j2 = jM;
                    b(this.f.e, 0L, jM);
                } else {
                    j2 = jM;
                }
                this.f.skip(j2);
            }
            if (((bF >> 3) & 1) == 1) {
                long jA = this.f.a((byte) 0, 0L, Long.MAX_VALUE);
                if (jA == -1) {
                    throw new EOFException();
                }
                if (z) {
                    b(this.f.e, 0L, jA + 1);
                }
                this.f.skip(jA + 1);
            }
            if (((bF >> 4) & 1) == 1) {
                long jA2 = this.f.a((byte) 0, 0L, Long.MAX_VALUE);
                if (jA2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    b(this.f.e, 0L, jA2 + 1);
                }
                this.f.skip(jA2 + 1);
            }
            if (z) {
                pt7 pt7Var = this.f;
                pt7Var.D0(2L);
                a("FHCRC", pt7Var.e.m(), (short) this.i.getValue());
                this.i.reset();
            }
            this.e = (byte) 1;
        }
        if (this.e == 1) {
            long j3 = xs7Var.f;
            long j4 = this.h.read(xs7Var, j);
            if (j4 != -1) {
                b(xs7Var, j3, j4);
                return j4;
            }
            this.e = (byte) 2;
        }
        if (this.e == 2) {
            a("CRC", this.f.b(), (int) this.i.getValue());
            a("ISIZE", this.f.b(), (int) this.g.getBytesWritten());
            this.e = (byte) 3;
            if (!this.f.J()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // defpackage.vt7
    public wt7 timeout() {
        return this.f.timeout();
    }
}
