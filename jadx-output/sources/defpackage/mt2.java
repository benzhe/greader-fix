package defpackage;

/* loaded from: classes.dex */
public final class mt2 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        try {
            lu2.C.c();
            rn2 rn2Var = lu2.C;
            if (rr2.a(rn2Var.l)) {
                rn2Var.k.execute(new so2(rn2Var));
            }
        } catch (Exception e) {
            lu2.E.b(2001, -1L, e);
        }
    }
}
