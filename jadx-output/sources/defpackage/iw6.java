package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class iw6 {
    public static final Method a;

    static {
        Method method;
        try {
            method = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
        } catch (NoSuchMethodException unused) {
            method = null;
        }
        a = method;
    }

    public static long A(Context context, String str, long j) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context).getLong(str, j);
        } catch (RuntimeException unused) {
            return j;
        }
    }

    public static int B(Context context) {
        String strF = F(context, "offline_autoload_reading_mode");
        if (strF == null || strF.length() == 0) {
            return 0;
        }
        return Integer.parseInt(strF);
    }

    public static String C(Context context) {
        return F(context, "cache_offline_location");
    }

    public static int D(Context context) {
        String strF = F(context, "offline_feed_items_limit");
        if (strF == null || strF.length() == 0) {
            return 50;
        }
        return Integer.parseInt(strF);
    }

    public static int E(Context context) {
        String strF = F(context, "rich_show_thumb");
        if (strF == null || strF.length() == 0) {
            return 2;
        }
        return Integer.parseInt(strF);
    }

    public static String F(Context context, String str) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(str, null);
    }

    public static String G(Context context, String str, String str2) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context).getString(str, str2);
        } catch (RuntimeException unused) {
            return str2;
        }
    }

    public static long H(Context context) {
        if (e(context) == 0) {
            return 0L;
        }
        String strF = F(context, "sync_interval_hours");
        int iM = 60;
        if (strF != null && strF.length() != 0) {
            iM = Integer.parseInt(strF) * 60;
        }
        if (iM == 0) {
            iM = m(context, "sync_custom_interval", 30);
        }
        return iM * 60000;
    }

    public static int I(Context context) {
        String strF = F(context, "sync_item_limit");
        if (strF == null || strF.length() == 0) {
            return 1000;
        }
        return Integer.parseInt(strF);
    }

    public static int J(Context context) {
        String strF = F(context, "service_tts");
        if (strF == null || strF.length() == 0) {
            return 2;
        }
        return Integer.parseInt(strF);
    }

    public static int K(Context context) {
        return m(context, "unread_count", 0);
    }

    public static int L(Context context) {
        String strF = F(context, "item_user_agent");
        if (strF == null || strF.length() == 0) {
            return 0;
        }
        return Integer.parseInt(strF);
    }

    public static boolean M(Context context) {
        String strF = F(context, "sync_auto_update");
        if (strF == null || strF.length() == 0) {
            return true;
        }
        return b(context, Integer.parseInt(strF));
    }

    public static boolean N(Context context) {
        return f(context, "fullscreen", false);
    }

    public static boolean O(Context context) {
        return f(context, "home_hide_article_list", false);
    }

    public static boolean P(Context context) {
        return f(context, "home_landscape_dual_pane", true);
    }

    public static boolean Q(Context context) {
        return f(context, "item_inapp_browser", true);
    }

    public static boolean R(Context context) {
        return f(context, "rich_article_list", true);
    }

    public static void S(Context context, String str, boolean z) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.putBoolean(str, z);
        a(editorEdit);
    }

    public static void T(Context context, String str, int i) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.putInt(str, i);
        a(editorEdit);
    }

    public static void U(Context context, String str, long j) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.putLong(str, j);
        a(editorEdit);
    }

    public static void V(Context context, String str, String str2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.putString(str, str2);
        a(editorEdit);
    }

    public static void W(Context context) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        X(context, "service_instapaper_username");
        X(context, "service_instapaper_password");
    }

    public static void X(Context context, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.remove(str);
        a(editorEdit);
    }

    public static void Y(Context context) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        X(context, "service_ril_username");
        X(context, "service_ril_password");
    }

    public static void Z(Context context, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        V(context, "cache_auto_clean_read", String.valueOf(i));
    }

    public static void a(SharedPreferences.Editor editor) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = a;
        if (method != null) {
            try {
                method.invoke(editor, new Object[0]);
                return;
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        editor.commit();
    }

    public static boolean a0(Context context) {
        return f(context, "use_phone_ui", false);
    }

    public static boolean b(Context context, int i) {
        int iH0 = n56.H0(context);
        if (i != 0) {
            return i != 2 || iH0 == 2;
        }
        return false;
    }

    public static String c(Context context) {
        return G(context, "application_language", "");
    }

    public static int d(Context context) {
        boolean zF = f(context, "application_theme_auto_dark", true);
        boolean z = (context.getResources().getConfiguration().uiMode & 48) == 32;
        if (zF && z) {
            String strF = F(context, "application_theme_dark");
            if (strF == null || strF.length() == 0) {
                return 1;
            }
            return Integer.parseInt(strF);
        }
        String strF2 = F(context, "application_theme");
        if (strF2 == null || strF2.length() == 0) {
            return 0;
        }
        return Integer.parseInt(strF2);
    }

    public static int e(Context context) {
        String strF = F(context, "sync_auto_update");
        if (strF == null || strF.length() == 0) {
            return 1;
        }
        return Integer.parseInt(strF);
    }

    public static boolean f(Context context, String str, boolean z) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, z);
    }

    public static String g(Context context) {
        String strF = F(context, "db_cache_location");
        return (strF == null || strF.length() == 0) ? "local" : strF;
    }

    public static int h(Context context) {
        String strF = F(context, "item_double_tap_action");
        if (strF == null || strF.length() == 0) {
            return 9;
        }
        return Integer.parseInt(strF);
    }

    public static int i(Context context) {
        String strF = F(context, "fab_opacity");
        if (strF == null || strF.length() == 0) {
            return 100;
        }
        return Integer.parseInt(strF);
    }

    public static int j(Context context) {
        String strF = F(context, "fab_position");
        return (strF == null || strF.length() == 0) ? lw6.n(context, a0(context)) ? 0 : 2 : Integer.parseInt(strF);
    }

    public static int k(Context context) {
        String strF = F(context, "fab_style");
        if (strF == null || strF.length() == 0) {
            return 1;
        }
        return Integer.parseInt(strF);
    }

    public static int l(Context context) {
        String strF = F(context, "feed_sort_type");
        if (strF == null || strF.length() == 0) {
            return 4;
        }
        return Integer.parseInt(strF);
    }

    public static int m(Context context, String str, int i) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context).getInt(str, i);
        } catch (RuntimeException unused) {
            return i;
        }
    }

    public static int n(Context context) {
        String strF = F(context, "item_list_font_size");
        if (strF == null || strF.length() == 0) {
            return 16;
        }
        return Integer.parseInt(strF);
    }

    public static int o(Context context) {
        String strF = F(context, "item_list_left_action");
        if (strF == null || strF.length() == 0) {
            return 3;
        }
        return Integer.parseInt(strF);
    }

    public static int p(Context context) {
        String strF = F(context, "item_list_right_action");
        if (strF == null || strF.length() == 0) {
            return 1;
        }
        return Integer.parseInt(strF);
    }

    public static int q(Context context) {
        String strF = F(context, "item_list_swipe_action_ltr");
        if (strF == null || strF.length() == 0) {
            return 0;
        }
        return Integer.parseInt(strF);
    }

    public static int r(Context context) {
        String strF = F(context, "item_list_swipe_action_rtl");
        if (strF == null || strF.length() == 0) {
            return 0;
        }
        return Integer.parseInt(strF);
    }

    public static int s(Context context) {
        String strF = F(context, "item_list_volume_key_action");
        if (strF == null || strF.length() == 0) {
            return 1;
        }
        return Integer.parseInt(strF);
    }

    public static int t(Context context) {
        String strF = F(context, "item_images_loading");
        if (strF == null || strF.length() == 0) {
            return 1;
        }
        return Integer.parseInt(strF);
    }

    public static int u(Context context) {
        String strF = F(context, "item_load_link");
        if (strF == null || strF.length() == 0) {
            return 0;
        }
        return Integer.parseInt(strF);
    }

    public static int v(Context context) {
        String strF = F(context, "item_nav_bar");
        if (strF == null || strF.length() == 0) {
            return 1;
        }
        return Integer.parseInt(strF);
    }

    public static int w(Context context) {
        String strF = F(context, "item_navigation_gesture");
        if (strF == null || strF.length() == 0) {
            return 1;
        }
        return Integer.parseInt(strF);
    }

    public static int x(Context context) {
        return m(context, "item_sort_type", 1);
    }

    public static int y(Context context) {
        String strF = F(context, "item_volume_key_action");
        if (strF == null || strF.length() == 0) {
            return 1;
        }
        return Integer.parseInt(strF);
    }

    public static long z(Context context) {
        return A(context, "last_sync_time", 0L);
    }
}
