package defpackage;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class qe1 implements cb3<Set<sf1<AppEventListener>>> {
    public final yd1 a;

    public qe1(yd1 yd1Var) {
        this.a = yd1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set<sf1<AppEventListener>> set = this.a.i;
        Objects.requireNonNull(set, "Cannot return null from a non-@Nullable @Provides method");
        return set;
    }
}
