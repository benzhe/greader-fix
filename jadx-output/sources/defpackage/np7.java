package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class np7 extends cp7 {
    public long g;
    public boolean h;
    public lq7<jp7<?>> i;

    public final long D(boolean z) {
        return z ? 4294967296L : 1L;
    }

    public final void E(jp7<?> jp7Var) {
        lq7<jp7<?>> lq7Var = this.i;
        if (lq7Var == null) {
            lq7Var = new lq7<>();
            this.i = lq7Var;
        }
        Object[] objArr = lq7Var.a;
        int i = lq7Var.c;
        objArr[i] = jp7Var;
        int length = (objArr.length - 1) & (i + 1);
        lq7Var.c = length;
        int i2 = lq7Var.b;
        if (length == i2) {
            int length2 = objArr.length;
            Object[] objArr2 = new Object[length2 << 1];
            ek7.d(objArr, objArr2, 0, i2, 0, 10);
            Object[] objArr3 = lq7Var.a;
            int length3 = objArr3.length;
            int i3 = lq7Var.b;
            ek7.d(objArr3, objArr2, length3 - i3, 0, i3, 4);
            lq7Var.a = objArr2;
            lq7Var.b = 0;
            lq7Var.c = length2;
        }
    }

    public final void F(boolean z) {
        this.g = D(z) + this.g;
        if (z) {
            return;
        }
        this.h = true;
    }

    public final boolean I() {
        return this.g >= D(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object] */
    public final boolean L() {
        lq7<jp7<?>> lq7Var = this.i;
        if (lq7Var != null) {
            int i = lq7Var.b;
            jp7 jp7Var = null;
            if (i != lq7Var.c) {
                ?? r3 = lq7Var.a;
                ?? r6 = r3[i];
                r3[i] = 0;
                lq7Var.b = (i + 1) & (r3.length - 1);
                Objects.requireNonNull(r6, "null cannot be cast to non-null type T");
                jp7Var = r6;
            }
            jp7 jp7Var2 = jp7Var;
            if (jp7Var2 != null) {
                jp7Var2.run();
                return true;
            }
        }
        return false;
    }

    public void shutdown() {
    }

    public final void x(boolean z) {
        long jD = this.g - D(z);
        this.g = jD;
        if (jD > 0) {
            return;
        }
        boolean z2 = fp7.a;
        if (this.h) {
            shutdown();
        }
    }
}
