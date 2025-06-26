package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.zzdwr;
import com.google.android.gms.internal.ads.zzdwt;
import defpackage.i00;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public final class yq2 implements i00.a, i00.b {
    public tr2 a;
    public final String b;
    public final String c;
    public final kd3 d;
    public final LinkedBlockingQueue<zzdwt> e;
    public final HandlerThread f;
    public final pq2 g;
    public final long h;

    public yq2(Context context, kd3 kd3Var, String str, String str2, pq2 pq2Var) {
        this.b = str;
        this.d = kd3Var;
        this.c = str2;
        this.g = pq2Var;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f = handlerThread;
        handlerThread.start();
        this.h = System.currentTimeMillis();
        this.a = new tr2(context, handlerThread.getLooper(), this, this, 19621000);
        this.e = new LinkedBlockingQueue<>();
        this.a.checkAvailabilityAndConnect();
    }

    public static zzdwt b() {
        return new zzdwt(1, null, 1);
    }

    @Override // i00.a
    public final void Z(int i) throws InterruptedException {
        try {
            c(4011, this.h, null);
            this.e.put(b());
        } catch (InterruptedException unused) {
        }
    }

    public final void a() {
        tr2 tr2Var = this.a;
        if (tr2Var != null) {
            if (tr2Var.isConnected() || this.a.isConnecting()) {
                this.a.disconnect();
            }
        }
    }

    public final void c(int i, long j, Exception exc) {
        pq2 pq2Var = this.g;
        if (pq2Var != null) {
            pq2Var.b(i, System.currentTimeMillis() - j, exc);
        }
    }

    @Override // i00.b
    public final void g0(ConnectionResult connectionResult) throws InterruptedException {
        try {
            c(4012, this.h, null);
            this.e.put(b());
        } catch (InterruptedException unused) {
        }
    }

    @Override // i00.a
    public final void l0(Bundle bundle) {
        yr2 yr2VarP;
        try {
            yr2VarP = this.a.p();
        } catch (DeadObjectException | IllegalStateException unused) {
            yr2VarP = null;
        }
        if (yr2VarP != null) {
            try {
                zzdwt zzdwtVarI2 = yr2VarP.I2(new zzdwr(1, this.d, this.b, this.c));
                c(5011, this.h, null);
                this.e.put(zzdwtVarI2);
            } catch (Throwable th) {
                try {
                    c(2010, this.h, new Exception(th));
                } finally {
                    a();
                    this.f.quit();
                }
            }
        }
    }
}
