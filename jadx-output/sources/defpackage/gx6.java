package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build;

/* loaded from: classes2.dex */
public final class gx6 {
    public static final void a(AlarmManager alarmManager, long j, PendingIntent pendingIntent) {
        im7.e(alarmManager, "am");
        im7.e(pendingIntent, i00.KEY_PENDING_INTENT);
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(0, j, pendingIntent);
        } else {
            alarmManager.setExact(0, j, pendingIntent);
        }
    }
}
