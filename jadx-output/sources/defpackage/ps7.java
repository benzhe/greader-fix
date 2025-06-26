package defpackage;

import android.view.animation.Interpolator;

/* loaded from: classes2.dex */
public class ps7 implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        return (float) ((Math.sin((f * 3.141592653589793d) - 1.5707963267948966d) * 0.5d) + 0.5d);
    }
}
