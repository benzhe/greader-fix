package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class na5 implements ga5 {
    public final float a;

    public na5(float f) {
        this.a = f;
    }

    @Override // defpackage.ga5
    public float a(RectF rectF) {
        return rectF.height() * this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof na5) && this.a == ((na5) obj).a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
