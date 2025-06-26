package defpackage;

/* loaded from: classes.dex */
public final class zl2 {
    public final ig0 a;

    public zl2(ig0 ig0Var) {
        this.a = ig0Var;
    }

    public final boolean a() throws pl2 {
        try {
            return this.a.isInitialized();
        } catch (Throwable th) {
            throw new pl2(th);
        }
    }

    public final void b(boolean z) throws pl2 {
        try {
            this.a.setImmersiveMode(z);
        } catch (Throwable th) {
            throw new pl2(th);
        }
    }
}
