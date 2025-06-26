package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class fa5 implements ga5 {
    public final ga5 a;
    public final float b;

    public fa5(float f, ga5 ga5Var) {
        while (ga5Var instanceof fa5) {
            ga5Var = ((fa5) ga5Var).a;
            f += ((fa5) ga5Var).b;
        }
        this.a = ga5Var;
        this.b = f;
    }

    @Override // defpackage.ga5
    public float a(RectF rectF) {
        return Math.max(0.0f, this.a.a(rectF) + this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fa5)) {
            return false;
        }
        fa5 fa5Var = (fa5) obj;
        return this.a.equals(fa5Var.a) && this.b == fa5Var.b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Float.valueOf(this.b)});
    }
}
