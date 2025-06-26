package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;

/* loaded from: classes.dex */
public final class rb1 extends xd1<AdMetadataListener> implements ra0 {
    public Bundle f;

    public rb1(Set<sf1<AdMetadataListener>> set) {
        super(set);
        this.f = new Bundle();
    }

    @Override // defpackage.ra0
    public final synchronized void d(String str, Bundle bundle) {
        this.f.putAll(bundle);
        D0(qb1.a);
    }
}
