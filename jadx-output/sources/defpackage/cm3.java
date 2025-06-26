package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public final class cm3 extends BroadcastReceiver {
    public final /* synthetic */ am3 a;

    public cm3(am3 am3Var) {
        this.a = am3Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.a.d(3);
    }
}
