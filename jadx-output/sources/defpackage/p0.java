package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import defpackage.d0;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class p0 {
    public static final ThreadLocal<TypedValue> a = new ThreadLocal<>();
    public static final WeakHashMap<Context, SparseArray<a>> b = new WeakHashMap<>(0);
    public static final Object c = new Object();

    public static class a {
        public final ColorStateList a;
        public final Configuration b;

        public a(ColorStateList colorStateList, Configuration configuration) {
            this.a = colorStateList;
            this.b = configuration;
        }
    }

    public static ColorStateList a(Context context, int i) throws Resources.NotFoundException {
        ColorStateList colorStateListT;
        ColorStateList colorStateList;
        a aVar;
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        synchronized (c) {
            SparseArray<a> sparseArray = b.get(context);
            colorStateListT = null;
            if (sparseArray == null || sparseArray.size() <= 0 || (aVar = sparseArray.get(i)) == null) {
                colorStateList = null;
            } else if (aVar.b.equals(context.getResources().getConfiguration())) {
                colorStateList = aVar.a;
            } else {
                sparseArray.remove(i);
                colorStateList = null;
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        Resources resources = context.getResources();
        ThreadLocal<TypedValue> threadLocal = a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (!(i2 >= 28 && i2 <= 31)) {
            Resources resources2 = context.getResources();
            try {
                colorStateListT = d0.h.t(resources2, resources2.getXml(i), context.getTheme());
            } catch (Exception e) {
                Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            }
        }
        if (colorStateListT == null) {
            Object obj = u7.a;
            return Build.VERSION.SDK_INT >= 23 ? context.getColorStateList(i) : context.getResources().getColorStateList(i);
        }
        synchronized (c) {
            WeakHashMap<Context, SparseArray<a>> weakHashMap = b;
            SparseArray<a> sparseArray2 = weakHashMap.get(context);
            if (sparseArray2 == null) {
                sparseArray2 = new SparseArray<>();
                weakHashMap.put(context, sparseArray2);
            }
            sparseArray2.append(i, new a(colorStateListT, context.getResources().getConfiguration()));
        }
        return colorStateListT;
    }

    public static Drawable b(Context context, int i) {
        return s2.d().f(context, i);
    }
}
