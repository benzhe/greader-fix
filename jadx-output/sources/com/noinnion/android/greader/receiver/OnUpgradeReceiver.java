package com.noinnion.android.greader.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;
import defpackage.iw6;
import defpackage.n56;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class OnUpgradeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            Uri data = intent.getData();
            Uri uriBuild = new Uri.Builder().scheme("package").encodedOpaquePart("com.noinnion.android.greader.reader").build();
            if (action.equals("android.intent.action.PACKAGE_REPLACED") && data.equals(uriBuild)) {
                int iZ0 = n56.Z0(context);
                Method method = iw6.a;
                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
                editorEdit.putInt("last_version", iZ0);
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
    }
}
