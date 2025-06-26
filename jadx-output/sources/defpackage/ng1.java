package defpackage;

import com.google.android.gms.ads.VideoController;
import java.util.Set;

/* loaded from: classes.dex */
public final class ng1 implements cb3<ig1> {
    public final mb3<Set<sf1<VideoController.VideoLifecycleCallbacks>>> a;

    public ng1(mb3<Set<sf1<VideoController.VideoLifecycleCallbacks>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ig1(this.a.get());
    }
}
