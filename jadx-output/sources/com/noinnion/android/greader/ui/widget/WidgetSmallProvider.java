package com.noinnion.android.greader.ui.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import defpackage.ep6;
import defpackage.u7;
import defpackage.uv6;
import defpackage.yo6;

/* loaded from: classes2.dex */
public class WidgetSmallProvider extends AppWidgetProvider {
    public static SparseArray<long[]> a = new SparseArray<>();
    public static uv6 b = null;

    public static void a(Context context, int i, boolean z) {
        if (b(context).j(i) == null) {
            return;
        }
        AppWidgetManager.getInstance(context).updateAppWidget(i, c(context, i, z));
    }

    public static uv6 b(Context context) {
        if (b == null) {
            b = new uv6(context);
        }
        return b;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a5 A[Catch: all -> 0x00b7, TRY_LEAVE, TryCatch #0 {all -> 0x00b7, blocks: (B:13:0x00a0, B:16:0x00a5), top: B:105:0x00a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.RemoteViews c(final android.content.Context r28, final int r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.widget.WidgetSmallProvider.c(android.content.Context, int, boolean):android.widget.RemoteViews");
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int i, Bundle bundle) {
        super.onAppWidgetOptionsChanged(context, appWidgetManager, i, bundle);
        a.remove(i);
        a(context, i, false);
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
            int intExtra = intent.getIntExtra("appWidgetId", 0);
            String action = intent.getAction();
            if (action.equals("com.noinnion.android.greader.reader.action.WIDGET_UPDATE")) {
                Intent intent2 = new Intent(context, (Class<?>) WidgetService.class);
                intent2.putExtra("app_widget_type", 2);
                intent2.setAction("com.noinnion.android.greader.reader.action.WIDGET_UPDATE");
                Object obj = u7.a;
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(intent2);
                    return;
                } else {
                    context.startService(intent2);
                    return;
                }
            }
            if (!action.equals("com.noinnion.android.greader.reader.action.WIDGET_SYNC") && !action.equals("com.noinnion.android.greader.reader.action.WIDGET_NEXT") && !action.equals("com.noinnion.android.greader.reader.action.WIDGET_PREV") && !action.equals("com.noinnion.android.greader.reader.action.WIDGET_LAST") && !action.equals("com.noinnion.android.greader.reader.action.WIDGET_FIRST")) {
                super.onReceive(context, intent);
                return;
            }
            if (intExtra == 0) {
                return;
            }
            uv6 uv6VarB = b(context);
            int iH = uv6VarB.h(intExtra);
            if (action.equals("com.noinnion.android.greader.reader.action.WIDGET_SYNC")) {
                yo6.g(context, uv6VarB.j(intExtra));
                return;
            }
            if (action.equals("com.noinnion.android.greader.reader.action.WIDGET_NEXT")) {
                uv6VarB.n(intExtra, iH + 1);
                a(context, intExtra, false);
                return;
            }
            if (action.equals("com.noinnion.android.greader.reader.action.WIDGET_PREV")) {
                uv6VarB.n(intExtra, iH - 1);
                a(context, intExtra, false);
                return;
            }
            if (!action.equals("com.noinnion.android.greader.reader.action.WIDGET_LAST")) {
                if (action.equals("com.noinnion.android.greader.reader.action.WIDGET_FIRST")) {
                    uv6VarB.n(intExtra, 0);
                    a(context, intExtra, false);
                    return;
                }
                return;
            }
            long[] jArrT = a.get(intExtra);
            if (jArrT == null) {
                jArrT = ep6.t(context, uv6VarB.j(intExtra), uv6VarB.f(intExtra), uv6VarB.m(intExtra));
                a.put(intExtra, jArrT);
            }
            uv6VarB.n(intExtra, jArrT.length - 1);
            a(context, intExtra, false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        for (int i : iArr) {
            a.remove(i);
            a(context, i, false);
        }
    }
}
