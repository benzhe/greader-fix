package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzth;
import com.google.android.gms.internal.ads.zzti;
import defpackage.i00;
import java.io.IOException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class vo3 implements i00.a {
    public final /* synthetic */ zzti a;
    public final /* synthetic */ xs0 b;
    public final /* synthetic */ to3 c;

    public vo3(to3 to3Var, zzti zztiVar, xs0 xs0Var) {
        this.c = to3Var;
        this.a = zztiVar;
        this.b = xs0Var;
    }

    @Override // i00.a
    public final void Z(int i) {
    }

    @Override // i00.a
    public final void l0(Bundle bundle) {
        synchronized (this.c.d) {
            to3 to3Var = this.c;
            if (to3Var.b) {
                return;
            }
            to3Var.b = true;
            final oo3 oo3Var = to3Var.a;
            if (oo3Var == null) {
                return;
            }
            zv2 zv2Var = ms0.a;
            final zzti zztiVar = this.a;
            final xs0 xs0Var = this.b;
            final aw2<?> aw2VarC = zv2Var.C(new Runnable(this, oo3Var, zztiVar, xs0Var) { // from class: yo3
                public final vo3 e;
                public final oo3 f;
                public final zzti g;
                public final xs0 h;

                {
                    this.e = this;
                    this.f = oo3Var;
                    this.g = zztiVar;
                    this.h = xs0Var;
                }

                @Override // java.lang.Runnable
                public final void run() throws IOException {
                    vo3 vo3Var = this.e;
                    oo3 oo3Var2 = this.f;
                    zzti zztiVar2 = this.g;
                    xs0 xs0Var2 = this.h;
                    try {
                        so3 so3VarP = oo3Var2.p();
                        zzth zzthVarD1 = oo3Var2.q() ? so3VarP.D1(zztiVar2) : so3VarP.B5(zztiVar2);
                        if (!zzthVarD1.n()) {
                            xs0Var2.b(new RuntimeException("No entry contents."));
                            to3.a(vo3Var.c);
                            return;
                        }
                        ap3 ap3Var = new ap3(vo3Var, zzthVarD1.C());
                        int i = ap3Var.read();
                        if (i == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        ap3Var.unread(i);
                        xs0Var2.a(new bp3(ap3Var, zzthVarD1.K0(), zzthVarD1.N0(), zzthVarD1.M0(), zzthVarD1.L0()));
                    } catch (RemoteException | IOException e) {
                        is0.zzc("Unable to obtain a cache service instance.", e);
                        xs0Var2.b(e);
                        to3.a(vo3Var.c);
                    }
                }
            });
            final xs0 xs0Var2 = this.b;
            xs0Var2.e.i(new Runnable(xs0Var2, aw2VarC) { // from class: xo3
                public final xs0 e;
                public final Future f;

                {
                    this.e = xs0Var2;
                    this.f = aw2VarC;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    xs0 xs0Var3 = this.e;
                    Future future = this.f;
                    if (xs0Var3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, ms0.f);
        }
    }
}
