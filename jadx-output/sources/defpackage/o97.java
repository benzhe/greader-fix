package defpackage;

import defpackage.e57;
import defpackage.h57;
import defpackage.i47;
import defpackage.z57;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class o97 extends e57 {
    public static final xs7 q = new xs7();
    public final j47<?, ?> g;
    public final String h;
    public final a97 i;
    public String j;
    public Object k;
    public volatile int l;
    public final b m;
    public final a n;
    public final v27 o;
    public boolean p;

    public class a implements e57.b {
        public a() {
        }

        public void a(i47 i47Var, byte[] bArr) {
            cb7 cb7Var = eb7.a;
            Objects.requireNonNull(cb7Var);
            String string = "/" + o97.this.g.b;
            if (bArr != null) {
                o97.this.p = true;
                StringBuilder sbB = jo.B(string, "?");
                sbB.append(de5.a.c(bArr));
                string = sbB.toString();
            }
            try {
                synchronized (o97.this.m.B) {
                    b.l(o97.this.m, i47Var, string);
                }
                Objects.requireNonNull(cb7Var);
            } catch (Throwable th) {
                Objects.requireNonNull(eb7.a);
                throw th;
            }
        }
    }

    public class b extends x67 {
        public final int A;
        public final Object B;
        public List<na7> C;
        public xs7 D;
        public boolean E;
        public boolean F;
        public boolean G;
        public int H;
        public int I;
        public final k97 J;
        public final w97 K;
        public final p97 L;
        public boolean M;
        public final fb7 N;

        public b(int i, a97 a97Var, Object obj, k97 k97Var, w97 w97Var, p97 p97Var, int i2, String str) {
            super(i, a97Var, o97.this.a);
            this.D = new xs7();
            this.E = false;
            this.F = false;
            this.G = false;
            this.M = true;
            c50.A(obj, "lock");
            this.B = obj;
            this.J = k97Var;
            this.K = w97Var;
            this.L = p97Var;
            this.H = i2;
            this.I = i2;
            this.A = i2;
            Objects.requireNonNull(eb7.a);
            this.N = cb7.a;
        }

        public static void l(b bVar, i47 i47Var, String str) {
            boolean z;
            o97 o97Var = o97.this;
            String str2 = o97Var.j;
            String str3 = o97Var.h;
            boolean z2 = o97Var.p;
            boolean z3 = bVar.L.z == null;
            na7 na7Var = l97.a;
            c50.A(i47Var, "headers");
            c50.A(str, "defaultPath");
            c50.A(str2, "authority");
            i47Var.b(u67.g);
            i47Var.b(u67.h);
            i47.f<String> fVar = u67.i;
            i47Var.b(fVar);
            ArrayList arrayList = new ArrayList(i47Var.b + 7);
            if (z3) {
                arrayList.add(l97.b);
            } else {
                arrayList.add(l97.a);
            }
            if (z2) {
                arrayList.add(l97.d);
            } else {
                arrayList.add(l97.c);
            }
            arrayList.add(new na7(na7.h, str2));
            arrayList.add(new na7(na7.f, str));
            arrayList.add(new na7(fVar.b, str3));
            arrayList.add(l97.e);
            arrayList.add(l97.f);
            Logger logger = e97.a;
            Charset charset = z37.a;
            int i = i47Var.b * 2;
            byte[][] bArr = new byte[i][];
            Object[] objArr = i47Var.a;
            if (objArr instanceof byte[][]) {
                System.arraycopy(objArr, 0, bArr, 0, i);
            } else {
                for (int i2 = 0; i2 < i47Var.b; i2++) {
                    int i3 = i2 * 2;
                    bArr[i3] = i47Var.g(i2);
                    bArr[i3 + 1] = i47Var.k(i2);
                }
            }
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5 += 2) {
                byte[] bArr2 = bArr[i5];
                byte[] bArr3 = bArr[i5 + 1];
                if (e97.a(bArr2, e97.b)) {
                    bArr[i4] = bArr2;
                    bArr[i4 + 1] = z37.b.c(bArr3).getBytes(kd5.a);
                } else {
                    for (byte b : bArr3) {
                        if (b < 32 || b > 126) {
                            z = false;
                            break;
                        }
                    }
                    z = true;
                    if (z) {
                        bArr[i4] = bArr2;
                        bArr[i4 + 1] = bArr3;
                    } else {
                        String str4 = new String(bArr2, kd5.a);
                        Logger logger2 = e97.a;
                        StringBuilder sbC = jo.C("Metadata key=", str4, ", value=");
                        sbC.append(Arrays.toString(bArr3));
                        sbC.append(" contains invalid ASCII characters");
                        logger2.warning(sbC.toString());
                    }
                }
                i4 += 2;
            }
            if (i4 != i) {
                bArr = (byte[][]) Arrays.copyOfRange(bArr, 0, i4);
            }
            for (int i6 = 0; i6 < bArr.length; i6 += 2) {
                bt7 bt7VarC = bt7.C(bArr[i6]);
                String strO = bt7VarC.O();
                if ((strO.startsWith(":") || u67.g.b.equalsIgnoreCase(strO) || u67.i.b.equalsIgnoreCase(strO)) ? false : true) {
                    arrayList.add(new na7(bt7VarC, bt7.C(bArr[i6 + 1])));
                }
            }
            bVar.C = arrayList;
            p97 p97Var = bVar.L;
            o97 o97Var2 = o97.this;
            x47 x47Var = p97Var.t;
            if (x47Var != null) {
                o97Var2.m.i(x47Var, z57.a.REFUSED, true, new i47());
            } else if (p97Var.m.size() < p97Var.B) {
                p97Var.x(o97Var2);
            } else {
                p97Var.C.add(o97Var2);
                p97Var.u(o97Var2);
            }
        }

        public static void m(b bVar, xs7 xs7Var, boolean z, boolean z2) {
            if (bVar.G) {
                return;
            }
            if (!bVar.M) {
                c50.G(o97.this.l != -1, "streamId should be set");
                bVar.K.a(z, o97.this.l, xs7Var, z2);
            } else {
                bVar.D.write(xs7Var, (int) xs7Var.f);
                bVar.E |= z;
                bVar.F |= z2;
            }
        }

        @Override // j57.i
        public void b(Runnable runnable) {
            synchronized (this.B) {
                runnable.run();
            }
        }

        @Override // e57.c, d87.b
        public void d(boolean z) {
            z57.a aVar = z57.a.PROCESSED;
            if (this.r) {
                this.L.k(o97.this.l, null, aVar, false, null, null);
            } else {
                p97 p97Var = this.L;
                int i = o97.this.l;
                synchronized (p97Var.j) {
                    o97 o97VarRemove = p97Var.m.remove(Integer.valueOf(i));
                    if (o97VarRemove != null) {
                        p97Var.h.I0(i, ka7.CANCEL);
                        if (!p97Var.w()) {
                            p97Var.y();
                            p97Var.r(o97VarRemove);
                        }
                    }
                }
            }
            c50.G(this.s, "status should have been reported on deframer closed");
            this.p = true;
            if (this.t && z) {
                i(x47.m.h("Encountered end-of-stream mid-frame"), aVar, true, new i47());
            }
            Runnable runnable = this.q;
            if (runnable != null) {
                runnable.run();
                this.q = null;
            }
        }

        @Override // d87.b
        public void g(int i) {
            int i2 = this.I - i;
            this.I = i2;
            float f = i2;
            int i3 = this.A;
            if (f <= i3 * 0.5f) {
                int i4 = i3 - i2;
                this.H += i4;
                this.I = i2 + i4;
                this.J.windowUpdate(o97.this.l, i4);
            }
        }

        @Override // d87.b
        public void h(Throwable th) throws EOFException {
            n(x47.e(th), true, new i47());
        }

        public final void n(x47 x47Var, boolean z, i47 i47Var) throws EOFException {
            z57.a aVar = z57.a.PROCESSED;
            if (this.G) {
                return;
            }
            this.G = true;
            if (this.M) {
                p97 p97Var = this.L;
                o97 o97Var = o97.this;
                p97Var.C.remove(o97Var);
                p97Var.r(o97Var);
                this.C = null;
                xs7 xs7Var = this.D;
                xs7Var.skip(xs7Var.f);
                this.M = false;
                if (i47Var == null) {
                    i47Var = new i47();
                }
                i(x47Var, aVar, true, i47Var);
                return;
            }
            p97 p97Var2 = this.L;
            int i = o97.this.l;
            synchronized (p97Var2.j) {
                o97 o97VarRemove = p97Var2.m.remove(Integer.valueOf(i));
                if (o97VarRemove != null) {
                    p97Var2.h.I0(i, ka7.CANCEL);
                    if (x47Var != null) {
                        b bVar = o97VarRemove.m;
                        if (i47Var == null) {
                            i47Var = new i47();
                        }
                        bVar.i(x47Var, aVar, z, i47Var);
                    }
                    if (!p97Var2.w()) {
                        p97Var2.y();
                        p97Var2.r(o97VarRemove);
                    }
                }
            }
        }

        public void o(xs7 xs7Var, boolean z) throws Throwable {
            z57.a aVar = z57.a.PROCESSED;
            int i = this.H - ((int) xs7Var.f);
            this.H = i;
            if (i < 0) {
                this.J.I0(o97.this.l, ka7.FLOW_CONTROL_ERROR);
                this.L.k(o97.this.l, x47.m.h("Received data size exceeded our receiving window size"), aVar, false, null, null);
                return;
            }
            s97 s97Var = new s97(xs7Var);
            x47 x47Var = this.u;
            boolean z2 = false;
            if (x47Var != null) {
                StringBuilder sbZ = jo.z("DATA-----------------------------\n");
                Charset charset = this.w;
                int i2 = o87.a;
                c50.A(charset, "charset");
                c50.A(s97Var, "buffer");
                int iD = s97Var.d();
                byte[] bArr = new byte[iD];
                s97Var.W(bArr, 0, iD);
                sbZ.append(new String(bArr, charset));
                this.u = x47Var.b(sbZ.toString());
                s97Var.close();
                if (this.u.b.length() > 1000 || z) {
                    n(this.u, false, this.v);
                    return;
                }
                return;
            }
            if (!this.x) {
                n(x47.m.h("headers not received before payload"), false, new i47());
                return;
            }
            c50.A(s97Var, "frame");
            try {
                if (this.s) {
                    e57.f.log(Level.INFO, "Received data on closed stream");
                    s97Var.close();
                } else {
                    try {
                        this.e.k(s97Var);
                    } catch (Throwable th) {
                        try {
                            h(th);
                        } catch (Throwable th2) {
                            th = th2;
                            if (z2) {
                                s97Var.close();
                            }
                            throw th;
                        }
                    }
                }
                if (z) {
                    this.u = x47.m.h("Received unexpected EOS on DATA frame from server.");
                    i47 i47Var = new i47();
                    this.v = i47Var;
                    i(this.u, aVar, false, i47Var);
                }
            } catch (Throwable th3) {
                th = th3;
                z2 = true;
            }
        }

        /* JADX WARN: Finally extract failed */
        public void p(List<na7> list, boolean z) throws EOFException {
            x47 x47VarH;
            StringBuilder sb;
            x47 x47VarB;
            x47 x47VarB2;
            if (z) {
                byte[][] bArrA = x97.a(list);
                Charset charset = z37.a;
                i47 i47Var = new i47(bArrA);
                c50.A(i47Var, "trailers");
                if (this.u == null && !this.x) {
                    x47 x47VarK = k(i47Var);
                    this.u = x47VarK;
                    if (x47VarK != null) {
                        this.v = i47Var;
                    }
                }
                x47 x47Var = this.u;
                if (x47Var != null) {
                    x47 x47VarB3 = x47Var.b("trailers: " + i47Var);
                    this.u = x47VarB3;
                    n(x47VarB3, false, this.v);
                    return;
                }
                i47.f<x47> fVar = a47.b;
                x47 x47Var2 = (x47) i47Var.d(fVar);
                if (x47Var2 != null) {
                    x47VarB2 = x47Var2.h((String) i47Var.d(a47.a));
                } else if (this.x) {
                    x47VarB2 = x47.h.h("missing GRPC status in response");
                } else {
                    Integer num = (Integer) i47Var.d(x67.z);
                    x47VarB2 = (num != null ? u67.f(num.intValue()) : x47.m.h("missing HTTP status code")).b("missing GRPC status, inferred error from HTTP status code");
                }
                i47Var.b(x67.z);
                i47Var.b(fVar);
                i47Var.b(a47.a);
                c50.A(x47VarB2, "status");
                c50.A(i47Var, "trailers");
                if (this.s) {
                    e57.f.log(Level.INFO, "Received trailers on closed stream:\n {1}\n {2}", new Object[]{x47VarB2, i47Var});
                    return;
                }
                for (a57 a57Var : this.k.a) {
                    Objects.requireNonNull((e37) a57Var);
                }
                i(x47VarB2, z57.a.PROCESSED, false, i47Var);
                return;
            }
            byte[][] bArrA2 = x97.a(list);
            Charset charset2 = z37.a;
            i47 i47Var2 = new i47(bArrA2);
            c50.A(i47Var2, "headers");
            x47 x47Var3 = this.u;
            if (x47Var3 != null) {
                this.u = x47Var3.b("headers: " + i47Var2);
                return;
            }
            try {
                if (this.x) {
                    x47VarH = x47.m.h("Received headers twice");
                    this.u = x47VarH;
                    sb = new StringBuilder();
                } else {
                    i47.f<Integer> fVar2 = x67.z;
                    Integer num2 = (Integer) i47Var2.d(fVar2);
                    if (num2 == null || num2.intValue() < 100 || num2.intValue() >= 200) {
                        this.x = true;
                        x47 x47VarK2 = k(i47Var2);
                        this.u = x47VarK2;
                        if (x47VarK2 != null) {
                            x47VarB = x47VarK2.b("headers: " + i47Var2);
                            this.u = x47VarB;
                            this.v = i47Var2;
                            this.w = x67.j(i47Var2);
                        }
                        i47Var2.b(fVar2);
                        i47Var2.b(a47.b);
                        i47Var2.b(a47.a);
                        f(i47Var2);
                        x47VarH = this.u;
                        if (x47VarH == null) {
                            return;
                        } else {
                            sb = new StringBuilder();
                        }
                    } else {
                        x47VarH = this.u;
                        if (x47VarH == null) {
                            return;
                        } else {
                            sb = new StringBuilder();
                        }
                    }
                }
                sb.append("headers: ");
                sb.append(i47Var2);
                x47VarB = x47VarH.b(sb.toString());
                this.u = x47VarB;
                this.v = i47Var2;
                this.w = x67.j(i47Var2);
            } catch (Throwable th) {
                x47 x47Var4 = this.u;
                if (x47Var4 != null) {
                    this.u = x47Var4.b("headers: " + i47Var2);
                    this.v = i47Var2;
                    this.w = x67.j(i47Var2);
                }
                throw th;
            }
        }
    }

    public o97(j47<?, ?> j47Var, i47 i47Var, k97 k97Var, p97 p97Var, w97 w97Var, Object obj, int i, int i2, String str, String str2, a97 a97Var, g97 g97Var, x27 x27Var, boolean z) {
        super(new v97(), a97Var, g97Var, i47Var, x27Var, z && j47Var.h);
        this.l = -1;
        this.n = new a();
        this.p = false;
        c50.A(a97Var, "statsTraceCtx");
        this.i = a97Var;
        this.g = j47Var;
        this.j = str;
        this.h = str2;
        this.o = p97Var.s;
        this.m = new b(i, a97Var, obj, k97Var, w97Var, p97Var, i2, j47Var.b);
    }

    @Override // defpackage.y57
    public void g(String str) {
        c50.A(str, "authority");
        this.j = str;
    }

    @Override // defpackage.e57
    public e57.b o() {
        return this.n;
    }

    @Override // defpackage.e57
    public e57.c p() {
        return this.m;
    }

    public h57.a q() {
        return this.m;
    }
}
