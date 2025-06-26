package defpackage;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class uy4 implements Runnable {
    public final /* synthetic */ bg4 e;
    public final /* synthetic */ AppMeasurementDynamiteService f;

    public uy4(AppMeasurementDynamiteService appMeasurementDynamiteService, bg4 bg4Var) {
        this.f = appMeasurementDynamiteService;
        this.e = bg4Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        h15 h15VarZ = this.f.e.z();
        bg4 bg4Var = this.e;
        h15VarZ.d();
        h15VarZ.f();
        h15VarZ.t(new m05(h15VarZ, h15VarZ.v(false), bg4Var));
    }
}
