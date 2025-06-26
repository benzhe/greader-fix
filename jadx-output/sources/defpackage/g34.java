package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class g34 implements Runnable {
    public final long e;
    public final long f;
    public final boolean g;
    public final /* synthetic */ q34 h;

    public g34(q34 q34Var, boolean z) {
        this.h = q34Var;
        this.e = q34Var.b.a();
        this.f = q34Var.b.b();
        this.g = z;
    }

    public abstract void a() throws RemoteException;

    public void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.h.g) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e) {
            this.h.e(e, false, this.g);
            b();
        }
    }
}
