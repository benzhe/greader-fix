package defpackage;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class v15 implements Runnable {
    public final /* synthetic */ s25 e;
    public final /* synthetic */ AppMeasurementDynamiteService f;

    public v15(AppMeasurementDynamiteService appMeasurementDynamiteService, s25 s25Var) {
        this.f = appMeasurementDynamiteService;
        this.e = s25Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.e.s().p(this.e);
    }
}
