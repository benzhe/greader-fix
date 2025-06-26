package defpackage;

/* loaded from: classes.dex */
public final class wo3 extends xs0<bp3> {
    public final /* synthetic */ to3 f;

    public wo3(to3 to3Var) {
        this.f = to3Var;
    }

    @Override // defpackage.xs0, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        to3.a(this.f);
        return this.e.cancel(z);
    }
}
