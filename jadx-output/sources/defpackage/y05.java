package defpackage;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class y05 implements Runnable {
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ zzp h;
    public final /* synthetic */ h15 i;

    public y05(h15 h15Var, AtomicReference atomicReference, String str, String str2, zzp zzpVar) {
        this.i = h15Var;
        this.e = atomicReference;
        this.f = str;
        this.g = str2;
        this.h = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        h15 h15Var;
        hw4 hw4Var;
        synchronized (this.e) {
            try {
                try {
                    h15Var = this.i;
                    hw4Var = h15Var.d;
                } catch (RemoteException e) {
                    this.i.a.a().f.d("(legacy) Failed to get conditional properties; remote exception", null, this.f, e);
                    this.e.set(Collections.emptyList());
                    atomicReference = this.e;
                }
                if (hw4Var == null) {
                    h15Var.a.a().f.d("(legacy) Failed to get conditional properties; not connected to service", null, this.f, this.g);
                    this.e.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    Objects.requireNonNull(this.h, "null reference");
                    this.e.set(hw4Var.q0(this.f, this.g, this.h));
                } else {
                    this.e.set(hw4Var.V2(null, this.f, this.g));
                }
                this.i.s();
                atomicReference = this.e;
                atomicReference.notify();
            } finally {
                this.e.notify();
            }
        }
    }
}
