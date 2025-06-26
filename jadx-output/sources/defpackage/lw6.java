package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.noinnion.android.reader.R$bool;
import com.noinnion.android.reader.R$drawable;
import com.noinnion.android.reader.R$style;

/* loaded from: classes2.dex */
public class lw6 {
    public static int a = -1;

    public static void a(Activity activity) {
        b(activity, iw6.d(activity));
    }

    public static void b(Activity activity, int i) {
        if (a == i) {
            return;
        }
        a = -1;
        activity.finish();
        activity.startActivity(new Intent(activity, activity.getClass()));
    }

    public static int c(int i) {
        int i2 = i % 5;
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? R$drawable.thumbnail_no_image_1 : R$drawable.thumbnail_no_image_3 : R$drawable.thumbnail_no_image_4 : R$drawable.thumbnail_no_image_5 : R$drawable.thumbnail_no_image_2;
    }

    public static String d(boolean z) {
        if (k()) {
            return z ? "#888888" : "#cccccc";
        }
        if (l()) {
            return z ? "#757577" : "#3d3d3f";
        }
        return z ? "#888888" : "#444444";
    }

    public static int e(Context context) {
        int i = a;
        if (i > -1) {
            return i;
        }
        int iD = iw6.d(context);
        a = iD;
        return iD;
    }

    public static int f() {
        int i = a;
        return i != 1 ? i != 2 ? i != 3 ? i != 5 ? R$drawable.ic_item_keep_unread : R$drawable.ic_item_keep_unread_green : R$drawable.ic_item_keep_unread_sepia : R$drawable.ic_item_keep_unread_black : R$drawable.ic_item_keep_unread_dark;
    }

    public static int g() {
        int i = a;
        return i != 1 ? i != 2 ? i != 3 ? i != 5 ? R$drawable.ic_item_unread : R$drawable.ic_item_unread_green : R$drawable.ic_item_unread_sepia : R$drawable.ic_item_unread_black : R$drawable.ic_item_unread_dark;
    }

    public static int h() {
        return a == 2 ? R$drawable.md_shadow_black : R$drawable.md_shadow;
    }

    public static int i() {
        if (l()) {
            return R$drawable.ic_home_menu_sepia;
        }
        int i = a;
        return i == 0 || i == 5 ? R$drawable.ic_home_menu_light : R$drawable.ic_home_menu_dark;
    }

    public static String j(Context context) {
        int iE = e(context);
        return iE != 1 ? iE != 2 ? iE != 3 ? iE != 5 ? "blue" : "green" : "sepia" : "black" : "dark";
    }

    public static boolean k() {
        int i = a;
        return i == 1 || i == 2;
    }

    public static boolean l() {
        return a == 3;
    }

    public static void m(Activity activity, boolean z) {
        int iD = iw6.d(activity);
        if (iD == 1) {
            activity.setTheme(z ? R$style.AppTheme_Dark_Transparent : R$style.AppTheme_Dark);
        } else if (iD == 2) {
            activity.setTheme(z ? R$style.AppTheme_Black_Transparent : R$style.AppTheme_Black);
        } else if (iD == 3) {
            activity.setTheme(z ? R$style.AppTheme_Sepia_Transparent : R$style.AppTheme_Sepia);
        } else if (iD != 5) {
            activity.setTheme(z ? R$style.AppTheme_Default_Transparent : R$style.AppTheme_Default);
        } else {
            activity.setTheme(z ? R$style.AppTheme_Green_Transparent : R$style.AppTheme_Green);
        }
        a = iD;
    }

    public static boolean n(Context context, boolean z) {
        return context.getResources().getBoolean(R$bool.isTablet) && !z;
    }
}
