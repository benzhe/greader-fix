package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import defpackage.ds;
import defpackage.is;
import defpackage.iv;
import defpackage.ot;
import defpackage.tt;
import defpackage.wr;

/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int a = 0;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        is.b(context);
        ds.a aVarA = ds.a();
        aVarA.b(queryParameter);
        aVarA.c(iv.b(iIntValue));
        if (queryParameter2 != null) {
            ((wr.b) aVarA).b = Base64.decode(queryParameter2, 0);
        }
        tt ttVar = is.a().d;
        ttVar.e.execute(new ot(ttVar, aVarA.a(), i, new Runnable() { // from class: it
            @Override // java.lang.Runnable
            public void run() {
                int i2 = AlarmManagerSchedulerBroadcastReceiver.a;
            }
        }));
    }
}
