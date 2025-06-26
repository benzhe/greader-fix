package defpackage;

import defpackage.o97;
import java.io.IOException;
import okhttp3.internal.http2.Settings;

/* loaded from: classes2.dex */
public class w97 {
    public final p97 a;
    public final ma7 b;
    public int c;
    public final a d;

    public w97(p97 p97Var, ma7 ma7Var) {
        c50.A(p97Var, "transport");
        this.a = p97Var;
        c50.A(ma7Var, "frameWriter");
        this.b = ma7Var;
        this.c = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.d = new a(0, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
    }

    public void a(boolean z, int i, xs7 xs7Var, boolean z2) {
        c50.A(xs7Var, "source");
        o97 o97VarP = this.a.p(i);
        if (o97VarP == null) {
            return;
        }
        a aVarD = d(o97VarP);
        int iC = aVarD.c();
        boolean z3 = aVarD.a.f > 0;
        int i2 = (int) xs7Var.f;
        if (z3 || iC < i2) {
            if (!z3 && iC > 0) {
                aVarD.d(xs7Var, iC, false);
            }
            aVarD.a.write(xs7Var, (int) xs7Var.f);
            aVarD.f = z | aVarD.f;
        } else {
            aVarD.d(xs7Var, i2, z);
        }
        if (z2) {
            b();
        }
    }

    public void b() {
        try {
            this.b.flush();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean c(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(jo.g("Invalid initial window size: ", i));
        }
        int i2 = i - this.c;
        this.c = i;
        for (o97 o97Var : this.a.l()) {
            a aVar = (a) o97Var.k;
            if (aVar == null) {
                o97Var.k = new a(this, o97Var, this.c);
            } else {
                aVar.a(i2);
            }
        }
        return i2 > 0;
    }

    public final a d(o97 o97Var) {
        a aVar = (a) o97Var.k;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(this, o97Var, this.c);
        o97Var.k = aVar2;
        return aVar2;
    }

    public int e(o97 o97Var, int i) {
        if (o97Var == null) {
            int iA = this.d.a(i);
            f();
            return iA;
        }
        a aVarD = d(o97Var);
        int iA2 = aVarD.a(i);
        int iC = aVarD.c();
        int iMin = Math.min(iC, aVarD.c());
        int i2 = 0;
        int i3 = 0;
        while (true) {
            xs7 xs7Var = aVarD.a;
            long j = xs7Var.f;
            if (!(j > 0) || iMin <= 0) {
                break;
            }
            if (iMin >= j) {
                int i4 = (int) j;
                i3 += i4;
                aVarD.d(xs7Var, i4, aVarD.f);
            } else {
                i3 += iMin;
                aVarD.d(xs7Var, iMin, false);
            }
            i2++;
            iMin = Math.min(iC - i3, aVarD.c());
        }
        if (i2 > 0) {
            b();
        }
        return iA2;
    }

    public void f() {
        o97[] o97VarArrL = this.a.l();
        int i = this.d.c;
        int length = o97VarArrL.length;
        while (true) {
            if (length <= 0 || i <= 0) {
                break;
            }
            int iCeil = (int) Math.ceil(i / length);
            for (int i2 = 0; i2 < length && i > 0; i2++) {
                o97 o97Var = o97VarArrL[i2];
                a aVarD = d(o97Var);
                int iMin = Math.min(i, Math.min(aVarD.b(), iCeil));
                if (iMin > 0) {
                    aVarD.d += iMin;
                    i -= iMin;
                }
                if (aVarD.b() > 0) {
                    o97VarArrL[i] = o97Var;
                    i++;
                }
            }
            length = i;
        }
        int i3 = 0;
        for (o97 o97Var2 : this.a.l()) {
            a aVarD2 = d(o97Var2);
            int i4 = aVarD2.d;
            int iMin2 = Math.min(i4, aVarD2.c());
            int i5 = 0;
            while (true) {
                xs7 xs7Var = aVarD2.a;
                long j = xs7Var.f;
                if (!(j > 0) || iMin2 <= 0) {
                    break;
                }
                if (iMin2 >= j) {
                    int i6 = (int) j;
                    i5 += i6;
                    aVarD2.d(xs7Var, i6, aVarD2.f);
                } else {
                    i5 += iMin2;
                    aVarD2.d(xs7Var, iMin2, false);
                }
                i3++;
                iMin2 = Math.min(i4 - i5, aVarD2.c());
            }
            aVarD2.d = 0;
        }
        if ((i3 > 0 ? 1 : 0) != 0) {
            b();
        }
    }

    public final class a {
        public final xs7 a;
        public final int b;
        public int c;
        public int d;
        public o97 e;
        public boolean f;

        public a(w97 w97Var, o97 o97Var, int i) {
            int i2 = o97Var.l;
            w97.this = w97Var;
            this.f = false;
            this.b = i2;
            this.c = i;
            this.a = new xs7();
            this.e = o97Var;
        }

        public int a(int i) {
            if (i <= 0 || Integer.MAX_VALUE - i >= this.c) {
                int i2 = this.c + i;
                this.c = i2;
                return i2;
            }
            StringBuilder sbZ = jo.z("Window size overflow for stream: ");
            sbZ.append(this.b);
            throw new IllegalArgumentException(sbZ.toString());
        }

        public int b() {
            return Math.max(0, Math.min(this.c, (int) this.a.f)) - this.d;
        }

        public int c() {
            return Math.min(this.c, w97.this.d.c);
        }

        public void d(xs7 xs7Var, int i, boolean z) {
            do {
                int iMin = Math.min(i, w97.this.b.maxDataLength());
                int i2 = -iMin;
                w97.this.d.a(i2);
                a(i2);
                try {
                    boolean z2 = false;
                    w97.this.b.data(xs7Var.f == ((long) iMin) && z, this.b, xs7Var, iMin);
                    o97.b bVar = this.e.m;
                    synchronized (bVar.f) {
                        c50.G(bVar.i, "onStreamAllocated was not called, but it seems the stream is active");
                        int i3 = bVar.h;
                        boolean z3 = i3 < 32768;
                        int i4 = i3 - iMin;
                        bVar.h = i4;
                        boolean z4 = i4 < 32768;
                        if (!z3 && z4) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        bVar.c();
                    }
                    i -= iMin;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } while (i > 0);
        }

        public a(int i, int i2) {
            this.f = false;
            this.b = i;
            this.c = i2;
            this.a = new xs7();
        }
    }
}
