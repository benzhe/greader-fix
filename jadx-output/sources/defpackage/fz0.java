package defpackage;

import com.google.android.gms.internal.ads.zzbar;
import java.util.Objects;

/* loaded from: classes.dex */
public final class fz0 implements cb3<zzbar> {
    public final ry0 a;

    public fz0(ry0 ry0Var) {
        this.a = ry0Var;
    }

    public static zzbar a(ry0 ry0Var) {
        zzbar zzbarVar = ry0Var.a;
        Objects.requireNonNull(zzbarVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzbarVar;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a);
    }
}
