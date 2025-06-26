package defpackage;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import com.google.android.material.R$attr;

/* loaded from: classes.dex */
public final class h75<S> extends rb {
    public static boolean d(Context context) {
        return e(context, R.attr.windowFullscreen);
    }

    public static boolean e(Context context, int i) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(c50.G0(context, R$attr.materialCalendarStyle, a75.class.getCanonicalName()), new int[]{i});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }
}
