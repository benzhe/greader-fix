package defpackage;

import com.google.android.gms.measurement.internal.zzaa;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zx4 implements Callable<List<zzaa>> {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ ky4 h;

    public zx4(ky4 ky4Var, String str, String str2, String str3) {
        this.h = ky4Var;
        this.e = str;
        this.f = str2;
        this.g = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzaa> call() throws Exception {
        this.h.e.l();
        return this.h.e.L().J(this.e, this.f, this.g);
    }
}
