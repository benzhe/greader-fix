package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class ea5 implements ga5 {
    public final float a;

    public ea5(float f) {
        this.a = f;
    }

    @Override // defpackage.ga5
    public float a(RectF rectF) {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ea5) && this.a == ((ea5) obj).a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
