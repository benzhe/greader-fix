package defpackage;

import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzp;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class yx4 implements Callable<List<zzaa>> {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ ky4 h;

    public yx4(ky4 ky4Var, zzp zzpVar, String str, String str2) {
        this.h = ky4Var;
        this.e = zzpVar;
        this.f = str;
        this.g = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzaa> call() throws Exception {
        this.h.e.l();
        return this.h.e.L().J(this.e.e, this.f, this.g);
    }
}
