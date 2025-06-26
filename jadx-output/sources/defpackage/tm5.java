package defpackage;

/* loaded from: classes.dex */
public class tm5 implements sm5 {
    public final pm5 a;
    public final rm5 b;
    public final qm5 c;
    public final long d;

    public tm5(long j, pm5 pm5Var, rm5 rm5Var, qm5 qm5Var, int i, int i2) {
        this.d = j;
        this.a = pm5Var;
        this.b = rm5Var;
        this.c = qm5Var;
    }

    @Override // defpackage.sm5
    public qm5 a() {
        return this.c;
    }

    @Override // defpackage.sm5
    public rm5 b() {
        return this.b;
    }
}
