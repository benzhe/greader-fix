package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import defpackage.os3;
import defpackage.pw;
import defpackage.y40;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zzbv {
    public boolean d;
    public Context e;
    public boolean c = false;
    public final Map<BroadcastReceiver, IntentFilter> b = new WeakHashMap();
    public final BroadcastReceiver a = new pw(this);

    public final synchronized void initialize(Context context) {
        if (this.c) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.e = applicationContext;
        if (applicationContext == null) {
            this.e = context;
        }
        y40.a(this.e);
        this.d = ((Boolean) os3.j.f.a(y40.Z1)).booleanValue();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.e.registerReceiver(this.a, intentFilter);
        this.c = true;
    }

    public final synchronized void zza(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.d) {
            this.b.put(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter);
        }
    }

    public final synchronized void zza(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.d) {
            this.b.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }
}
