package defpackage;

/* loaded from: classes2.dex */
public final class vo6<T, R> implements uc7<po6, vb7<? extends po6>> {
    public static final vo6 e = new vo6();

    @Override // defpackage.uc7
    public vb7<? extends po6> apply(po6 po6Var) {
        bg7 bg7Var;
        u48 u48Var;
        po6 po6Var2 = po6Var;
        im7.e(po6Var2, "promoCode");
        int i = u48.g;
        z48 z48VarM = z48.M();
        o48 o48VarM = o48.M(System.currentTimeMillis());
        u48 u48VarN = u48.N(o48VarM, z48VarM.L().a(o48VarM));
        u48 u48Var2 = po6Var2.e;
        if (u48Var2 != null && po6Var2.f != null) {
            return (u48VarN.L(u48Var2) && u48VarN.M(po6Var2.f)) ? new kg7(po6Var2) : bg7.e;
        }
        if (u48Var2 != null || (u48Var = po6Var2.f) == null) {
            if (u48Var2 == null || po6Var2.f != null) {
                long j = po6Var2.h;
                if (j <= 0) {
                    return new kg7(po6Var2);
                }
                if (po6Var2.g < j) {
                    return new kg7(po6Var2);
                }
                bg7Var = bg7.e;
            } else {
                if (u48VarN.L(u48Var2)) {
                    return new kg7(po6Var2);
                }
                bg7Var = bg7.e;
            }
        } else {
            if (u48VarN.M(u48Var)) {
                return new kg7(po6Var2);
            }
            bg7Var = bg7.e;
        }
        return bg7Var;
    }
}
