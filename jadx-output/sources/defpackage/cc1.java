package defpackage;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;

/* loaded from: classes.dex */
public final class cc1 implements cb3<wb1> {
    public final mb3<Set<sf1<zzp>>> a;

    public cc1(mb3<Set<sf1<zzp>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new wb1(this.a.get());
    }
}
