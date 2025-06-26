package defpackage;

import com.google.android.gms.measurement.internal.zzaq;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzp;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class dy4 implements Runnable {
    public final /* synthetic */ zzas e;
    public final /* synthetic */ zzp f;
    public final /* synthetic */ ky4 g;

    public dy4(ky4 ky4Var, zzas zzasVar, zzp zzpVar) {
        this.g = ky4Var;
        this.e = zzasVar;
        this.f = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        zzaq zzaqVar;
        ky4 ky4Var = this.g;
        zzas zzasVar = this.e;
        Objects.requireNonNull(ky4Var);
        if ("_cmp".equals(zzasVar.e) && (zzaqVar = zzasVar.f) != null && zzaqVar.e.size() != 0) {
            String string = zzasVar.f.e.getString("_cis");
            if ("referrer broadcast".equals(string) || "referrer API".equals(string)) {
                ky4Var.e.a().l.b("Event has been filtered ", zzasVar.toString());
                zzasVar = new zzas("_cmpx", zzasVar.f, zzasVar.g, zzasVar.h);
            }
        }
        this.g.e.l();
        this.g.e.c(zzasVar, this.f);
    }
}
