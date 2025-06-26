package defpackage;

/* loaded from: classes.dex */
public final class yu2 implements Runnable {
    public final /* synthetic */ it2 e;
    public final /* synthetic */ wu2 f;

    public yu2(wu2 wu2Var, it2 it2Var) {
        this.f = wu2Var;
        this.e = it2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        wu2.I(this.f, this.e);
    }
}
