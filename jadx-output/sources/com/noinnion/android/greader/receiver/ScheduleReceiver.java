package com.noinnion.android.greader.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.noinnion.android.greader.service.CleanService;
import defpackage.im7;
import defpackage.u7;
import defpackage.yo6;

/* loaded from: classes2.dex */
public final class ScheduleReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int a = 0;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        im7.e(context, "context");
        im7.e(intent, "intent");
        if (intent.getBooleanExtra("com.noinnion.android.greader.reader.action.ACTION_SYNC", false)) {
            yo6.f(context, false);
        }
        if (intent.getBooleanExtra("com.noinnion.android.greader.reader.action.ACTION_CLEAN", false)) {
            im7.e(context, "c");
            Intent intent2 = new Intent(context, (Class<?>) CleanService.class);
            Object obj = u7.a;
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent2);
            } else {
                context.startService(intent2);
            }
        }
    }
}
