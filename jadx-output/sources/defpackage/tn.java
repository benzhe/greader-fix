package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class tn implements ServiceConnection {
    public final Object a = new Object();
    public boolean b = false;
    public gn c;
    public final /* synthetic */ fn d;

    public /* synthetic */ tn(fn fnVar, gn gnVar) {
        this.d = fnVar;
        this.c = gnVar;
    }

    public static void a(tn tnVar, in inVar) {
        fn.h(tnVar.d, new qn(tnVar, inVar));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        sr4 qr4Var;
        pr4.a("BillingClient", "Billing service connected.");
        fn fnVar = this.d;
        int i = rr4.e;
        if (iBinder == null) {
            qr4Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
            qr4Var = iInterfaceQueryLocalInterface instanceof sr4 ? (sr4) iInterfaceQueryLocalInterface : new qr4(iBinder);
        }
        fnVar.f = qr4Var;
        if (this.d.i(new rn(this), 30000L, new sn(this)) == null) {
            fn.h(this.d, new qn(this, this.d.g()));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        pr4.b("BillingClient", "Billing service disconnected.");
        fn fnVar = this.d;
        fnVar.f = null;
        fnVar.a = 0;
        synchronized (this.a) {
            gn gnVar = this.c;
            if (gnVar != null) {
                gnVar.b();
            }
        }
    }
}
