package com.noinnion.android.greader.ui.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.widget.RemoteViews;
import com.noinnion.android.greader.reader.R;
import defpackage.ap6;
import defpackage.ep6;
import defpackage.hz6;
import defpackage.l07;
import defpackage.u7;
import defpackage.uv6;
import defpackage.uz6;
import defpackage.yo6;

/* loaded from: classes2.dex */
public class WidgetMediumProvider extends AppWidgetProvider {
    public static SparseArray<long[]> a = new SparseArray<>();
    public static uv6 b = null;

    public static class a implements Runnable {
        public final /* synthetic */ boolean e;
        public final /* synthetic */ ap6 f;
        public final /* synthetic */ RemoteViews g;
        public final /* synthetic */ Context h;
        public final /* synthetic */ int i;

        /* renamed from: com.noinnion.android.greader.ui.widget.WidgetMediumProvider$a$a, reason: collision with other inner class name */
        public class C0009a extends l07 {
            public C0009a() {
            }

            @Override // defpackage.l07
            public void a(String str, View view, Bitmap bitmap) {
                if (bitmap == null || bitmap.getWidth() <= 50) {
                    return;
                }
                a.this.g.setImageViewBitmap(R.id.image, bitmap);
                a.this.g.setViewVisibility(R.id.image, 0);
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(a.this.h);
                a aVar = a.this;
                appWidgetManager.updateAppWidget(aVar.i, aVar.g);
            }
        }

        public a(boolean z, ap6 ap6Var, RemoteViews remoteViews, Context context, int i) {
            this.e = z;
            this.f = ap6Var;
            this.g = remoteViews;
            this.h = context;
            this.i = i;
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            uz6 uz6Var = new uz6(200, 200);
            hz6 hz6VarJ = hz6.j();
            hz6VarJ.e(this.e);
            String strD = this.f.d();
            if (strD == null) {
                strD = this.f.n();
            }
            hz6VarJ.l(strD, uz6Var, null, new C0009a());
        }
    }

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

    /* JADX WARN: Removed duplicated region for block: B:113:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00b4 A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #0 {all -> 0x00c6, blocks: (B:9:0x00af, B:12:0x00b4), top: B:118:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.RemoteViews c(android.content.Context r29, int r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 1144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.widget.WidgetMediumProvider.c(android.content.Context, int, boolean):android.widget.RemoteViews");
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
            if (action != null && action.equals("com.noinnion.android.greader.reader.action.WIDGET_UPDATE")) {
                Intent intent2 = new Intent(context, (Class<?>) WidgetService.class);
                intent2.putExtra("app_widget_type", 3);
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
            if (action == null || !(action.equals("com.noinnion.android.greader.reader.action.WIDGET_SYNC") || action.equals("com.noinnion.android.greader.reader.action.WIDGET_NEXT") || action.equals("com.noinnion.android.greader.reader.action.WIDGET_PREV") || action.equals("com.noinnion.android.greader.reader.action.WIDGET_LAST") || action.equals("com.noinnion.android.greader.reader.action.WIDGET_FIRST"))) {
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
