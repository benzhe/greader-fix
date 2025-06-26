package defpackage;

/* loaded from: classes.dex */
public class zl5 implements am5 {
    public final bm5 a;
    public final cm5 b;

    public zl5(bm5 bm5Var, cm5 cm5Var) {
        this.a = bm5Var;
        this.b = cm5Var;
    }

    @Override // defpackage.am5
    public boolean a(vl5 vl5Var, boolean z) {
        int iOrdinal = vl5Var.c.getType().ordinal();
        if (iOrdinal == 0) {
            this.a.a(vl5Var, z);
            return true;
        }
        if (iOrdinal != 1) {
            return false;
        }
        this.b.a(vl5Var, z);
        return true;
    }
}
