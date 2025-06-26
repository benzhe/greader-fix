package defpackage;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;

/* loaded from: classes.dex */
public final class tb1 implements cb3<rb1> {
    public final mb3<Set<sf1<AdMetadataListener>>> a;

    public tb1(mb3<Set<sf1<AdMetadataListener>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new rb1(this.a.get());
    }
}
