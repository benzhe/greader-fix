package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.zzdwh;
import com.google.android.gms.internal.ads.zzdwj;
import defpackage.i00;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public final class xq2 implements i00.a, i00.b {
    public tr2 a;
    public final String b;
    public final String c;
    public final LinkedBlockingQueue<gl1> d;
    public final HandlerThread e;

    public xq2(Context context, String str, String str2) {
        this.b = str;
        this.c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.e = handlerThread;
        handlerThread.start();
        this.a = new tr2(context, handlerThread.getLooper(), this, this, 9200000);
        this.d = new LinkedBlockingQueue<>();
        this.a.checkAvailabilityAndConnect();
    }

    /*  JADX ERROR: StackOverflowError in pass: MethodInvokeVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:99)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:114)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:120)
        */
    public static defpackage.gl1 b() {
        /*
            gl1$b r0 = defpackage.gl1.V()
            r1 = 32768(0x8000, double:1.61895E-319)
            r0.r(r1)
            e83 r0 = r0.j()
            s63 r0 = (defpackage.s63) r0
            gl1 r0 = (defpackage.gl1) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xq2.b():gl1");
    }

    @Override // i00.a
    public final void Z(int i) throws InterruptedException {
        try {
            this.d.put(b());
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

    @Override // i00.b
    public final void g0(ConnectionResult connectionResult) throws InterruptedException {
        try {
            this.d.put(b());
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
                try {
                    zzdwj zzdwjVarN3 = yr2VarP.n3(new zzdwh(this.b, this.c));
                    if (!(zzdwjVarN3.f != null)) {
                        try {
                            zzdwjVarN3.f = gl1.x(zzdwjVarN3.g, e63.a());
                            zzdwjVarN3.g = null;
                        } catch (e73 | NullPointerException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    zzdwjVarN3.n();
                    this.d.put(zzdwjVarN3.f);
                    a();
                    this.e.quit();
                } catch (Throwable unused2) {
                    this.d.put(b());
                    a();
                    this.e.quit();
                }
            } catch (InterruptedException unused3) {
                a();
                this.e.quit();
            } catch (Throwable th) {
                a();
                this.e.quit();
                throw th;
            }
        }
    }
}
