package defpackage;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class rj3 {
    public final boolean a = true;
    public final int b = Integer.MAX_VALUE;
    public final int c = Integer.MAX_VALUE;
    public final int d = Integer.MAX_VALUE;
    public final boolean e = true;
    public final boolean f = true;
    public final int g = Integer.MAX_VALUE;
    public final int h = Integer.MAX_VALUE;
    public final boolean i = true;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && rj3.class == obj.getClass()) {
            rj3 rj3Var = (rj3) obj;
            if (this.a == rj3Var.a && this.b == rj3Var.b && this.c == rj3Var.c && this.e == rj3Var.e && this.f == rj3Var.f && this.i == rj3Var.i && this.g == rj3Var.g && this.h == rj3Var.h && this.d == rj3Var.d && TextUtils.equals(null, null) && TextUtils.equals(null, null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        throw null;
    }
}
