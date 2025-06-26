package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.noinnion.android.greader.receiver.ScheduleReceiver;
import java.util.Calendar;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public final class xo6 {
    public static final void a(Context context) {
        im7.e(context, "c");
        Object systemService = context.getSystemService("alarm");
        if (!(systemService instanceof AlarmManager)) {
            systemService = null;
        }
        AlarmManager alarmManager = (AlarmManager) systemService;
        if (alarmManager != null) {
            Intent intentI = jo.I(context, ScheduleReceiver.class, 268435456);
            int i = ScheduleReceiver.a;
            intentI.putExtra("com.noinnion.android.greader.reader.action.ACTION_CLEAN", true);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 10002, intentI, 134217728);
            im7.d(broadcast, "PendingIntent.getBroadca…tent.FLAG_UPDATE_CURRENT)");
            alarmManager.cancel(broadcast);
        }
        Object systemService2 = context.getSystemService("alarm");
        AlarmManager alarmManager2 = (AlarmManager) (systemService2 instanceof AlarmManager ? systemService2 : null);
        if (alarmManager2 != null) {
            Calendar calendar = Calendar.getInstance();
            im7.d(calendar, "time");
            calendar.setTimeZone(TimeZone.getDefault());
            calendar.add(5, 1);
            calendar.set(11, 4);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            Intent intentI2 = jo.I(context, ScheduleReceiver.class, 268435456);
            int i2 = ScheduleReceiver.a;
            intentI2.putExtra("com.noinnion.android.greader.reader.action.ACTION_CLEAN", true);
            PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 10002, intentI2, 134217728);
            im7.d(broadcast2, "PendingIntent.getBroadca…tent.FLAG_UPDATE_CURRENT)");
            gx6.a(alarmManager2, calendar.getTimeInMillis(), broadcast2);
        }
    }
}
