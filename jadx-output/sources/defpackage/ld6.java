package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public class ld6 extends de6<Number> {
    public ld6(od6 od6Var) {
    }

    @Override // defpackage.de6
    public Number a(eg6 eg6Var) throws IOException {
        if (eg6Var.Q() != fg6.NULL) {
            return Float.valueOf((float) eg6Var.w());
        }
        eg6Var.E();
        return null;
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, Number number) throws IOException {
        Number number2 = number;
        if (number2 == null) {
            gg6Var.m();
        } else {
            od6.b(number2.floatValue());
            gg6Var.C(number2);
        }
    }
}
