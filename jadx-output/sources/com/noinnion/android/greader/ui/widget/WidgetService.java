package com.noinnion.android.greader.ui.widget;

import android.app.Notification;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.widget.RemoteViews;
import com.noinnion.android.greader.reader.R;
import defpackage.m7;
import defpackage.uv6;
import defpackage.vx6;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes2.dex */
public class WidgetService extends Service implements Runnable {
    public static final Queue<Integer> e = new LinkedList();
    public static boolean f = false;
    public static final Object g = new Object();
    public static int h = 0;

    public static void b(int[] iArr) {
        synchronized (g) {
            for (int i : iArr) {
                e.add(Integer.valueOf(i));
            }
        }
    }

    public final void a() {
        Context applicationContext = getApplicationContext();
        CharSequence text = applicationContext.getText(R.string.notification_channel_widget_updates);
        long jCurrentTimeMillis = System.currentTimeMillis();
        m7 m7Var = new m7(applicationContext, vx6.b(this, "widget_service", applicationContext.getString(R.string.notification_channel_widget_updates), 2));
        m7Var.e(text);
        Notification notification = m7Var.s;
        notification.icon = R.drawable.ic_notification_app;
        notification.when = jCurrentTimeMillis;
        m7Var.f(16, true);
        startForeground(R.id.notification_widget_updates, m7Var.b());
    }

    public final void c(Intent intent) {
        Bundle extras = intent.getExtras();
        int i = extras != null ? extras.getInt("appWidgetId", 0) : 0;
        b(i > 0 ? new int[]{i} : AppWidgetManager.getInstance(this).getAppWidgetIds(new ComponentName(this, (Class<?>) WidgetLargeProvider.class)));
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this);
        appWidgetManager.notifyAppWidgetViewDataChanged(appWidgetManager.getAppWidgetIds(new ComponentName(this, (Class<?>) WidgetLargeProvider.class)), R.id.list_view);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        a();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        a();
        if (intent == null) {
            return 2;
        }
        if ("com.noinnion.android.greader.reader.action.WIDGET_UPDATE".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("app_widget_type", 0);
            h = intExtra;
            if (intExtra == 1) {
                b(AppWidgetManager.getInstance(this).getAppWidgetIds(new ComponentName(this, (Class<?>) WidgetIconProvider.class)));
            } else if (intExtra == 2) {
                b(AppWidgetManager.getInstance(this).getAppWidgetIds(new ComponentName(this, (Class<?>) WidgetSmallProvider.class)));
            } else if (intExtra == 3) {
                b(AppWidgetManager.getInstance(this).getAppWidgetIds(new ComponentName(this, (Class<?>) WidgetMediumProvider.class)));
            } else if (intExtra != 4) {
                b(AppWidgetManager.getInstance(this).getAppWidgetIds(new ComponentName(this, (Class<?>) WidgetIconProvider.class)));
                b(AppWidgetManager.getInstance(this).getAppWidgetIds(new ComponentName(this, (Class<?>) WidgetSmallProvider.class)));
                b(AppWidgetManager.getInstance(this).getAppWidgetIds(new ComponentName(this, (Class<?>) WidgetMediumProvider.class)));
                c(intent);
            } else {
                c(intent);
            }
        }
        synchronized (g) {
            if (!f) {
                f = true;
                new Thread(this).start();
            }
        }
        return 2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Queue<Integer> queue;
        boolean z;
        int iIntValue;
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this);
        uv6 uv6Var = new uv6(getBaseContext());
        RemoteViews remoteViewsB = null;
        while (true) {
            Object obj = g;
            synchronized (obj) {
                queue = e;
                z = !queue.isEmpty();
                if (!z) {
                    f = false;
                }
            }
            if (!z) {
                stopSelf();
                return;
            }
            synchronized (obj) {
                iIntValue = queue.peek() == null ? 0 : queue.poll().intValue();
            }
            int i = uv6Var.a.getInt(uv6.g(iIntValue, "widget_type"), 0);
            h = i;
            if (i == 1) {
                remoteViewsB = WidgetIconProvider.b(this, iIntValue);
            } else if (i == 2) {
                remoteViewsB = WidgetSmallProvider.c(this, iIntValue, true);
            } else if (i == 3) {
                remoteViewsB = WidgetMediumProvider.c(this, iIntValue, true);
            } else if (i == 4) {
                remoteViewsB = WidgetLargeProvider.d(this, iIntValue, true);
            }
            if (remoteViewsB != null) {
                appWidgetManager.updateAppWidget(iIntValue, remoteViewsB);
            }
        }
    }
}
