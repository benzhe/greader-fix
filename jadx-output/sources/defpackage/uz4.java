package defpackage;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzas;
import java.util.Objects;

/* loaded from: classes.dex */
public final class uz4 implements Runnable {
    public final /* synthetic */ bg4 e;
    public final /* synthetic */ zzas f;
    public final /* synthetic */ String g;
    public final /* synthetic */ AppMeasurementDynamiteService h;

    public uz4(AppMeasurementDynamiteService appMeasurementDynamiteService, bg4 bg4Var, zzas zzasVar, String str) {
        this.h = appMeasurementDynamiteService;
        this.e = bg4Var;
        this.f = zzasVar;
        this.g = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        h15 h15VarZ = this.h.e.z();
        bg4 bg4Var = this.e;
        zzas zzasVar = this.f;
        String str = this.g;
        h15VarZ.d();
        h15VarZ.f();
        p25 p25VarT = h15VarZ.a.t();
        Objects.requireNonNull(p25VarT);
        if (gy.b.d(p25VarT.a.a, 12451000) == 0) {
            h15VarZ.t(new r05(h15VarZ, zzasVar, str, bg4Var));
        } else {
            h15VarZ.a.a().i.a("Not bundling data. Service unavailable or out of date");
            h15VarZ.a.t().S(bg4Var, new byte[0]);
        }
    }
}
