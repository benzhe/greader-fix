package defpackage;

import android.util.DisplayMetrics;
import java.util.Objects;

/* loaded from: classes.dex */
public final class l16 implements Object<f06> {
    public final j16 a;
    public final jj7<DisplayMetrics> b;

    public l16(j16 j16Var, jj7<DisplayMetrics> jj7Var) {
        this.a = j16Var;
        this.b = jj7Var;
    }

    public Object get() {
        j16 j16Var = this.a;
        DisplayMetrics displayMetrics = this.b.get();
        Objects.requireNonNull(j16Var);
        f06 f06Var = new f06();
        f06Var.a = Float.valueOf(0.3f);
        f06Var.b = Float.valueOf(0.3f);
        f06Var.c = Integer.valueOf((int) (displayMetrics.heightPixels * 0.5f));
        f06Var.d = Integer.valueOf((int) (displayMetrics.widthPixels * 0.9f));
        f06Var.f = 48;
        f06Var.e = 65824;
        f06Var.g = -1;
        f06Var.h = -2;
        Boolean bool = Boolean.TRUE;
        f06Var.i = bool;
        f06Var.j = bool;
        f06Var.k = bool;
        return f06Var;
    }
}
