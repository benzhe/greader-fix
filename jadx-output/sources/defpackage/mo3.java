package defpackage;

import android.os.Bundle;
import android.os.DeadObjectException;
import defpackage.i00;

/* loaded from: classes.dex */
public final class mo3 implements i00.a {
    public final /* synthetic */ io3 a;

    public mo3(io3 io3Var) {
        this.a = io3Var;
    }

    @Override // i00.a
    public final void Z(int i) {
        synchronized (this.a.b) {
            io3 io3Var = this.a;
            io3Var.e = null;
            io3Var.b.notifyAll();
        }
    }

    @Override // i00.a
    public final void l0(Bundle bundle) {
        io3 io3Var;
        oo3 oo3Var;
        synchronized (this.a.b) {
            try {
                io3Var = this.a;
                oo3Var = io3Var.c;
            } catch (DeadObjectException e) {
                is0.zzc("Unable to obtain a cache service instance.", e);
                io3.d(this.a);
            }
            if (oo3Var != null) {
                io3Var.e = oo3Var.p();
                this.a.b.notifyAll();
            } else {
                this.a.b.notifyAll();
            }
        }
    }
}
