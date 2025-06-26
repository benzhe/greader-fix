package defpackage;

import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class l55 extends Property<Drawable, Integer> {
    public static final Property<Drawable, Integer> b = new l55();
    public final WeakHashMap<Drawable, Integer> a;

    public l55() {
        super(Integer.class, "drawableAlphaCompat");
        this.a = new WeakHashMap<>();
    }

    @Override // android.util.Property
    public Integer get(Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    public void set(Drawable drawable, Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
