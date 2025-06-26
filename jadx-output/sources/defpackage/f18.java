package defpackage;

/* loaded from: classes2.dex */
public final class f18 extends h18 {
    public f18() {
        super(g18.NONE);
    }

    @Override // defpackage.h18
    public void d(g18 g18Var, String str) {
        im7.e(g18Var, "level");
        im7.e(str, "msg");
        System.err.println("should not see this - " + g18Var + " - " + str);
    }
}
