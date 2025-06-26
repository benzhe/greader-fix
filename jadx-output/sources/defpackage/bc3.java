package defpackage;

import android.util.DisplayMetrics;

/* loaded from: classes.dex */
public final class bc3 {
    public static final /* synthetic */ int a = 0;

    static {
        "0123456789abcdef".toCharArray();
    }

    public static long a(double d, DisplayMetrics displayMetrics) {
        return Math.round(d / displayMetrics.density);
    }

    public static boolean b(String str) {
        return str == null || str.isEmpty();
    }
}
