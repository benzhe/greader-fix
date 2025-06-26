package defpackage;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class q25 implements Runnable {
    public final /* synthetic */ bg4 e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ AppMeasurementDynamiteService h;

    public q25(AppMeasurementDynamiteService appMeasurementDynamiteService, bg4 bg4Var, String str, String str2) {
        this.h = appMeasurementDynamiteService;
        this.e = bg4Var;
        this.f = str;
        this.g = str2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        h15 h15VarZ = this.h.e.z();
        bg4 bg4Var = this.e;
        String str = this.f;
        String str2 = this.g;
        h15VarZ.d();
        h15VarZ.f();
        h15VarZ.t(new z05(h15VarZ, str, str2, h15VarZ.v(false), bg4Var));
    }
}
