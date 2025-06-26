package butterknife.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import defpackage.d0;
import defpackage.jo;
import defpackage.u7;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class Utils {
    private static final TypedValue VALUE = new TypedValue();

    private Utils() {
        throw new AssertionError("No instances.");
    }

    @SafeVarargs
    public static <T> T[] arrayFilteringNull(T... tArr) {
        int length = tArr.length;
        int i = 0;
        for (T t : tArr) {
            if (t != null) {
                tArr[i] = t;
                i++;
            }
        }
        return i == length ? tArr : (T[]) Arrays.copyOf(tArr, i);
    }

    public static <T> T castParam(Object obj, String str, int i, String str2, int i2, Class<T> cls) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            StringBuilder sbZ = jo.z("Parameter #");
            sbZ.append(i + 1);
            sbZ.append(" of method '");
            sbZ.append(str);
            sbZ.append("' was of the wrong type for parameter #");
            sbZ.append(i2 + 1);
            sbZ.append(" of method '");
            throw new IllegalStateException(jo.s(sbZ, str2, "'. See cause for more info."), e);
        }
    }

    public static <T> T castView(View view, int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            String resourceEntryName = getResourceEntryName(view, i);
            StringBuilder sb = new StringBuilder();
            sb.append("View '");
            sb.append(resourceEntryName);
            sb.append("' with ID ");
            sb.append(i);
            sb.append(" for ");
            throw new IllegalStateException(jo.s(sb, str, " was of the wrong type. See cause for more info."), e);
        }
    }

    public static <T> T findOptionalViewAsType(View view, int i, String str, Class<T> cls) {
        return (T) castView(view.findViewById(i), i, str, cls);
    }

    public static View findRequiredView(View view, int i, String str) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        String resourceEntryName = getResourceEntryName(view, i);
        StringBuilder sb = new StringBuilder();
        sb.append("Required view '");
        sb.append(resourceEntryName);
        sb.append("' with ID ");
        sb.append(i);
        sb.append(" for ");
        throw new IllegalStateException(jo.s(sb, str, " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation."));
    }

    public static <T> T findRequiredViewAsType(View view, int i, String str, Class<T> cls) {
        return (T) castView(findRequiredView(view, i, str), i, str, cls);
    }

    public static float getFloat(Context context, int i) throws Resources.NotFoundException {
        TypedValue typedValue = VALUE;
        context.getResources().getValue(i, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        StringBuilder sbZ = jo.z("Resource ID #0x");
        sbZ.append(Integer.toHexString(i));
        sbZ.append(" type #0x");
        sbZ.append(Integer.toHexString(typedValue.type));
        sbZ.append(" is not valid");
        throw new Resources.NotFoundException(sbZ.toString());
    }

    private static String getResourceEntryName(View view, int i) {
        return view.isInEditMode() ? "<unavailable while editing>" : view.getContext().getResources().getResourceEntryName(i);
    }

    public static Drawable getTintedDrawable(Context context, int i, int i2) {
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = VALUE;
        if (theme.resolveAttribute(i2, typedValue, true)) {
            Object obj = u7.a;
            Drawable drawableL0 = d0.h.l0(context.getDrawable(i).mutate());
            drawableL0.setTint(u7.b(context, typedValue.resourceId));
            return drawableL0;
        }
        StringBuilder sbZ = jo.z("Required tint color attribute with name ");
        sbZ.append(context.getResources().getResourceEntryName(i2));
        sbZ.append(" and attribute ID ");
        sbZ.append(i2);
        sbZ.append(" was not found.");
        throw new Resources.NotFoundException(sbZ.toString());
    }

    @SafeVarargs
    public static <T> List<T> listFilteringNull(T... tArr) {
        return new ImmutableList(arrayFilteringNull(tArr));
    }
}
