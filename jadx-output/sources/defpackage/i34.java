package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class i34 extends g34 {
    public final /* synthetic */ Bundle i;
    public final /* synthetic */ Activity j;
    public final /* synthetic */ p34 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i34(p34 p34Var, Bundle bundle, Activity activity) {
        super(p34Var.e, true);
        this.k = p34Var;
        this.i = bundle;
        this.j = activity;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        Bundle bundle;
        if (this.i != null) {
            bundle = new Bundle();
            if (this.i.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.i.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        this.k.e.i.onActivityCreated(new y20(this.j), bundle, this.f);
    }
}
