package defpackage;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class me1 implements cb3<Set<sf1<AdMetadataListener>>> {
    public final yd1 a;

    public me1(yd1 yd1Var) {
        this.a = yd1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set<sf1<AdMetadataListener>> set = this.a.h;
        Objects.requireNonNull(set, "Cannot return null from a non-@Nullable @Provides method");
        return set;
    }
}
