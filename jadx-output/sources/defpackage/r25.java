package defpackage;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class r25 implements Runnable {
    public final /* synthetic */ bg4 e;
    public final /* synthetic */ AppMeasurementDynamiteService f;

    public r25(AppMeasurementDynamiteService appMeasurementDynamiteService, bg4 bg4Var) {
        this.f = appMeasurementDynamiteService;
        this.e = bg4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.e.t().T(this.e, this.f.e.f());
    }
}
