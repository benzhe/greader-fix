package net.frakbot.glowpadbackport;

import defpackage.jo;
import net.frakbot.glowpadbackport.util.TimeInterpolator;

/* loaded from: classes2.dex */
public class Ease {
    private static final float DOMAIN = 1.0f;
    private static final float DURATION = 1.0f;
    private static final float START = 0.0f;

    public static class Cubic {
        public static final TimeInterpolator easeIn = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Cubic.1
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 1.0f;
                return (1.0f * f2 * f2 * f2) + 0.0f;
            }
        };
        public static final TimeInterpolator easeOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Cubic.2
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = (f / 1.0f) - 1.0f;
                return (((f2 * f2 * f2) + 1.0f) * 1.0f) + 0.0f;
            }
        };
        public static final TimeInterpolator easeInOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Cubic.3
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return (0.5f * f2 * f2 * f2) + 0.0f;
                }
                float f3 = f2 - 2.0f;
                return (((f3 * f3 * f3) + 2.0f) * 0.5f) + 0.0f;
            }
        };
    }

    public static class Linear {
        public static final TimeInterpolator easeNone = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Linear.1
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f;
            }
        };
    }

    public static class Quad {
        public static final TimeInterpolator easeIn = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quad.1
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 1.0f;
                return (1.0f * f2 * f2) + 0.0f;
            }
        };
        public static final TimeInterpolator easeOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quad.2
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 1.0f;
                return jo.a(f2, 2.0f, (-1.0f) * f2, 0.0f);
            }
        };
        public static final TimeInterpolator easeInOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quad.3
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return (0.5f * f2 * f2) + 0.0f;
                }
                float f3 = f2 - 1.0f;
                return ((((f3 - 2.0f) * f3) - 1.0f) * (-0.5f)) + 0.0f;
            }
        };
    }

    public static class Quart {
        public static final TimeInterpolator easeIn = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quart.1
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 1.0f;
                return (1.0f * f2 * f2 * f2 * f2) + 0.0f;
            }
        };
        public static final TimeInterpolator easeOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quart.2
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = (f / 1.0f) - 1.0f;
                return (((((f2 * f2) * f2) * f2) - 1.0f) * (-1.0f)) + 0.0f;
            }
        };
        public static final TimeInterpolator easeInOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quart.3
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return (0.5f * f2 * f2 * f2 * f2) + 0.0f;
                }
                float f3 = f2 - 2.0f;
                return (((((f3 * f3) * f3) * f3) - 2.0f) * (-0.5f)) + 0.0f;
            }
        };
    }

    public static class Quint {
        public static final TimeInterpolator easeIn = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quint.1
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 1.0f;
                return (1.0f * f2 * f2 * f2 * f2 * f2) + 0.0f;
            }
        };
        public static final TimeInterpolator easeOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quint.2
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = (f / 1.0f) - 1.0f;
                return (((f2 * f2 * f2 * f2 * f2) + 1.0f) * 1.0f) + 0.0f;
            }
        };
        public static final TimeInterpolator easeInOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Quint.3
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return (0.5f * f2 * f2 * f2 * f2 * f2) + 0.0f;
                }
                float f3 = f2 - 2.0f;
                return (((f3 * f3 * f3 * f3 * f3) + 2.0f) * 0.5f) + 0.0f;
            }
        };
    }

    public static class Sine {
        public static final TimeInterpolator easeIn = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Sine.1
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (((float) Math.cos((f / 1.0f) * 1.5707963267948966d)) * (-1.0f)) + 1.0f + 0.0f;
            }
        };
        public static final TimeInterpolator easeOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Sine.2
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (((float) Math.sin((f / 1.0f) * 1.5707963267948966d)) * 1.0f) + 0.0f;
            }
        };
        public static final TimeInterpolator easeInOut = new TimeInterpolator() { // from class: net.frakbot.glowpadbackport.Ease.Sine.3
            @Override // net.frakbot.glowpadbackport.util.TimeInterpolator, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return jo.a((float) Math.cos((f * 3.141592653589793d) / 1.0d), 1.0f, -0.5f, 0.0f);
            }
        };
    }
}
