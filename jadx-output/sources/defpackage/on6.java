package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class on6 {
    public static boolean b = false;
    public static boolean c = true;
    public static hw6 d;
    public static kw6 e;
    public static ep6 f;
    public static ew6 a = new ew6();
    public static j4<ip6> g = new j4<>();
    public static final Map<String, Long> h = new HashMap();
    public static boolean i = false;
    public static int j = 0;
    public static long k = 0;
    public static String l = "local";
    public static int m = 0;
    public static int n = 0;
    public static int o = 0;

    public static void a(Activity activity) {
        if ("".equals(iw6.c(activity))) {
            return;
        }
        activity.finish();
        activity.startActivity(new Intent(activity, activity.getClass()));
    }

    public static synchronized void b() {
        j4<ip6> j4Var = g;
        if (j4Var != null) {
            j4Var.c();
        }
        Map<String, Long> map = h;
        if (map != null) {
            map.clear();
        }
    }

    public static synchronized ip6 c(Context context, long j2, boolean z) {
        if (j2 == 0) {
            return null;
        }
        ip6 ip6VarG = g.g(j2, null);
        if (ip6VarG == null) {
            ip6VarG = ip6.c(context, j2, z);
            if (ip6VarG == null) {
                return null;
            }
            g.i(ip6VarG.e, ip6VarG);
        }
        return ip6VarG;
    }

    public static synchronized long d(Context context, String str) {
        if (str == null) {
            return 0L;
        }
        Map<String, Long> map = h;
        Long lValueOf = map.get(str);
        if (lValueOf == null || lValueOf.longValue() == 0) {
            Uri uri = ip6.A;
            Cursor cursorQuery = context.getContentResolver().query(ip6.A, ip6.D, "uid = ?", new String[]{str}, null);
            if (cursorQuery != null) {
                try {
                    j = cursorQuery.moveToNext() ? cursorQuery.getLong(0) : 0L;
                } finally {
                    cursorQuery.close();
                }
            }
            lValueOf = Long.valueOf(j);
            map.put(str, lValueOf);
        }
        return lValueOf.longValue();
    }

    public static String e(Context context) {
        hw6 hw6VarG = g(context);
        int iB = hw6VarG.b();
        if (iB == 1) {
            return "title COLLATE NOCASE ASC";
        }
        if (iB == 2) {
            return "title COLLATE NOCASE DESC";
        }
        if (iB == 3) {
            return "newest_item_time ASC";
        }
        if (iB == 4) {
            return "newest_item_time DESC";
        }
        StringBuilder sbZ = jo.z("subscription.");
        sbZ.append(hw6VarG.b ? "sort2" : "sort");
        return sbZ.toString();
    }

    public static String f(Context context) {
        hw6 hw6VarG = g(context);
        if (!hw6VarG.h) {
            return hw6VarG.c() == 2 ? "item.updated_time ASC, item._id DESC" : "item.updated_time DESC, item._id ASC";
        }
        StringBuilder sb = new StringBuilder();
        if (hw6VarG.b() == 0) {
            sb.append(hw6VarG.b ? "sub_sort ASC, sub_sort2 ASC" : "sub_sort2 ASC, sub_sort ASC");
            sb.append(", item.sub_id ASC");
        } else {
            sb.append("sub_title COLLATE NOCASE ASC");
        }
        if (hw6VarG.c() == 2) {
            sb.append(", item.updated_time ASC, item._id DESC");
            return sb.toString();
        }
        sb.append(", item.updated_time DESC, item._id ASC");
        return sb.toString();
    }

    public static hw6 g(Context context) {
        if (d == null) {
            d = hw6.a(context);
        }
        return d;
    }

    public static kw6 h(Context context) {
        if (e == null) {
            e = kw6.a(context);
        }
        return e;
    }

    public static ep6 i(Context context) {
        ep6 ep6Var = f;
        if (ep6Var == null) {
            ep6Var = new ep6(context);
        }
        f = ep6Var;
        return ep6Var;
    }

    public static void j(Context context) {
        hw6 hw6Var = d;
        if (hw6Var == null) {
            d = hw6.a(context);
            return;
        }
        Objects.requireNonNull(hw6Var);
        hw6Var.b = iw6.f(context, "feed_only", false);
        hw6Var.c = iw6.m(context, "item_list_view", 0);
        hw6Var.d = iw6.R(context);
        hw6Var.e = iw6.f(context, "view_unread_only", true);
        hw6Var.f = iw6.l(context);
        hw6Var.g = iw6.x(context);
        hw6Var.h = iw6.f(context, "item_group_by_feed", false);
        hw6Var.i = iw6.a0(context);
        hw6Var.j = iw6.P(context);
        hw6Var.k = iw6.O(context);
        hw6Var.l = iw6.f(context, "show_feeds_after_mark_all", false);
        hw6Var.m = iw6.N(context);
        hw6Var.n = iw6.j(context);
        hw6Var.o = iw6.J(context);
        hw6Var.p = iw6.s(context);
        hw6Var.q = iw6.o(context);
        hw6Var.r = iw6.p(context);
        hw6Var.s = iw6.q(context);
        hw6Var.t = iw6.r(context);
        hw6Var.u = iw6.f(context, "offline_save_page_on_star", false);
    }

    public static synchronized void k(long j2) {
        if (j2 != 0) {
            if (g.h(j2) >= 0) {
                g.j(j2);
            }
        }
    }

    public static void l() {
        d = null;
        e = null;
    }
}
