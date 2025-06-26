package com.noinnion.android.greader.ui.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import defpackage.im7;
import defpackage.u7;

/* loaded from: classes2.dex */
public final class WidgetUpdateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        im7.e(context, "context");
        im7.e(intent, "intent");
        String action = intent.getAction();
        if (action == null || !im7.a(action, "com.noinnion.android.greader.reader.action.WIDGET_UPDATE")) {
            return;
        }
        Intent intent2 = new Intent(context, (Class<?>) WidgetService.class);
        intent2.setAction("com.noinnion.android.greader.reader.action.WIDGET_UPDATE");
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent2);
        } else {
            context.startService(intent2);
        }
    }
}
