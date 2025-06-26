package defpackage;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes2.dex */
public class s27 {
    public int c;
    public int d;
    public float g;
    public float h;
    public Interpolator i;
    public Interpolator j;
    public int a = 0;
    public int b = 0;
    public boolean e = true;
    public boolean f = true;

    public static class a {
        public static final Interpolator c;
        public static final Interpolator d;
        public static final a e;
        public static final a f;
        public static final a g;
        public float a;
        public Interpolator b;

        static {
            LinearInterpolator linearInterpolator = new LinearInterpolator();
            c = linearInterpolator;
            DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
            d = decelerateInterpolator;
            e = new a(1.0f, linearInterpolator);
            f = new a(0.3f, decelerateInterpolator);
            g = new a(0.0f, linearInterpolator);
        }

        public a(float f2, Interpolator interpolator) {
            this.a = f2;
            this.b = interpolator;
        }
    }
}
