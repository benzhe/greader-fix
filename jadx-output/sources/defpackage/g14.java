package defpackage;

/* loaded from: classes.dex */
public enum g14 implements vx3 {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4);

    public final int e;

    g14(int i) {
        this.e = i;
    }

    @Override // defpackage.vx3
    public final int c() {
        return this.e;
    }
}
