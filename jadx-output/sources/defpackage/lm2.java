package defpackage;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Objects;

/* loaded from: classes.dex */
public final class lm2 implements cb3<zzf> {
    public final im2 a;
    public final mb3<or0> b;

    public lm2(im2 im2Var, mb3<or0> mb3Var) {
        this.a = im2Var;
        this.b = mb3Var;
    }

    public static zzf a(or0 or0Var) {
        zzf zzfVarF = or0Var.f();
        Objects.requireNonNull(zzfVarF, "Cannot return null from a non-@Nullable @Provides method");
        return zzfVarF;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.b.get());
    }
}
