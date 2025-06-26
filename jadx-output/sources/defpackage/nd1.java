package defpackage;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;

/* loaded from: classes.dex */
public final class nd1 implements cb3<ld1> {
    public final mb3<Set<sf1<AppEventListener>>> a;

    public nd1(mb3<Set<sf1<AppEventListener>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ld1(this.a.get());
    }
}
