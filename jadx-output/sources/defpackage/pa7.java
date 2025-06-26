package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.a67;
import defpackage.la7;
import defpackage.oa7;
import defpackage.p97;
import defpackage.q97;
import defpackage.u67;
import defpackage.x47;
import defpackage.z57;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.http2.Http2;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public final class pa7 implements sa7 {
    public static final Logger a = Logger.getLogger(b.class.getName());
    public static final bt7 b = bt7.l("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    public static final class a implements vt7 {
        public final at7 e;
        public int f;
        public byte g;
        public int h;
        public int i;
        public short j;

        public a(at7 at7Var) {
            this.e = at7Var;
        }

        @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // defpackage.vt7
        public long read(xs7 xs7Var, long j) throws IOException {
            int i;
            int i2;
            do {
                int i3 = this.i;
                if (i3 != 0) {
                    long j2 = this.e.read(xs7Var, Math.min(j, i3));
                    if (j2 == -1) {
                        return -1L;
                    }
                    this.i -= (int) j2;
                    return j2;
                }
                this.e.skip(this.j);
                this.j = (short) 0;
                if ((this.g & 4) != 0) {
                    return -1L;
                }
                i = this.h;
                int iB = pa7.b(this.e);
                this.i = iB;
                this.f = iB;
                byte b = (byte) (this.e.readByte() & 255);
                this.g = (byte) (this.e.readByte() & 255);
                Logger logger = pa7.a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(b.a(true, this.h, this.f, b, this.g));
                }
                i2 = this.e.readInt() & Integer.MAX_VALUE;
                this.h = i2;
                if (b != 9) {
                    pa7.a("%s != TYPE_CONTINUATION", new Object[]{Byte.valueOf(b)});
                    throw null;
                }
            } while (i2 == i);
            pa7.a("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }

        @Override // defpackage.vt7
        public wt7 timeout() {
            return this.e.timeout();
        }
    }

    public static final class b {
        public static final String[] a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        public static final String[] b = new String[64];
        public static final String[] c = new String[RecyclerView.a0.FLAG_TMP_DETACHED];

        static {
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = c;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = String.format("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
                i2++;
            }
            String[] strArr2 = b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            int[] iArr = {1};
            strArr2[8] = "PADDED";
            for (int i3 = 0; i3 < 1; i3++) {
                int i4 = iArr[i3];
                String[] strArr3 = b;
                strArr3[i4 | 8] = jo.s(new StringBuilder(), strArr3[i4], "|PADDED");
            }
            String[] strArr4 = b;
            strArr4[4] = "END_HEADERS";
            strArr4[32] = "PRIORITY";
            strArr4[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = iArr2[i5];
                for (int i7 = 0; i7 < 1; i7++) {
                    int i8 = iArr[i7];
                    String[] strArr5 = b;
                    int i9 = i8 | i6;
                    strArr5[i9] = strArr5[i8] + '|' + strArr5[i6];
                    StringBuilder sb = new StringBuilder();
                    sb.append(strArr5[i8]);
                    sb.append('|');
                    strArr5[i9 | 8] = jo.s(sb, strArr5[i6], "|PADDED");
                }
            }
            while (true) {
                String[] strArr6 = b;
                if (i >= strArr6.length) {
                    return;
                }
                if (strArr6[i] == null) {
                    strArr6[i] = c[i];
                }
                i++;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x0067  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.String a(boolean r9, int r10, int r11, byte r12, byte r13) {
            /*
                java.lang.String[] r0 = pa7.b.a
                int r1 = r0.length
                r2 = 0
                r3 = 1
                if (r12 >= r1) goto La
                r0 = r0[r12]
                goto L18
            La:
                java.lang.Object[] r0 = new java.lang.Object[r3]
                java.lang.Byte r1 = java.lang.Byte.valueOf(r12)
                r0[r2] = r1
                java.lang.String r1 = "0x%02x"
                java.lang.String r0 = java.lang.String.format(r1, r0)
            L18:
                r1 = 5
                r4 = 3
                r5 = 2
                r6 = 4
                if (r13 != 0) goto L21
                java.lang.String r12 = ""
                goto L6b
            L21:
                if (r12 == r5) goto L67
                if (r12 == r4) goto L67
                if (r12 == r6) goto L5d
                r7 = 6
                if (r12 == r7) goto L5d
                r7 = 7
                if (r12 == r7) goto L67
                r7 = 8
                if (r12 == r7) goto L67
                java.lang.String[] r7 = pa7.b.b
                int r8 = r7.length
                if (r13 >= r8) goto L39
                r7 = r7[r13]
                goto L3d
            L39:
                java.lang.String[] r7 = pa7.b.c
                r7 = r7[r13]
            L3d:
                if (r12 != r1) goto L4c
                r8 = r13 & 4
                if (r8 == 0) goto L4c
                java.lang.String r12 = "HEADERS"
                java.lang.String r13 = "PUSH_PROMISE"
                java.lang.String r12 = r7.replace(r12, r13)
                goto L6b
            L4c:
                if (r12 != 0) goto L5b
                r12 = r13 & 32
                if (r12 == 0) goto L5b
                java.lang.String r12 = "PRIORITY"
                java.lang.String r13 = "COMPRESSED"
                java.lang.String r12 = r7.replace(r12, r13)
                goto L6b
            L5b:
                r12 = r7
                goto L6b
            L5d:
                if (r13 != r3) goto L62
                java.lang.String r12 = "ACK"
                goto L6b
            L62:
                java.lang.String[] r12 = pa7.b.c
                r12 = r12[r13]
                goto L6b
            L67:
                java.lang.String[] r12 = pa7.b.c
                r12 = r12[r13]
            L6b:
                java.lang.Object[] r13 = new java.lang.Object[r1]
                if (r9 == 0) goto L72
                java.lang.String r9 = "<<"
                goto L74
            L72:
                java.lang.String r9 = ">>"
            L74:
                r13[r2] = r9
                java.lang.Integer r9 = java.lang.Integer.valueOf(r10)
                r13[r3] = r9
                java.lang.Integer r9 = java.lang.Integer.valueOf(r11)
                r13[r5] = r9
                r13[r4] = r0
                r13[r6] = r12
                java.lang.String r9 = "%s 0x%08x %5d %-13s %s"
                java.lang.String r9 = java.lang.String.format(r9, r13)
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: pa7.b.a(boolean, int, int, byte, byte):java.lang.String");
        }
    }

    public static final class c implements la7 {
        public final at7 e;
        public final a f;
        public final oa7.a g;

        public c(at7 at7Var, int i, boolean z) {
            this.e = at7Var;
            a aVar = new a(at7Var);
            this.f = aVar;
            this.g = new oa7.a(i, aVar);
        }

        public boolean a(la7.a aVar) throws IOException {
            x47 x47VarH;
            ka7 ka7Var = ka7.INVALID_STREAM;
            ka7 ka7Var2 = ka7.PROTOCOL_ERROR;
            q97.a aVar2 = q97.a.INBOUND;
            boolean z = false;
            try {
                this.e.D0(9L);
                int iB = pa7.b(this.e);
                x47 x47VarH2 = null;
                if (iB < 0 || iB > 16384) {
                    pa7.a("FRAME_SIZE_ERROR: %s", new Object[]{Integer.valueOf(iB)});
                    throw null;
                }
                byte b = (byte) (this.e.readByte() & 255);
                byte b2 = (byte) (this.e.readByte() & 255);
                int i = this.e.readInt() & Integer.MAX_VALUE;
                Logger logger = pa7.a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(b.a(true, i, iB, b, b2));
                }
                switch (b) {
                    case 0:
                        boolean z2 = (b2 & 1) != 0;
                        if ((b2 & 32) != 0) {
                            pa7.a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                            throw null;
                        }
                        short s = (b2 & 8) != 0 ? (short) (this.e.readByte() & 255) : (short) 0;
                        int iC = pa7.c(iB, b2, s);
                        at7 at7Var = this.e;
                        p97.e eVar = (p97.e) aVar;
                        eVar.e.b(aVar2, i, at7Var.r(), iC, z2);
                        o97 o97VarP = p97.this.p(i);
                        if (o97VarP != null) {
                            long j = iC;
                            at7Var.D0(j);
                            xs7 xs7Var = new xs7();
                            xs7Var.write(at7Var.r(), j);
                            fb7 fb7Var = o97VarP.m.N;
                            Objects.requireNonNull(eb7.a);
                            synchronized (p97.this.j) {
                                o97VarP.m.o(xs7Var, z2);
                            }
                        } else {
                            if (!p97.this.q(i)) {
                                p97.i(p97.this, ka7Var2, "Received data for unknown stream: " + i);
                                this.e.skip(s);
                                return true;
                            }
                            synchronized (p97.this.j) {
                                p97.this.h.I0(i, ka7Var);
                            }
                            at7Var.skip(iC);
                        }
                        p97 p97Var = p97.this;
                        int i2 = p97Var.q + iC;
                        p97Var.q = i2;
                        if (i2 >= p97Var.f * 0.5f) {
                            synchronized (p97Var.j) {
                                p97.this.h.windowUpdate(0, r3.q);
                            }
                            p97.this.q = 0;
                        }
                        this.e.skip(s);
                        return true;
                    case 1:
                        if (i == 0) {
                            pa7.a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                            throw null;
                        }
                        boolean z3 = (b2 & 1) != 0;
                        short s2 = (b2 & 8) != 0 ? (short) (this.e.readByte() & 255) : (short) 0;
                        if ((b2 & 32) != 0) {
                            this.e.readInt();
                            this.e.readByte();
                            iB -= 5;
                        }
                        List<na7> listB = b(pa7.c(iB, b2, s2), s2, b2, i);
                        p97.e eVar2 = (p97.e) aVar;
                        q97 q97Var = eVar2.e;
                        if (q97Var.a()) {
                            q97Var.a.log(q97Var.b, aVar2 + " HEADERS: streamId=" + i + " headers=" + listB + " endStream=" + z3);
                        }
                        if (p97.this.L != Integer.MAX_VALUE) {
                            int i3 = 0;
                            long jT = 0;
                            while (true) {
                                ArrayList arrayList = (ArrayList) listB;
                                if (i3 < arrayList.size()) {
                                    na7 na7Var = (na7) arrayList.get(i3);
                                    jT += na7Var.b.t() + na7Var.a.t() + 32;
                                    i3++;
                                } else {
                                    int iMin = (int) Math.min(jT, 2147483647L);
                                    int i4 = p97.this.L;
                                    if (iMin > i4) {
                                        x47 x47Var = x47.l;
                                        Object[] objArr = new Object[3];
                                        objArr[0] = z3 ? "trailer" : "header";
                                        objArr[1] = Integer.valueOf(i4);
                                        objArr[2] = Integer.valueOf(iMin);
                                        x47VarH2 = x47Var.h(String.format("Response %s metadata larger than %d: %d", objArr));
                                    }
                                }
                            }
                        }
                        synchronized (p97.this.j) {
                            o97 o97Var = p97.this.m.get(Integer.valueOf(i));
                            if (o97Var == null) {
                                if (p97.this.q(i)) {
                                    p97.this.h.I0(i, ka7Var);
                                } else {
                                    z = true;
                                }
                            } else if (x47VarH2 == null) {
                                fb7 fb7Var2 = o97Var.m.N;
                                Objects.requireNonNull(eb7.a);
                                o97Var.m.p(listB, z3);
                            } else {
                                if (!z3) {
                                    p97.this.h.I0(i, ka7.CANCEL);
                                }
                                o97Var.m.i(x47VarH2, z57.a.PROCESSED, false, new i47());
                            }
                        }
                        if (!z) {
                            return true;
                        }
                        p97.i(p97.this, ka7Var2, "Received header for unknown stream: " + i);
                        return true;
                    case 2:
                        if (iB != 5) {
                            pa7.a("TYPE_PRIORITY length: %d != 5", new Object[]{Integer.valueOf(iB)});
                            throw null;
                        }
                        if (i == 0) {
                            pa7.a("TYPE_PRIORITY streamId == 0", new Object[0]);
                            throw null;
                        }
                        this.e.readInt();
                        this.e.readByte();
                        return true;
                    case 3:
                        f(aVar, iB, i);
                        return true;
                    case 4:
                        g(aVar, iB, b2, i);
                        return true;
                    case 5:
                        e(aVar, iB, b2, i);
                        return true;
                    case 6:
                        c(aVar, iB, b2, i);
                        return true;
                    case 7:
                        if (iB < 8) {
                            pa7.a("TYPE_GOAWAY length < 8: %s", new Object[]{Integer.valueOf(iB)});
                            throw null;
                        }
                        if (i != 0) {
                            pa7.a("TYPE_GOAWAY streamId != 0", new Object[0]);
                            throw null;
                        }
                        int i5 = this.e.readInt();
                        int i6 = this.e.readInt();
                        int i7 = iB - 8;
                        ka7 ka7VarI = ka7.i(i6);
                        if (ka7VarI == null) {
                            pa7.a("TYPE_GOAWAY unexpected error code: %d", new Object[]{Integer.valueOf(i6)});
                            throw null;
                        }
                        bt7 bt7VarS = bt7.h;
                        if (i7 > 0) {
                            bt7VarS = this.e.s(i7);
                        }
                        p97.e eVar3 = (p97.e) aVar;
                        eVar3.e.c(aVar2, i5, ka7VarI, bt7VarS);
                        if (ka7VarI == ka7.ENHANCE_YOUR_CALM) {
                            String strO = bt7VarS.O();
                            p97.R.log(Level.WARNING, String.format("%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s", eVar3, strO));
                            if ("too_many_pings".equals(strO)) {
                                p97.this.K.run();
                            }
                        }
                        long j2 = ka7VarI.e;
                        u67.g[] gVarArr = u67.g.u;
                        u67.g gVar = (j2 >= ((long) gVarArr.length) || j2 < 0) ? null : gVarArr[(int) j2];
                        if (gVar == null) {
                            x47VarH = x47.d(u67.g.i.f.a.e).h("Unrecognized HTTP/2 error code: " + j2);
                        } else {
                            x47VarH = gVar.f;
                        }
                        x47 x47VarB = x47VarH.b("Received Goaway");
                        if (bt7VarS.t() > 0) {
                            x47VarB = x47VarB.b(bt7VarS.O());
                        }
                        p97 p97Var2 = p97.this;
                        Map<ka7, x47> map = p97.Q;
                        p97Var2.v(i5, null, x47VarB);
                        return true;
                    case 8:
                        i(aVar, iB, i);
                        return true;
                    default:
                        this.e.skip(iB);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        public final List<na7> b(int i, short s, byte b, int i2) throws IOException {
            a aVar = this.f;
            aVar.i = i;
            aVar.f = i;
            aVar.j = s;
            aVar.g = b;
            aVar.h = i2;
            oa7.a aVar2 = this.g;
            while (!aVar2.b.J()) {
                int i3 = aVar2.b.readByte() & 255;
                if (i3 == 128) {
                    throw new IOException("index == 0");
                }
                if ((i3 & 128) == 128) {
                    int iG = aVar2.g(i3, 127) - 1;
                    if (!(iG >= 0 && iG <= oa7.b.length + (-1))) {
                        int iB = aVar2.b(iG - oa7.b.length);
                        if (iB >= 0) {
                            na7[] na7VarArr = aVar2.e;
                            if (iB <= na7VarArr.length - 1) {
                                aVar2.a.add(na7VarArr[iB]);
                            }
                        }
                        StringBuilder sbZ = jo.z("Header index too large ");
                        sbZ.append(iG + 1);
                        throw new IOException(sbZ.toString());
                    }
                    aVar2.a.add(oa7.b[iG]);
                } else if (i3 == 64) {
                    bt7 bt7VarF = aVar2.f();
                    oa7.a(bt7VarF);
                    aVar2.e(-1, new na7(bt7VarF, aVar2.f()));
                } else if ((i3 & 64) == 64) {
                    aVar2.e(-1, new na7(aVar2.d(aVar2.g(i3, 63) - 1), aVar2.f()));
                } else if ((i3 & 32) == 32) {
                    int iG2 = aVar2.g(i3, 31);
                    aVar2.d = iG2;
                    if (iG2 < 0 || iG2 > aVar2.c) {
                        StringBuilder sbZ2 = jo.z("Invalid dynamic table size update ");
                        sbZ2.append(aVar2.d);
                        throw new IOException(sbZ2.toString());
                    }
                    int i4 = aVar2.h;
                    if (iG2 < i4) {
                        if (iG2 == 0) {
                            aVar2.a();
                        } else {
                            aVar2.c(i4 - iG2);
                        }
                    }
                } else if (i3 == 16 || i3 == 0) {
                    bt7 bt7VarF2 = aVar2.f();
                    oa7.a(bt7VarF2);
                    aVar2.a.add(new na7(bt7VarF2, aVar2.f()));
                } else {
                    aVar2.a.add(new na7(aVar2.d(aVar2.g(i3, 15) - 1), aVar2.f()));
                }
            }
            oa7.a aVar3 = this.g;
            Objects.requireNonNull(aVar3);
            ArrayList arrayList = new ArrayList(aVar3.a);
            aVar3.a.clear();
            return arrayList;
        }

        public final void c(la7.a aVar, int i, byte b, int i2) throws IOException {
            a77 a77Var;
            if (i != 8) {
                pa7.a("TYPE_PING length != 8: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            }
            if (i2 != 0) {
                pa7.a("TYPE_PING streamId != 0", new Object[0]);
                throw null;
            }
            int i3 = this.e.readInt();
            int i4 = this.e.readInt();
            boolean z = (b & 1) != 0;
            p97.e eVar = (p97.e) aVar;
            long j = (i3 << 32) | (i4 & 4294967295L);
            eVar.e.d(q97.a.INBOUND, j);
            if (!z) {
                synchronized (p97.this.j) {
                    p97.this.h.ping(true, i3, i4);
                }
                return;
            }
            synchronized (p97.this.j) {
                p97 p97Var = p97.this;
                a77Var = p97Var.v;
                if (a77Var != null) {
                    long j2 = a77Var.a;
                    if (j2 == j) {
                        p97Var.v = null;
                    } else {
                        p97.R.log(Level.WARNING, String.format("Received unexpected ping ack. Expecting %d, got %d", Long.valueOf(j2), Long.valueOf(j)));
                    }
                } else {
                    p97.R.warning("Received unexpected ping ack. No ping outstanding");
                }
                a77Var = null;
            }
            if (a77Var != null) {
                synchronized (a77Var) {
                    if (!a77Var.d) {
                        a77Var.d = true;
                        long jA = a77Var.b.a(TimeUnit.NANOSECONDS);
                        a77Var.f = jA;
                        Map<a67.a, Executor> map = a77Var.c;
                        a77Var.c = null;
                        for (Map.Entry<a67.a, Executor> entry : map.entrySet()) {
                            a77.a(entry.getValue(), new y67(entry.getKey(), jA));
                        }
                    }
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.e.close();
        }

        public final void e(la7.a aVar, int i, byte b, int i2) throws IOException {
            if (i2 == 0) {
                pa7.a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
                throw null;
            }
            short s = (b & 8) != 0 ? (short) (this.e.readByte() & 255) : (short) 0;
            int i3 = this.e.readInt() & Integer.MAX_VALUE;
            List<na7> listB = b(pa7.c(i - 4, b, s), s, b, i2);
            p97.e eVar = (p97.e) aVar;
            q97 q97Var = eVar.e;
            q97.a aVar2 = q97.a.INBOUND;
            if (q97Var.a()) {
                q97Var.a.log(q97Var.b, aVar2 + " PUSH_PROMISE: streamId=" + i2 + " promisedStreamId=" + i3 + " headers=" + listB);
            }
            synchronized (p97.this.j) {
                p97.this.h.I0(i2, ka7.PROTOCOL_ERROR);
            }
        }

        public final void f(la7.a aVar, int i, int i2) throws IOException {
            if (i != 4) {
                pa7.a("TYPE_RST_STREAM length: %d != 4", new Object[]{Integer.valueOf(i)});
                throw null;
            }
            if (i2 == 0) {
                pa7.a("TYPE_RST_STREAM streamId == 0", new Object[0]);
                throw null;
            }
            int i3 = this.e.readInt();
            ka7 ka7VarI = ka7.i(i3);
            if (ka7VarI == null) {
                pa7.a("TYPE_RST_STREAM unexpected error code: %d", new Object[]{Integer.valueOf(i3)});
                throw null;
            }
            p97.e eVar = (p97.e) aVar;
            eVar.e.e(q97.a.INBOUND, i2, ka7VarI);
            x47 x47VarB = p97.z(ka7VarI).b("Rst Stream");
            x47.b bVar = x47VarB.a;
            boolean z = bVar == x47.b.CANCELLED || bVar == x47.b.DEADLINE_EXCEEDED;
            synchronized (p97.this.j) {
                o97 o97Var = p97.this.m.get(Integer.valueOf(i2));
                if (o97Var != null) {
                    fb7 fb7Var = o97Var.m.N;
                    Objects.requireNonNull(eb7.a);
                    p97.this.k(i2, x47VarB, ka7VarI == ka7.REFUSED_STREAM ? z57.a.REFUSED : z57.a.PROCESSED, z, null, null);
                }
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0040, code lost:
        
            defpackage.pa7.a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new java.lang.Object[]{java.lang.Integer.valueOf(r6)});
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
        
            throw null;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void g(la7.a r8, int r9, byte r10, int r11) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 278
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: pa7.c.g(la7$a, int, byte, int):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void i(la7.a r9, int r10, int r11) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 211
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: pa7.c.i(la7$a, int, int):void");
        }
    }

    public static final class d implements ma7 {
        public final zs7 e;
        public final boolean f;
        public final xs7 g;
        public final oa7.b h;
        public int i;
        public boolean j;

        public d(zs7 zs7Var, boolean z) {
            this.e = zs7Var;
            this.f = z;
            xs7 xs7Var = new xs7();
            this.g = xs7Var;
            this.h = new oa7.b(xs7Var);
            this.i = Http2.INITIAL_MAX_FRAME_SIZE;
        }

        @Override // defpackage.ma7
        public synchronized void B0(boolean z, boolean z2, int i, int i2, List<na7> list) throws IOException {
            try {
                if (z2) {
                    throw new UnsupportedOperationException();
                }
                if (this.j) {
                    throw new IOException("closed");
                }
                b(z, i, list);
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // defpackage.ma7
        public synchronized void H0(int i, ka7 ka7Var, byte[] bArr) throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            if (ka7Var.e == -1) {
                pa7.d("errorCode.httpCode == -1", new Object[0]);
                throw null;
            }
            a(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.e.z(i);
            this.e.z(ka7Var.e);
            if (bArr.length > 0) {
                this.e.o0(bArr);
            }
            this.e.flush();
        }

        @Override // defpackage.ma7
        public synchronized void I0(int i, ka7 ka7Var) throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            if (ka7Var.e == -1) {
                throw new IllegalArgumentException();
            }
            a(i, 4, (byte) 3, (byte) 0);
            this.e.z(ka7Var.e);
            this.e.flush();
        }

        @Override // defpackage.ma7
        public synchronized void X(ra7 ra7Var) throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            int i = this.i;
            if ((ra7Var.a & 32) != 0) {
                i = ra7Var.d[5];
            }
            this.i = i;
            a(0, 0, (byte) 4, (byte) 1);
            this.e.flush();
        }

        public void a(int i, int i2, byte b, byte b2) throws IOException {
            Logger logger = pa7.a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(b.a(false, i, i2, b, b2));
            }
            int i3 = this.i;
            if (i2 > i3) {
                pa7.d("FRAME_SIZE_ERROR length > %d: %d", new Object[]{Integer.valueOf(i3), Integer.valueOf(i2)});
                throw null;
            }
            if ((Integer.MIN_VALUE & i) != 0) {
                pa7.d("reserved bit set: %s", new Object[]{Integer.valueOf(i)});
                throw null;
            }
            zs7 zs7Var = this.e;
            zs7Var.K((i2 >>> 16) & Base64.BASELENGTH);
            zs7Var.K((i2 >>> 8) & Base64.BASELENGTH);
            zs7Var.K(i2 & Base64.BASELENGTH);
            this.e.K(b & 255);
            this.e.K(b2 & 255);
            this.e.z(i & Integer.MAX_VALUE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(boolean r18, int r19, java.util.List<defpackage.na7> r20) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 307
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: pa7.d.b(boolean, int, java.util.List):void");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.j = true;
            this.e.close();
        }

        @Override // defpackage.ma7
        public synchronized void connectionPreface() throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            if (this.f) {
                Logger logger = pa7.a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(String.format(">> CONNECTION %s", pa7.b.w()));
                }
                this.e.o0(pa7.b.N());
                this.e.flush();
            }
        }

        @Override // defpackage.ma7
        public synchronized void data(boolean z, int i, xs7 xs7Var, int i2) throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            a(i, i2, (byte) 0, z ? (byte) 1 : (byte) 0);
            if (i2 > 0) {
                this.e.write(xs7Var, i2);
            }
        }

        @Override // defpackage.ma7
        public synchronized void f0(ra7 ra7Var) throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            int i = 0;
            a(0, Integer.bitCount(ra7Var.a) * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (ra7Var.a(i)) {
                    this.e.v(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.e.z(ra7Var.d[i]);
                }
                i++;
            }
            this.e.flush();
        }

        @Override // defpackage.ma7
        public synchronized void flush() throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            this.e.flush();
        }

        @Override // defpackage.ma7
        public int maxDataLength() {
            return this.i;
        }

        @Override // defpackage.ma7
        public synchronized void ping(boolean z, int i, int i2) throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.e.z(i);
            this.e.z(i2);
            this.e.flush();
        }

        @Override // defpackage.ma7
        public synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.j) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                pa7.d("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[]{Long.valueOf(j)});
                throw null;
            }
            a(i, 4, (byte) 8, (byte) 0);
            this.e.z((int) j);
            this.e.flush();
        }
    }

    public static IOException a(String str, Object[] objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }

    public static int b(at7 at7Var) throws IOException {
        return (at7Var.readByte() & 255) | ((at7Var.readByte() & 255) << 16) | ((at7Var.readByte() & 255) << 8);
    }

    public static int c(int i, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        throw new IOException(String.format("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i)));
    }

    public static IllegalArgumentException d(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public la7 e(at7 at7Var, boolean z) {
        return new c(at7Var, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT, z);
    }
}
