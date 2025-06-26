package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class sk {
    public static final String a = vj.e("Alarms");

    public static void a(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, tk.b(context, str), 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        vj.c().a(a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    public static void b(Context context, nk nkVar, String str, long j) {
        int i;
        zl zlVar = (zl) nkVar.c.l();
        xl xlVarA = zlVar.a(str);
        if (xlVarA != null) {
            a(context, str, xlVarA.b);
            c(context, str, xlVarA.b, j);
            return;
        }
        synchronized (nm.class) {
            int i2 = 0;
            SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
            i = sharedPreferences.getInt("next_alarm_manager_id", 0);
            if (i != Integer.MAX_VALUE) {
                i2 = i + 1;
            }
            sharedPreferences.edit().putInt("next_alarm_manager_id", i2).apply();
        }
        zlVar.b(new xl(str, i));
        c(context, str, i, j);
    }

    public static void c(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, tk.b(context, str), 1073741824);
        if (alarmManager != null) {
            alarmManager.setExact(0, j, service);
        }
    }
}
