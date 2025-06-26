package com.noinnion.android.greader.dashclock;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.apps.dashclock.api.DashClockExtension;
import com.google.android.apps.dashclock.api.ExtensionData;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.login.LoginActivity;
import defpackage.iw6;
import defpackage.jo;
import defpackage.n56;
import defpackage.yd;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class UnreadExtension extends DashClockExtension {
    public BroadcastReceiver l = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED")) {
                UnreadExtension.this.b(4);
            }
        }
    }

    @Override // com.google.android.apps.dashclock.api.DashClockExtension
    public void a(boolean z) {
        try {
            this.g.f1(true);
        } catch (RemoteException e) {
            Log.e("DashClockExtension", "Couldn't set the extension to update upon ACTION_SCREEN_ON.", e);
        }
    }

    @Override // com.google.android.apps.dashclock.api.DashClockExtension
    public void b(int i) {
        String string;
        Application application = getApplication();
        int iK = iw6.K(application);
        long jZ = iw6.z(application);
        Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
        intent.setAction("android.intent.action.MAIN");
        ExtensionData extensionData = new ExtensionData();
        extensionData.e = iK > 0;
        extensionData.f = R.drawable.icon_white;
        extensionData.h = String.valueOf(iK);
        extensionData.i = iK + StringUtils.SPACE + getString(R.string.dashclock_unread_articles);
        StringBuilder sb = new StringBuilder();
        sb.append(getString(R.string.dashclock_last_sync));
        sb.append(StringUtils.SPACE);
        if (jZ > 0) {
            StringBuilder sbZ = jo.z(StringUtils.SPACE);
            sbZ.append(n56.y0(application, jZ));
            string = sbZ.toString();
        } else {
            string = "";
        }
        sb.append(string);
        extensionData.j = sb.toString();
        extensionData.k = intent;
        try {
            this.g.T6(extensionData);
        } catch (RemoteException e) {
            Log.e("DashClockExtension", "Couldn't publish updated extension data.", e);
        }
    }

    @Override // com.google.android.apps.dashclock.api.DashClockExtension, android.app.Service
    public void onCreate() {
        super.onCreate();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED");
        yd.a(this).b(this.l, intentFilter);
    }

    @Override // com.google.android.apps.dashclock.api.DashClockExtension, android.app.Service
    public void onDestroy() {
        yd.a(this).d(this.l);
        super.onDestroy();
    }
}
