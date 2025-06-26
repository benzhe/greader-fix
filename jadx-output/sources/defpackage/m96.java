package defpackage;

import android.text.TextUtils;
import defpackage.b96;

/* loaded from: classes.dex */
public class m96 {
    public static b96.b a(yy5 yy5Var) {
        b96.b bVar = new b96.b();
        if (!TextUtils.isEmpty(yy5Var.C())) {
            String strC = yy5Var.C();
            if (!TextUtils.isEmpty(strC)) {
                bVar.a = strC;
            }
        }
        return bVar;
    }

    public static b96 b(yy5 yy5Var, az5 az5Var) {
        p96 p96Var;
        b96.b bVarA = a(yy5Var);
        if (!az5Var.equals(az5.D())) {
            String strC = !TextUtils.isEmpty(az5Var.C()) ? az5Var.C() : null;
            if (az5Var.F()) {
                fz5 fz5VarE = az5Var.E();
                String strE = !TextUtils.isEmpty(fz5VarE.E()) ? fz5VarE.E() : null;
                String strD = !TextUtils.isEmpty(fz5VarE.D()) ? fz5VarE.D() : null;
                if (TextUtils.isEmpty(strD)) {
                    throw new IllegalArgumentException("Text model must have a color");
                }
                p96Var = new p96(strE, strD, null);
            } else {
                p96Var = null;
            }
            if (TextUtils.isEmpty(strC)) {
                throw new IllegalArgumentException("Button model must have a color");
            }
            if (p96Var == null) {
                throw new IllegalArgumentException("Button model must have text");
            }
            bVarA.b = new e96(p96Var, strC, null);
        }
        return bVarA.a();
    }

    public static p96 c(fz5 fz5Var) {
        String strD = !TextUtils.isEmpty(fz5Var.D()) ? fz5Var.D() : null;
        String strE = !TextUtils.isEmpty(fz5Var.E()) ? fz5Var.E() : null;
        if (TextUtils.isEmpty(strD)) {
            throw new IllegalArgumentException("Text model must have a color");
        }
        return new p96(strE, strD, null);
    }
}
