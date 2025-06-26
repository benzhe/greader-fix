package defpackage;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.receiver.ScheduleReceiver;
import com.noinnion.android.greader.service.SyncService;

/* loaded from: classes2.dex */
public final class yo6 {
    public static final PendingIntent a(Context context) {
        Intent intentI = jo.I(context, ScheduleReceiver.class, 268435456);
        int i = ScheduleReceiver.a;
        intentI.putExtra("com.noinnion.android.greader.reader.action.ACTION_SYNC", true);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 10001, intentI, 134217728);
        im7.d(broadcast, "PendingIntent.getBroadca…tent.FLAG_UPDATE_CURRENT)");
        return broadcast;
    }

    public static final void b(Context context) {
        Object systemService = context.getSystemService("alarm");
        if (!(systemService instanceof AlarmManager)) {
            systemService = null;
        }
        AlarmManager alarmManager = (AlarmManager) systemService;
        if (alarmManager != null) {
            alarmManager.cancel(a(context));
        }
    }

    public static final void c(Context context) {
        im7.e(context, "c");
        d(context);
    }

    public static final void d(Context context) {
        b(context);
        long jH = iw6.H(context);
        if (jH > 0) {
            Object systemService = context.getSystemService("alarm");
            if (!(systemService instanceof AlarmManager)) {
                systemService = null;
            }
            AlarmManager alarmManager = (AlarmManager) systemService;
            if (alarmManager != null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jZ = iw6.z(context);
                if (jZ > 0) {
                    jH = (((((jCurrentTimeMillis - jZ) / jH) + 1) * jH) + jZ) - jCurrentTimeMillis;
                }
                gx6.a(alarmManager, jCurrentTimeMillis + jH, a(context));
            }
        }
    }

    public static final void e(Context context, boolean z, boolean z2) {
        im7.e(context, "a");
        if (z2) {
            f(context, z);
        } else {
            h(context, z);
        }
    }

    public static final void f(Context context, boolean z) {
        im7.e(context, "a");
        Intent intent = new Intent(context, (Class<?>) SyncService.class);
        intent.putExtra("manual_sync", true);
        if (z) {
            intent.putExtra("sync_offline", true);
        }
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static final void g(Context context, String str) {
        im7.e(context, "c");
        Intent intent = new Intent(context, (Class<?>) SyncService.class);
        if (str != null) {
            if (str.length() > 0) {
                if (co7.A(str, "user/", false, 2)) {
                    intent.putExtra("tagUid", str);
                } else if (co7.A(str, RssReaderClient.USER_FEED, false, 2)) {
                    intent.putExtra("subUid", str);
                } else {
                    intent.putExtra("manual_sync", true);
                }
            }
        }
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
        n56.X1(context, context.getText(R.string.msg_sync_started));
    }

    public static final void h(Context context, boolean z) {
        im7.e(context, "a");
        Intent intent = new Intent(context, (Class<?>) SyncService.class);
        ew6 ew6Var = on6.a;
        ip6 ip6Var = ew6Var.a;
        if (ip6Var != null) {
            intent.putExtra("subId", ip6Var.e);
        } else {
            lp6 lp6Var = ew6Var.b;
            if (lp6Var != null) {
                intent.putExtra("tagUid", lp6Var.f);
            } else {
                d(context);
                intent.putExtra("manual_sync", true);
            }
        }
        if (z) {
            intent.putExtra("sync_offline", true);
        }
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static final void i(Activity activity) {
        im7.e(activity, "a");
        activity.stopService(new Intent(activity, (Class<?>) SyncService.class));
    }
}
