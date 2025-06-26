package defpackage;

/* loaded from: classes2.dex */
public final class vp7 extends no7 {
    public final pl7<Throwable, yj7> e;

    /* JADX WARN: Multi-variable type inference failed */
    public vp7(pl7<? super Throwable, yj7> pl7Var) {
        this.e = pl7Var;
    }

    @Override // defpackage.no7
    public void a(Throwable th) {
        this.e.invoke(th);
    }

    @Override // defpackage.pl7
    public Object invoke(Object obj) {
        this.e.invoke((Throwable) obj);
        return yj7.a;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("InvokeOnCancel[");
        sbZ.append(n56.F0(this.e));
        sbZ.append('@');
        sbZ.append(n56.L0(this));
        sbZ.append(']');
        return sbZ.toString();
    }
}
