package defpackage;

/* compiled from: kotlin-style lambda group */
/* loaded from: classes.dex */
public final class i extends jm7 implements pl7 {
    public static final i f = new i(0);
    public static final i g = new i(1);
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(int i) {
        super(1);
        this.e = i;
    }

    @Override // defpackage.pl7
    public final Object invoke(Object obj) {
        int i = this.e;
        if (i == 0) {
            return null;
        }
        if (i != 1) {
            throw null;
        }
        return null;
    }
}
