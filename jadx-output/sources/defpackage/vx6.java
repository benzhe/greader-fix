package defpackage;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class vx6 {
    public static final String a(Context context, String str, String str2) {
        im7.e(context, "context");
        im7.e(str, "channelId");
        im7.e(str2, "channelName");
        im7.e(context, "context");
        im7.e(str, "channelId");
        im7.e(str2, "channelName");
        if (Build.VERSION.SDK_INT < 26) {
            return "";
        }
        NotificationChannel notificationChannel = new NotificationChannel(str, str2, 3);
        notificationChannel.setSound(null, null);
        Object systemService = context.getSystemService("notification");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        return str;
    }

    public static final String b(Context context, String str, String str2, int i) {
        im7.e(context, "context");
        im7.e(str, "channelId");
        im7.e(str2, "channelName");
        if (Build.VERSION.SDK_INT < 26) {
            return "";
        }
        NotificationChannel notificationChannel = new NotificationChannel(str, str2, i);
        notificationChannel.setSound(null, null);
        Object systemService = context.getSystemService("notification");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        return str;
    }
}
