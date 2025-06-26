package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import defpackage.eg0;
import defpackage.is0;
import defpackage.os3;

/* loaded from: classes.dex */
public class AdService extends IntentService {
    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        try {
            os3.j.b.b(this, new eg0()).f0(intent);
        } catch (RemoteException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 50);
            sb.append("RemoteException calling handleNotificationIntent: ");
            sb.append(strValueOf);
            is0.zzex(sb.toString());
        }
    }
}
