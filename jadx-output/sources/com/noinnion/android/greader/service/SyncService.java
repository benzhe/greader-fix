package com.noinnion.android.greader.service;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.util.SparseIntArray;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.login.LoginActivity;
import defpackage.cw6;
import defpackage.ip6;
import defpackage.iw6;
import defpackage.l7;
import defpackage.m7;
import defpackage.n56;
import defpackage.on6;
import defpackage.vd;
import defpackage.vx6;
import defpackage.yd;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.HashMap;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class SyncService extends IntentService {

    public class a extends Binder {
        public a(SyncService syncService) {
        }
    }

    public SyncService() {
        super("SyncService");
    }

    public final String a() {
        return vx6.b(this, "sync_service_v2", getString(R.string.title_synchronization), 3);
    }

    public final void b(IOException iOException) {
        yd.a(this).c(new Intent("com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR"));
        if (n56.H0(getApplicationContext()) != 0) {
            n56.X1(getApplicationContext(), ((Object) getText(R.string.err_io)) + " (" + iOException.getLocalizedMessage() + ")");
        }
    }

    public final void c() {
        yd.a(this).c(new Intent("com.noinnion.android.greader.reader.action.SYNC_SUBS_FINISHED"));
    }

    public final void d(cw6 cw6Var) {
        SparseIntArray sparseIntArray;
        HashMap map;
        int i;
        String string;
        int i2;
        String string2;
        int i3 = cw6Var.a;
        Context applicationContext = getApplicationContext();
        if (iw6.f(applicationContext, "sync_notifiable", true) && i3 != 0) {
            int iM = iw6.m(applicationContext, "sync_last_sync_count", 0) + i3;
            iw6.T(applicationContext, "sync_last_sync_count", iM);
            int iK = iw6.K(applicationContext);
            String str = new MessageFormat(getText(R.string.msg_sync_finished).toString()).format(new Integer[]{Integer.valueOf(iM), Integer.valueOf(iK)});
            Intent intent = new Intent(applicationContext, (Class<?>) LoginActivity.class);
            intent.setAction("android.intent.action.MAIN");
            PendingIntent activity = PendingIntent.getActivity(applicationContext, 0, intent, 0);
            CharSequence text = applicationContext.getText(R.string.title_synchronization);
            long jCurrentTimeMillis = System.currentTimeMillis();
            m7 m7Var = new m7(applicationContext, a());
            m7Var.e(text);
            m7Var.d(str);
            m7Var.j(str);
            m7Var.g = iK;
            Notification notification = m7Var.s;
            notification.icon = R.drawable.ic_notification_app;
            notification.when = jCurrentTimeMillis;
            m7Var.f(16, true);
            m7Var.f = activity;
            boolean zF = iw6.f(applicationContext, "sync_notify_sound", false);
            boolean zF2 = iw6.f(applicationContext, "sync_notify_vibrate", false);
            boolean zF3 = iw6.f(applicationContext, "sync_notify_led", false);
            int i4 = zF2 ? 2 : 0;
            if (zF) {
                String strF = iw6.F(applicationContext, "sync_notify_sound_ringtone");
                if (strF != null) {
                    string2 = strF;
                    i2 = 2;
                } else {
                    i2 = 2;
                    string2 = RingtoneManager.getDefaultUri(2).toString();
                }
                if (string2 == null || string2.equals(RingtoneManager.getDefaultUri(i2).toString())) {
                    i4 |= 1;
                } else {
                    m7Var.h(Uri.parse(string2));
                }
            }
            if (zF3) {
                m7Var.g(-16711936, 500, 2000);
            }
            Notification notification2 = m7Var.s;
            notification2.defaults = i4;
            if ((i4 & 4) != 0) {
                notification2.flags |= 1;
            }
            NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.notify(R.id.notification_sync_finished, m7Var.b());
            }
        }
        Context applicationContext2 = getApplicationContext();
        if (iw6.f(applicationContext2, "sync_notifiable_custom", true) && cw6Var.a != 0 && (sparseIntArray = cw6Var.b) != null && sparseIntArray.size() != 0) {
            Intent intent2 = new Intent(applicationContext2, (Class<?>) LoginActivity.class);
            intent2.setAction("android.intent.action.MAIN");
            PendingIntent activity2 = PendingIntent.getActivity(applicationContext2, 0, intent2, 0);
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            m7 m7Var2 = new m7(applicationContext2, a());
            Notification notification3 = m7Var2.s;
            notification3.icon = R.drawable.ic_notification_app;
            notification3.when = jCurrentTimeMillis2;
            m7Var2.f(16, true);
            m7Var2.f = activity2;
            boolean zF4 = iw6.f(applicationContext2, "sync_notify_custom_sound", false);
            boolean zF5 = iw6.f(applicationContext2, "sync_notify_custom_vibrate", false);
            boolean zF6 = iw6.f(applicationContext2, "sync_notify_custom_led", false);
            int i5 = zF5 ? 2 : 0;
            if (zF4) {
                String strF2 = iw6.F(applicationContext2, "sync_notify_custom_sound_ringtone");
                if (strF2 != null) {
                    string = strF2;
                    i = 2;
                } else {
                    i = 2;
                    string = RingtoneManager.getDefaultUri(2).toString();
                }
                if (string == null || string.equals(RingtoneManager.getDefaultUri(i).toString())) {
                    i5 |= 1;
                } else {
                    m7Var2.h(Uri.parse(string));
                }
            }
            if (zF6) {
                m7Var2.g(-16711936, 500, 2000);
            }
            Notification notification4 = m7Var2.s;
            notification4.defaults = i5;
            if ((i5 & 4) != 0) {
                notification4.flags |= 1;
            }
            l7 l7Var = new l7();
            StringBuilder sb = new StringBuilder();
            Cursor cursorK = new vd(applicationContext2, ip6.A, new String[]{"_id", "title"}, "notification = 1", null, null).k();
            if (cursorK == null) {
                map = null;
            } else {
                HashMap map2 = new HashMap();
                while (cursorK.moveToNext()) {
                    try {
                        map2.put(Integer.valueOf(cursorK.getInt(0)), cursorK.getString(1));
                    } catch (Throwable th) {
                        cursorK.close();
                        throw th;
                    }
                }
                cursorK.close();
                map = map2;
            }
            int i6 = 0;
            int i7 = 0;
            while (i6 < cw6Var.b.size()) {
                int iKeyAt = cw6Var.b.keyAt(i6);
                int i8 = cw6Var.b.get(iKeyAt);
                i7 += i8;
                if (i7 > 0 && map.containsKey(Integer.valueOf(iKeyAt))) {
                    sb.append(i6 == 0 ? "" : ", ");
                    sb.append(StringUtils.abbreviate((String) map.get(Integer.valueOf(iKeyAt)), 20));
                    sb.append(" (");
                    sb.append(i8);
                    sb.append(")");
                }
                i6++;
            }
            if (i7 != 0) {
                String str2 = new MessageFormat(getText(R.string.msg_sync_new_articles).toString()).format(new Integer[]{Integer.valueOf(i7)});
                m7Var2.e(str2);
                m7Var2.j(str2);
                m7Var2.g = i7;
                m7Var2.d(sb);
                l7Var.b = m7.c(sb);
                m7Var2.i(l7Var);
                ((NotificationManager) applicationContext2.getSystemService("notification")).notify(R.id.notification_sync_custom_filter, m7Var2.b());
            }
        }
        Intent intent3 = new Intent("com.noinnion.android.greader.reader.action.START_SYNC_RESULT");
        intent3.putExtra("syncFinished", true);
        yd.a(this).c(intent3);
    }

    public final void e() {
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.START_SYNC_RESULT");
        intent.putExtra("syncStarted", true);
        yd.a(this).c(intent);
    }

    @Override // android.app.IntentService, android.app.Service
    public IBinder onBind(Intent intent) {
        return new a(this);
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        try {
            on6.i(getApplicationContext()).m().setRequestStop(true);
        } catch (Exception unused) {
        }
        stopSelf();
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01d1  */
    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v17, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3, types: [lp6] */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // android.app.IntentService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onHandleIntent(android.content.Intent r17) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.service.SyncService.onHandleIntent(android.content.Intent):void");
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }
}
