package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class t25 implements ry4 {
    public final eg4 a;
    public final /* synthetic */ AppMeasurementDynamiteService b;

    public t25(AppMeasurementDynamiteService appMeasurementDynamiteService, eg4 eg4Var) {
        this.b = appMeasurementDynamiteService;
        this.a = eg4Var;
    }

    @Override // defpackage.ry4
    public final void a(String str, String str2, Bundle bundle, long j) {
        try {
            this.a.o1(str, str2, bundle, j);
        } catch (RemoteException e) {
            this.b.e.a().i.b("Event listener threw exception", e);
        }
    }
}
