package defpackage;

import defpackage.lp4;
import java.util.Arrays;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ai6 {
    public static final ai6 c = new ai6(null, null, null);
    public final Float a = null;
    public final Executor b = null;

    public ai6(Float f, Executor executor, fi6 fi6Var) {
    }

    public final lp4 a() {
        if (this.a == null) {
            return lp4.s();
        }
        lp4.a aVarP = lp4.p();
        float fFloatValue = this.a.floatValue();
        if (aVarP.g) {
            aVarP.f();
            aVarP.g = false;
        }
        lp4.q((lp4) aVarP.f, fFloatValue);
        return (lp4) ((pk4) aVarP.j());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ai6) {
            return bi.B(((ai6) obj).a, this.a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }
}
