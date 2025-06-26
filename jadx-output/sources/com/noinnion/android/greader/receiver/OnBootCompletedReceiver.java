package com.noinnion.android.greader.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.n56;

/* loaded from: classes2.dex */
public class OnBootCompletedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
                n56.M1(context);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
