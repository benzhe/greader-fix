package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ci {
    public static final ii a;
    public static final Property<View, Float> b;

    public static class a extends Property<View, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(ci.a(view));
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            float fFloatValue = f.floatValue();
            ci.a.e(view, fFloatValue);
        }
    }

    public static class b extends Property<View, Rect> {
        public b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Rect get(View view) {
            AtomicInteger atomicInteger = ha.a;
            return view.getClipBounds();
        }

        @Override // android.util.Property
        public void set(View view, Rect rect) {
            AtomicInteger atomicInteger = ha.a;
            view.setClipBounds(rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            a = new hi();
        } else if (i >= 23) {
            a = new gi();
        } else if (i >= 22) {
            a = new fi();
        } else {
            a = new ei();
        }
        b = new a(Float.class, "translationAlpha");
        new b(Rect.class, "clipBounds");
    }

    public static float a(View view) {
        return a.b(view);
    }

    public static void b(View view, int i, int i2, int i3, int i4) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        a.d(view, i, i2, i3, i4);
    }
}
