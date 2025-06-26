package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class s58 extends n68 implements Serializable {
    public static final s58 h;
    public static final s58 i;
    public static final s58 j;
    public static final s58 k;
    public static final s58 l;
    public static final AtomicReference<s58[]> m;
    public final int e;
    public final transient p48 f;
    public final transient String g;

    static {
        s58 s58Var = new s58(-1, p48.c0(1868, 9, 8), "Meiji");
        h = s58Var;
        s58 s58Var2 = new s58(0, p48.c0(1912, 7, 30), "Taisho");
        i = s58Var2;
        s58 s58Var3 = new s58(1, p48.c0(1926, 12, 25), "Showa");
        j = s58Var3;
        s58 s58Var4 = new s58(2, p48.c0(1989, 1, 8), "Heisei");
        k = s58Var4;
        s58 s58Var5 = new s58(3, p48.c0(2019, 5, 1), "Reiwa");
        l = s58Var5;
        m = new AtomicReference<>(new s58[]{s58Var, s58Var2, s58Var3, s58Var4, s58Var5});
    }

    public s58(int i2, p48 p48Var, String str) {
        this.e = i2;
        this.f = p48Var;
        this.g = str;
    }

    public static s58 L(p48 p48Var) {
        if (p48Var.Z(h.f)) {
            throw new l48("Date too early: " + p48Var);
        }
        s58[] s58VarArr = m.get();
        for (int length = s58VarArr.length - 1; length >= 0; length--) {
            s58 s58Var = s58VarArr[length];
            if (p48Var.compareTo(s58Var.f) >= 0) {
                return s58Var;
            }
        }
        return null;
    }

    public static s58 M(int i2) {
        s58[] s58VarArr = m.get();
        if (i2 < h.e || i2 > s58VarArr[s58VarArr.length - 1].e) {
            throw new l48("japaneseEra is invalid");
        }
        return s58VarArr[i2 + 1];
    }

    public static s58[] N() {
        s58[] s58VarArr = m.get();
        return (s58[]) Arrays.copyOf(s58VarArr, s58VarArr.length);
    }

    private Object readResolve() throws ObjectStreamException {
        try {
            return M(this.e);
        } catch (l48 e) {
            InvalidObjectException invalidObjectException = new InvalidObjectException("Invalid era");
            invalidObjectException.initCause(e);
            throw invalidObjectException;
        }
    }

    private Object writeReplace() {
        return new w58((byte) 2, this);
    }

    public p48 K() {
        int i2 = this.e + 1;
        s58[] s58VarArrN = N();
        return i2 >= s58VarArrN.length + (-1) ? p48.i : s58VarArrN[i2 + 1].f.g0(-1L);
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        q68 q68Var = q68.J;
        return y68Var == q68Var ? q58.h.M(q68Var) : super.t(y68Var);
    }

    public String toString() {
        return this.g;
    }
}
