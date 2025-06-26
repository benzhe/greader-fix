package defpackage;

import android.net.Uri;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pi3 {
    public final Uri a;
    public final ek3 b;
    public final si3 c;
    public final wk3 d;
    public final ng3 e;
    public volatile boolean f;
    public boolean g;
    public long h;
    public long i;
    public final /* synthetic */ mi3 j;

    public pi3(mi3 mi3Var, Uri uri, ek3 ek3Var, si3 si3Var, wk3 wk3Var) {
        this.j = mi3Var;
        Objects.requireNonNull(uri);
        this.a = uri;
        Objects.requireNonNull(ek3Var);
        this.b = ek3Var;
        Objects.requireNonNull(si3Var);
        this.c = si3Var;
        this.d = wk3Var;
        this.e = new ng3();
        this.g = true;
        this.i = -1L;
    }

    public final void a() throws Throwable {
        int iA = 0;
        while (iA == 0 && !this.f) {
            eg3 eg3Var = null;
            try {
                long j = this.e.a;
                ek3 ek3Var = this.b;
                Uri uri = this.a;
                Objects.requireNonNull(this.j);
                long jB = ek3Var.b(new jk3(uri, j, -1L, null));
                this.i = jB;
                if (jB != -1) {
                    this.i = jB + j;
                }
                ek3 ek3Var2 = this.b;
                eg3 eg3Var2 = new eg3(ek3Var2, j, this.i);
                try {
                    ig3 ig3VarA = this.c.a(eg3Var2, ek3Var2.i0());
                    if (this.g) {
                        ig3VarA.f(j, this.h);
                        this.g = false;
                    }
                    while (iA == 0 && !this.f) {
                        wk3 wk3Var = this.d;
                        synchronized (wk3Var) {
                            while (!wk3Var.a) {
                                wk3Var.wait();
                            }
                        }
                        iA = ig3VarA.a(eg3Var2, this.e);
                        long j2 = eg3Var2.c;
                        if (j2 > this.j.l + j) {
                            wk3 wk3Var2 = this.d;
                            synchronized (wk3Var2) {
                                wk3Var2.a = false;
                            }
                            mi3 mi3Var = this.j;
                            mi3Var.r.post(mi3Var.q);
                            j = j2;
                        }
                    }
                    if (iA == 1) {
                        iA = 0;
                    } else {
                        this.e.a = eg3Var2.c;
                    }
                    ek3 ek3Var3 = this.b;
                    int i = el3.a;
                    if (ek3Var3 != null) {
                        try {
                            ek3Var3.close();
                        } catch (IOException unused) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    eg3Var = eg3Var2;
                    if (iA != 1 && eg3Var != null) {
                        this.e.a = eg3Var.c;
                    }
                    ek3 ek3Var4 = this.b;
                    int i2 = el3.a;
                    if (ek3Var4 != null) {
                        try {
                            ek3Var4.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
