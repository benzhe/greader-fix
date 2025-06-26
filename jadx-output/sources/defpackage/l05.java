package defpackage;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class l05 implements Runnable {
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ zzp f;
    public final /* synthetic */ h15 g;

    public l05(h15 h15Var, AtomicReference atomicReference, zzp zzpVar) {
        this.g = h15Var;
        this.e = atomicReference;
        this.f = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.e) {
            try {
                try {
                    pc4.b();
                } catch (RemoteException e) {
                    this.g.a.a().f.b("Failed to get app instance id", e);
                    atomicReference = this.e;
                }
                if (this.g.a.g.s(null, ew4.E0) && !this.g.a.q().s().e()) {
                    this.g.a.a().k.a("Analytics storage consent denied; will not get app instance id");
                    this.g.a.s().g.set(null);
                    this.g.a.q().l.b(null);
                    this.e.set(null);
                    return;
                }
                h15 h15Var = this.g;
                hw4 hw4Var = h15Var.d;
                if (hw4Var == null) {
                    h15Var.a.a().f.a("Failed to get app instance id");
                    return;
                }
                Objects.requireNonNull(this.f, "null reference");
                this.e.set(hw4Var.Z0(this.f));
                String str = (String) this.e.get();
                if (str != null) {
                    this.g.a.s().g.set(str);
                    this.g.a.q().l.b(str);
                }
                this.g.s();
                atomicReference = this.e;
                atomicReference.notify();
            } finally {
                this.e.notify();
            }
        }
    }
}
