package defpackage;

/* loaded from: classes2.dex */
public final class xp7 extends bq7<yp7> {
    public final pl7<Throwable, yj7> i;

    /* JADX WARN: Multi-variable type inference failed */
    public xp7(yp7 yp7Var, pl7<? super Throwable, yj7> pl7Var) {
        super(yp7Var);
        this.i = pl7Var;
    }

    @Override // defpackage.pl7
    public yj7 invoke(Throwable th) {
        this.i.invoke(th);
        return yj7.a;
    }

    @Override // defpackage.sq7
    public String toString() {
        StringBuilder sbZ = jo.z("InvokeOnCompletion[");
        sbZ.append(xp7.class.getSimpleName());
        sbZ.append('@');
        sbZ.append(n56.L0(this));
        sbZ.append(']');
        return sbZ.toString();
    }
}
