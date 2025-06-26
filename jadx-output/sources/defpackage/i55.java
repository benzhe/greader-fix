package defpackage;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes.dex */
public class i55 {
    public static final TimeInterpolator a = new LinearInterpolator();
    public static final TimeInterpolator b = new uc();
    public static final TimeInterpolator c = new tc();
    public static final TimeInterpolator d = new vc();
    public static final TimeInterpolator e = new DecelerateInterpolator();

    public static float a(float f, float f2, float f3) {
        return jo.a(f2, f, f3, f);
    }

    public static int b(int i, int i2, float f) {
        return Math.round(f * (i2 - i)) + i;
    }
}
