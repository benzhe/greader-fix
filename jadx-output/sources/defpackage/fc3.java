package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public final class fc3 extends BroadcastReceiver {
    public final /* synthetic */ dc3 a;

    public fc3(dc3 dc3Var) {
        this.a = dc3Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.a.d();
    }
}
