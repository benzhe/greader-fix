package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class yn {
    public final Context a;
    public final xn b;

    public yn(Context context, jn jnVar) {
        this.a = context;
        this.b = new xn(this, jnVar);
    }

    public final void a() {
        xn xnVar = this.b;
        Context context = this.a;
        if (!xnVar.b) {
            pr4.b("BillingBroadcastManager", "Receiver is not registered.");
        } else {
            context.unregisterReceiver(xnVar.c.b);
            xnVar.b = false;
        }
    }
}
