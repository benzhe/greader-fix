package defpackage;

import defpackage.ny;
import java.util.Arrays;
import java.util.Objects;
import ny.d;

/* loaded from: classes.dex */
public final class b00<O extends ny.d> {
    public final int a;
    public final ny<O> b;
    public final O c;

    public b00(ny<O> nyVar, O o) {
        this.b = nyVar;
        this.c = o;
        this.a = Arrays.hashCode(new Object[]{nyVar, o});
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b00)) {
            return false;
        }
        b00 b00Var = (b00) obj;
        Objects.requireNonNull(b00Var);
        return bi.B(this.b, b00Var.b) && bi.B(this.c, b00Var.c);
    }

    public final int hashCode() {
        return this.a;
    }
}
