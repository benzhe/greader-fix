package defpackage;

import android.view.animation.Interpolator;

/* loaded from: classes2.dex */
public class ms7 implements Interpolator {
    public static final ps7 a = new ps7();

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f < 0.33333334f) {
            return a.getInterpolation(f * 3.0f);
        }
        if (f <= 0.6666667f) {
            return 1.0f;
        }
        return 1.0f - a.getInterpolation(((f + 0.33333334f) - 1.0f) * 3.0f);
    }
}
