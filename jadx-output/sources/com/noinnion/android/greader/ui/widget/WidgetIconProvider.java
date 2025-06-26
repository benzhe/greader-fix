package com.noinnion.android.greader.ui.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import defpackage.u7;
import defpackage.uv6;

/* loaded from: classes2.dex */
public class WidgetIconProvider extends AppWidgetProvider {
    public static uv6 a;

    public static uv6 a(Context context) {
        if (a == null) {
            a = new uv6(context);
        }
        return a;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.RemoteViews b(android.content.Context r8, int r9) {
        /*
            android.widget.RemoteViews r0 = new android.widget.RemoteViews
            java.lang.String r1 = r8.getPackageName()
            r2 = 2131493140(0x7f0c0114, float:1.8609752E38)
            r0.<init>(r1, r2)
            java.lang.String r1 = "greader://widget/id/"
            android.net.Uri r1 = android.net.Uri.parse(r1)
            java.lang.String r2 = java.lang.String.valueOf(r9)
            android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)
            uv6 r2 = a(r8)
            java.lang.String r2 = r2.j(r9)
            r3 = 0
            if (r2 == 0) goto L86
            int r4 = r2.length()
            if (r4 != 0) goto L2c
            goto L86
        L2c:
            boolean r4 = defpackage.iw6.a0(r8)
            boolean r4 = defpackage.lw6.n(r8, r4)
            if (r4 == 0) goto L39
            java.lang.Class<com.noinnion.android.greader.ui.home.HomeTabletActivity> r4 = com.noinnion.android.greader.ui.home.HomeTabletActivity.class
            goto L3b
        L39:
            java.lang.Class<com.noinnion.android.greader.ui.home.HomeActivity> r4 = com.noinnion.android.greader.ui.home.HomeActivity.class
        L3b:
            android.content.Intent r5 = new android.content.Intent
            r5.<init>(r8, r4)
            java.lang.String r4 = "user/"
            boolean r4 = r2.startsWith(r4)
            if (r4 != 0) goto L78
            java.lang.String r4 = "@"
            boolean r4 = r2.startsWith(r4)
            if (r4 == 0) goto L51
            goto L78
        L51:
            java.lang.String r4 = "feed/"
            boolean r4 = r2.startsWith(r4)
            if (r4 == 0) goto L69
            ip6 r2 = defpackage.ip6.d(r8, r2, r3)
            if (r2 == 0) goto L76
            int r4 = r2.m
            long r6 = r2.e
            java.lang.String r2 = "subId"
            r5.putExtra(r2, r6)
            goto L8b
        L69:
            java.lang.String r4 = "all"
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L76
            int r4 = defpackage.iw6.K(r8)
            goto L8b
        L76:
            r4 = 0
            goto L8b
        L78:
            lp6 r4 = defpackage.lp6.b(r8, r2, r3)
            if (r4 == 0) goto L76
            int r4 = r4.j
            java.lang.String r6 = "tagUid"
            r5.putExtra(r6, r2)
            goto L8b
        L86:
            int r4 = defpackage.iw6.K(r8)
            r5 = 0
        L8b:
            r2 = 2131297127(0x7f090367, float:1.821219E38)
            if (r4 <= 0) goto L9b
            java.lang.String r4 = java.lang.String.valueOf(r4)
            r0.setTextViewText(r2, r4)
            r0.setViewVisibility(r2, r3)
            goto La0
        L9b:
            r4 = 8
            r0.setViewVisibility(r2, r4)
        La0:
            uv6 r2 = a(r8)
            java.lang.String r9 = r2.l(r9)
            boolean r2 = android.text.TextUtils.isEmpty(r9)
            if (r2 != 0) goto Lb4
            r2 = 2131297125(0x7f090365, float:1.8212186E38)
            r0.setTextViewText(r2, r9)
        Lb4:
            if (r5 != 0) goto Lc2
            android.content.Intent r5 = new android.content.Intent
            java.lang.Class<com.noinnion.android.greader.ui.login.LoginActivity> r9 = com.noinnion.android.greader.ui.login.LoginActivity.class
            r5.<init>(r8, r9)
            java.lang.String r9 = "android.intent.action.MAIN"
            r5.setAction(r9)
        Lc2:
            java.lang.String r9 = "force_recreate"
            r2 = 1
            r5.putExtra(r9, r2)
            java.lang.String r9 = "startup_sync"
            r5.putExtra(r9, r2)
            r5.setData(r1)
            r9 = 134217728(0x8000000, float:3.85186E-34)
            android.app.PendingIntent r8 = android.app.PendingIntent.getActivity(r8, r3, r5, r9)
            r9 = 2131297121(0x7f090361, float:1.8212178E38)
            r0.setOnClickPendingIntent(r9, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.widget.WidgetIconProvider.b(android.content.Context, int):android.widget.RemoteViews");
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        uv6 uv6VarA = a(context);
        for (int i : iArr) {
            uv6VarA.a(i);
        }
        super.onDeleted(context, iArr);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            if (action == null || !action.equals("com.noinnion.android.greader.reader.action.WIDGET_UPDATE")) {
                super.onReceive(context, intent);
            } else {
                Intent intent2 = new Intent(context, (Class<?>) WidgetService.class);
                intent2.putExtra("app_widget_type", 1);
                intent2.setAction("com.noinnion.android.greader.reader.action.WIDGET_UPDATE");
                Object obj = u7.a;
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(intent2);
                } else {
                    context.startService(intent2);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        for (int i : iArr) {
            AppWidgetManager.getInstance(context).updateAppWidget(i, b(context, i));
        }
    }
}
