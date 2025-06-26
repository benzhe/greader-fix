package defpackage;

/* loaded from: classes.dex */
public final class kp1 implements cb3<String> {
    public final mb3<ll2> a;

    public kp1(mb3<ll2> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return this.a.get().o.a == 3 ? "rewarded_interstitial" : "rewarded";
    }
}
