package defpackage;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class de1 implements cb3<Set<sf1<zzp>>> {
    public final yd1 a;

    public de1(yd1 yd1Var) {
        this.a = yd1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set<sf1<zzp>> set = this.a.k;
        Objects.requireNonNull(set, "Cannot return null from a non-@Nullable @Provides method");
        return set;
    }
}
