package defpackage;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class ba5 {
    public static final int[] a = {R.attr.state_pressed};
    public static final int[] b = {R.attr.state_hovered, R.attr.state_focused};
    public static final int[] c = {R.attr.state_focused};
    public static final int[] d = {R.attr.state_hovered};
    public static final int[] e = {R.attr.state_selected, R.attr.state_pressed};
    public static final int[] f = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
    public static final int[] g = {R.attr.state_selected, R.attr.state_focused};
    public static final int[] h = {R.attr.state_selected, R.attr.state_hovered};
    public static final int[] i = {R.attr.state_selected};
    public static final int[] j = {R.attr.state_enabled, R.attr.state_pressed};
    public static final String k = ba5.class.getSimpleName();

    public static ColorStateList a(ColorStateList colorStateList) {
        return new ColorStateList(new int[][]{i, StateSet.NOTHING}, new int[]{b(colorStateList, e), b(colorStateList, a)});
    }

    public static int b(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return d8.h(colorForState, Math.min(Color.alpha(colorForState) * 2, Base64.BASELENGTH));
    }

    public static ColorStateList c(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 22 && i2 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(j, 0)) != 0) {
            Log.w(k, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }

    public static boolean d(int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z = true;
            } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
