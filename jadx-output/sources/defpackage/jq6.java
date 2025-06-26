package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.noinnion.android.greader.receiver.ScheduleReceiver;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes2.dex */
public class jq6 extends vm6 {
    public jq6(Context context) {
        super(context);
    }

    @Override // defpackage.vm6
    public Object c(Object obj) {
        Context context = this.a;
        im7.e(context, "c");
        Object systemService = context.getSystemService("alarm");
        if (!(systemService instanceof AlarmManager)) {
            systemService = null;
        }
        AlarmManager alarmManager = (AlarmManager) systemService;
        if (alarmManager != null) {
            Intent intentI = jo.I(context, ScheduleReceiver.class, 268435456);
            int i = ScheduleReceiver.a;
            intentI.putExtra("com.noinnion.android.greader.reader.action.ACTION_SYNC", true);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 10001, intentI, 134217728);
            im7.d(broadcast, "PendingIntent.getBroadca…tent.FLAG_UPDATE_CURRENT)");
            alarmManager.cancel(broadcast);
        }
        im7.e(context, "c");
        Object systemService2 = context.getSystemService("alarm");
        if (!(systemService2 instanceof AlarmManager)) {
            systemService2 = null;
        }
        AlarmManager alarmManager2 = (AlarmManager) systemService2;
        if (alarmManager2 != null) {
            Intent intentI2 = jo.I(context, ScheduleReceiver.class, 268435456);
            int i2 = ScheduleReceiver.a;
            intentI2.putExtra("com.noinnion.android.greader.reader.action.ACTION_CLEAN", true);
            PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 10002, intentI2, 134217728);
            im7.d(broadcast2, "PendingIntent.getBroadca…tent.FLAG_UPDATE_CURRENT)");
            alarmManager2.cancel(broadcast2);
        }
        n56.l0(context);
        n56.m0(context);
        n56.n0(context);
        int i3 = cn6.b;
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.remove("login_method");
        editorEdit.remove("google_auth");
        editorEdit.remove("google_auth_time");
        editorEdit.remove("user_id");
        editorEdit.commit();
        on6.f = null;
        return null;
    }
}
