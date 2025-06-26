package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cz0 implements cb3<String> {
    public final ry0 a;

    public cz0(ry0 ry0Var) {
        this.a = ry0Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        ry0 ry0Var = this.a;
        Objects.requireNonNull(ry0Var);
        String strZzq = zzr.zzkv().zzq(ry0Var.b, ry0Var.a.e);
        Objects.requireNonNull(strZzq, "Cannot return null from a non-@Nullable @Provides method");
        return strZzq;
    }
}
