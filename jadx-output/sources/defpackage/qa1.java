package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class qa1 extends xd1<va1> {
    public boolean f;

    public qa1(Set<sf1<va1>> set) {
        super(set);
        this.f = false;
    }

    public final synchronized void onAdImpression() {
        if (!this.f) {
            D0(ta1.a);
            this.f = true;
        }
    }
}
