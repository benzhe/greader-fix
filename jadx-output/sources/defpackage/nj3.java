package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class nj3 {
    public static final nj3 d = new nj3(new kj3[0]);
    public final int a;
    public final kj3[] b;
    public int c;

    public nj3(kj3... kj3VarArr) {
        this.b = kj3VarArr;
        this.a = kj3VarArr.length;
    }

    public final int a(kj3 kj3Var) {
        for (int i = 0; i < this.a; i++) {
            if (this.b[i] == kj3Var) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && nj3.class == obj.getClass()) {
            nj3 nj3Var = (nj3) obj;
            if (this.a == nj3Var.a && Arrays.equals(this.b, nj3Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b);
        }
        return this.c;
    }
}
