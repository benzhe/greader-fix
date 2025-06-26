package com.noinnion.android.greader.ui.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.HomeActivity;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;
import com.noinnion.android.greader.ui.item.ItemActivity;
import defpackage.iw6;
import defpackage.lw6;
import defpackage.n56;
import defpackage.u7;
import defpackage.uv6;
import defpackage.yo6;

/* loaded from: classes2.dex */
public class WidgetLargeProvider extends AppWidgetProvider {
    public static uv6 a;

    public static void a(Context context, int i, boolean z) {
        if (b(context).j(i) == null) {
            return;
        }
        AppWidgetManager.getInstance(context).updateAppWidget(i, d(context, i, z));
    }

    public static uv6 b(Context context) {
        if (a == null) {
            a = new uv6(context);
        }
        return a;
    }

    public static RemoteViews d(Context context, int i, boolean z) {
        if (z) {
            WidgetProvider.b(context, i);
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            appWidgetManager.notifyAppWidgetViewDataChanged(appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) WidgetLargeProvider.class)), R.id.list_view);
        }
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_large_v11);
        Intent intent = new Intent(context, (Class<?>) WidgetLargeV11Service.class);
        intent.putExtra("appWidgetId", i);
        intent.setData(Uri.parse(intent.toUri(1)));
        remoteViews.setRemoteAdapter(i, R.id.list_view, intent);
        remoteViews.setEmptyView(R.id.list_view, R.id.empty_view);
        Intent intent2 = new Intent(context, (Class<?>) WidgetLargeProvider.class);
        intent2.setAction("com.noinnion.android.greader.reader.action.WIDGET_ITEM_CLICK");
        intent2.putExtra("appWidgetId", i);
        intent2.setData(Uri.parse(intent2.toUri(1)));
        remoteViews.setPendingIntentTemplate(R.id.list_view, PendingIntent.getBroadcast(context, 0, intent2, 134217728));
        int iD = b(context).d(i);
        int iC = b(context).c(i);
        int iK = b(context).k(i);
        remoteViews.setInt(R.id.widget, "setBackgroundColor", n56.B0(iC, iD));
        remoteViews.setInt(R.id.widget_channel, "setTextColor", iK);
        remoteViews.setInt(R.id.empty_view, "setTextColor", iK);
        remoteViews.setInt(R.id.icon, "setColorFilter", iK);
        remoteViews.setInt(R.id.settings, "setColorFilter", iK);
        remoteViews.setInt(R.id.refresh, "setColorFilter", iK);
        remoteViews.setImageViewResource(R.id.icon, R.drawable.icon_white);
        remoteViews.setTextViewText(R.id.widget_channel, b(context).l(i));
        Uri uriWithAppendedPath = Uri.withAppendedPath(Uri.parse("greader://widget/id/"), String.valueOf(i));
        String strJ = b(context).j(i);
        String str = null;
        String str2 = (strJ == null || !strJ.startsWith(RssReaderClient.USER_FEED)) ? null : strJ;
        if (strJ != null && strJ.startsWith("user/")) {
            str = strJ;
        }
        Intent intent3 = new Intent(context, (Class<?>) (lw6.n(context, iw6.a0(context)) ? HomeTabletActivity.class : HomeActivity.class));
        intent3.setData(uriWithAppendedPath);
        if (str2 != null) {
            intent3.putExtra("subUid", str2);
        }
        if (str != null) {
            intent3.putExtra("tagUid", str);
        }
        intent3.putExtra("force_recreate", true);
        intent3.putExtra("startup_sync", true);
        remoteViews.setOnClickPendingIntent(R.id.widget_channel, PendingIntent.getActivity(context, 0, intent3, 134217728));
        Intent intent4 = new Intent(context, (Class<?>) WidgetLargeProvider.class);
        intent4.setData(uriWithAppendedPath);
        intent4.setAction("com.noinnion.android.greader.reader.action.WIDGET_SYNC");
        intent4.putExtra("appWidgetId", i);
        remoteViews.setOnClickPendingIntent(R.id.refresh, PendingIntent.getBroadcast(context, 0, intent4, 134217728));
        Intent intent5 = new Intent(context, (Class<?>) WidgetLargeConfigureActivity.class);
        intent5.setData(uriWithAppendedPath);
        intent5.putExtra("appWidgetId", i);
        intent5.putExtra("app_widget_type", 4);
        intent5.putExtra("app_widget_tag", strJ);
        intent5.addFlags(134217728);
        remoteViews.setOnClickPendingIntent(R.id.settings, PendingIntent.getActivity(context, 0, intent5, 134217728));
        return remoteViews;
    }

    public final void c(Context context, Intent intent) {
        int intExtra = intent.getIntExtra("cursorPosition", -1);
        if (intExtra == -1) {
            return;
        }
        int i = intent.getExtras().getInt("appWidgetId", 0);
        Uri uriWithAppendedPath = Uri.withAppendedPath(Uri.parse("greader://widget/id/"), String.valueOf(i));
        String strJ = b(context).j(i);
        boolean zM = b(context).m(i);
        String str = (strJ == null || !strJ.startsWith(RssReaderClient.USER_FEED)) ? null : strJ;
        if (strJ == null || !strJ.startsWith("user/")) {
            strJ = null;
        }
        Intent intent2 = new Intent(context, (Class<?>) ItemActivity.class);
        intent2.setData(uriWithAppendedPath);
        if (str != null) {
            intent2.putExtra("subUid", str);
        }
        if (strJ != null) {
            intent2.putExtra("tagUid", strJ);
        }
        long longExtra = intent.getLongExtra("itemId", 0L);
        if (longExtra > 0) {
            intent2.putExtra("itemId", longExtra);
        }
        intent2.putExtra("cursorPosition", intExtra);
        intent2.putExtra("page", (intExtra / 50) + 1);
        intent2.putExtra("unreadOnly", zM);
        intent2.putExtra("force_recreate", true);
        intent2.addFlags(268435456);
        intent2.addFlags(134217728);
        context.startActivity(intent2);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        uv6 uv6VarB = b(context);
        for (int i : iArr) {
            uv6VarB.a(i);
        }
        super.onDeleted(context, iArr);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            uv6 uv6VarB = b(context);
            int intExtra = intent.getIntExtra("appWidgetId", 0);
            String action = intent.getAction();
            if (action != null && action.equals("com.noinnion.android.greader.reader.action.WIDGET_UPDATE")) {
                Intent intent2 = new Intent(context, (Class<?>) WidgetService.class);
                intent2.putExtra("app_widget_type", 4);
                intent2.setAction("com.noinnion.android.greader.reader.action.WIDGET_UPDATE");
                Object obj = u7.a;
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(intent2);
                } else {
                    context.startService(intent2);
                }
            } else if (action != null && action.equals("com.noinnion.android.greader.reader.action.WIDGET_LARGE_UPDATE")) {
                Intent intent3 = new Intent(context, (Class<?>) WidgetService.class);
                intent3.putExtra("app_widget_type", 4);
                intent3.putExtra("appWidgetId", intExtra);
                intent3.setAction("com.noinnion.android.greader.reader.action.WIDGET_UPDATE");
                Object obj2 = u7.a;
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(intent3);
                } else {
                    context.startService(intent3);
                }
            } else if (action != null && action.equals("com.noinnion.android.greader.reader.action.WIDGET_SYNC")) {
                yo6.g(context, uv6VarB.j(intExtra));
            } else if ("android.appwidget.action.APPWIDGET_DELETED".equals(action)) {
                int i = intent.getExtras().getInt("appWidgetId", 0);
                if (i != 0) {
                    onDeleted(context, new int[]{i});
                }
            } else if (TextUtils.equals(action, "com.noinnion.android.greader.reader.action.WIDGET_ITEM_CLICK")) {
                c(context, intent);
            } else {
                super.onReceive(context, intent);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        for (int i : iArr) {
            a(context, i, false);
        }
    }
}
