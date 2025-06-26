package defpackage;

import defpackage.c67;
import java.io.Closeable;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipException;

/* loaded from: classes2.dex */
public class v67 implements Closeable {
    public int i;
    public int j;
    public Inflater k;
    public int n;
    public int o;
    public long p;
    public final c67 e = new c67();
    public final CRC32 f = new CRC32();
    public final b g = new b(null);
    public final byte[] h = new byte[512];
    public c l = c.HEADER;
    public boolean m = false;
    public int q = 0;
    public int r = 0;
    public boolean s = true;

    public class b {
        public b(a aVar) {
        }

        public static void a(b bVar, int i) {
            int i2;
            v67 v67Var = v67.this;
            int i3 = v67Var.j - v67Var.i;
            if (i3 > 0) {
                int iMin = Math.min(i3, i);
                v67 v67Var2 = v67.this;
                v67Var2.f.update(v67Var2.h, v67Var2.i, iMin);
                v67.this.i += iMin;
                i2 = i - iMin;
            } else {
                i2 = i;
            }
            if (i2 > 0) {
                byte[] bArr = new byte[512];
                int i4 = 0;
                while (i4 < i2) {
                    int iMin2 = Math.min(i2 - i4, 512);
                    c67 c67Var = v67.this.e;
                    c67Var.e(new c67.b(c67Var, 0, bArr), iMin2);
                    v67.this.f.update(bArr, 0, iMin2);
                    i4 += iMin2;
                }
            }
            v67.this.q += i;
        }

        public static boolean b(b bVar) {
            do {
                v67 v67Var = v67.this;
                if ((v67Var.j - v67Var.i) + v67Var.e.e <= 0) {
                    return false;
                }
            } while (bVar.d() != 0);
            return true;
        }

        public static int c(b bVar) {
            v67 v67Var = v67.this;
            return (v67Var.j - v67Var.i) + v67Var.e.e;
        }

        public final int d() {
            int unsignedByte;
            v67 v67Var = v67.this;
            int i = v67Var.j;
            int i2 = v67Var.i;
            if (i - i2 > 0) {
                unsignedByte = v67Var.h[i2] & 255;
                v67Var.i = i2 + 1;
            } else {
                unsignedByte = v67Var.e.readUnsignedByte();
            }
            v67.this.f.update(unsignedByte);
            v67.this.q++;
            return unsignedByte;
        }

        public final int e() {
            return d() | (d() << 8);
        }
    }

    public enum c {
        HEADER,
        HEADER_EXTRA_LEN,
        HEADER_EXTRA,
        HEADER_NAME,
        HEADER_COMMENT,
        HEADER_CRC,
        INITIALIZE_INFLATER,
        INFLATING,
        INFLATER_NEEDS_INPUT,
        TRAILER
    }

    public int a(byte[] bArr, int i, int i2) throws ZipException, DataFormatException {
        int i3;
        c cVar = c.TRAILER;
        c cVar2 = c.INFLATING;
        c cVar3 = c.INFLATER_NEEDS_INPUT;
        c cVar4 = c.HEADER_NAME;
        boolean z = true;
        c50.G(!this.m, "GzipInflatingBuffer is closed");
        boolean zB = true;
        int i4 = 0;
        while (zB && (i3 = i2 - i4) > 0) {
            switch (this.l) {
                case HEADER:
                    if (b.c(this.g) < 10) {
                        zB = false;
                    } else {
                        if (this.g.e() != 35615) {
                            throw new ZipException("Not in GZIP format");
                        }
                        if (this.g.d() != 8) {
                            throw new ZipException("Unsupported compression method");
                        }
                        this.n = this.g.d();
                        b.a(this.g, 6);
                        this.l = c.HEADER_EXTRA_LEN;
                    }
                case HEADER_EXTRA_LEN:
                    if ((this.n & 4) != 4) {
                        this.l = cVar4;
                    } else if (b.c(this.g) < 2) {
                        zB = false;
                    } else {
                        this.o = this.g.e();
                        this.l = c.HEADER_EXTRA;
                    }
                case HEADER_EXTRA:
                    int iC = b.c(this.g);
                    int i5 = this.o;
                    if (iC < i5) {
                        zB = false;
                    } else {
                        b.a(this.g, i5);
                        this.l = cVar4;
                    }
                case HEADER_NAME:
                    c cVar5 = c.HEADER_COMMENT;
                    if ((this.n & 8) != 8) {
                        this.l = cVar5;
                    } else if (b.b(this.g)) {
                        this.l = cVar5;
                    } else {
                        zB = false;
                    }
                case HEADER_COMMENT:
                    c cVar6 = c.HEADER_CRC;
                    if ((this.n & 16) != 16) {
                        this.l = cVar6;
                    } else if (b.b(this.g)) {
                        this.l = cVar6;
                    } else {
                        zB = false;
                    }
                case HEADER_CRC:
                    c cVar7 = c.INITIALIZE_INFLATER;
                    if ((this.n & 2) != 2) {
                        this.l = cVar7;
                    } else if (b.c(this.g) < 2) {
                        zB = false;
                    } else {
                        if ((65535 & ((int) this.f.getValue())) != this.g.e()) {
                            throw new ZipException("Corrupt GZIP header");
                        }
                        this.l = cVar7;
                    }
                case INITIALIZE_INFLATER:
                    Inflater inflater = this.k;
                    if (inflater == null) {
                        this.k = new Inflater(true);
                    } else {
                        inflater.reset();
                    }
                    this.f.reset();
                    int i6 = this.j;
                    int i7 = this.i;
                    int i8 = i6 - i7;
                    if (i8 > 0) {
                        this.k.setInput(this.h, i7, i8);
                        this.l = cVar2;
                    } else {
                        this.l = cVar3;
                    }
                case INFLATING:
                    int i9 = i + i4;
                    c50.G(this.k != null, "inflater is null");
                    try {
                        int totalIn = this.k.getTotalIn();
                        int iInflate = this.k.inflate(bArr, i9, i3);
                        int totalIn2 = this.k.getTotalIn() - totalIn;
                        this.q += totalIn2;
                        this.r += totalIn2;
                        this.i += totalIn2;
                        this.f.update(bArr, i9, iInflate);
                        if (this.k.finished()) {
                            this.p = this.k.getBytesWritten() & 4294967295L;
                            this.l = cVar;
                        } else if (this.k.needsInput()) {
                            this.l = cVar3;
                        }
                        i4 += iInflate;
                        zB = this.l == cVar ? b() : true;
                    } catch (DataFormatException e) {
                        StringBuilder sbZ = jo.z("Inflater data format exception: ");
                        sbZ.append(e.getMessage());
                        throw new DataFormatException(sbZ.toString());
                    }
                case INFLATER_NEEDS_INPUT:
                    c50.G(this.k != null, "inflater is null");
                    c50.G(this.i == this.j, "inflaterInput has unconsumed bytes");
                    int iMin = Math.min(this.e.e, 512);
                    if (iMin == 0) {
                        zB = false;
                    } else {
                        this.i = 0;
                        this.j = iMin;
                        this.e.W(this.h, 0, iMin);
                        this.k.setInput(this.h, this.i, iMin);
                        this.l = cVar2;
                    }
                case TRAILER:
                    zB = b();
                default:
                    StringBuilder sbZ2 = jo.z("Invalid state: ");
                    sbZ2.append(this.l);
                    throw new AssertionError(sbZ2.toString());
            }
        }
        if (zB && (this.l != c.HEADER || b.c(this.g) >= 10)) {
            z = false;
        }
        this.s = z;
        return i4;
    }

    public final boolean b() throws ZipException {
        if (this.k != null && b.c(this.g) <= 18) {
            this.k.end();
            this.k = null;
        }
        if (b.c(this.g) < 8) {
            return false;
        }
        long value = this.f.getValue();
        b bVar = this.g;
        if (value == (bVar.e() | (bVar.e() << 16))) {
            long j = this.p;
            b bVar2 = this.g;
            if (j == ((bVar2.e() << 16) | bVar2.e())) {
                this.f.reset();
                this.l = c.HEADER;
                return true;
            }
        }
        throw new ZipException("Corrupt GZIP trailer");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.m) {
            return;
        }
        this.m = true;
        this.e.close();
        Inflater inflater = this.k;
        if (inflater != null) {
            inflater.end();
            this.k = null;
        }
    }
}
