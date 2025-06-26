package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import defpackage.bi;
import defpackage.ms2;

/* loaded from: classes.dex */
public final class zzbl {
    public HandlerThread a = null;
    public Handler b = null;
    public int c = 0;
    public final Object d = new Object();

    public final Handler getHandler() {
        return this.b;
    }

    public final Looper zzaai() {
        Looper looper;
        synchronized (this.d) {
            if (this.c != 0) {
                bi.j(this.a, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.a == null) {
                zzd.zzed("Starting the looper thread.");
                HandlerThread handlerThread = new HandlerThread("LooperProvider");
                this.a = handlerThread;
                handlerThread.start();
                this.b = new ms2(this.a.getLooper());
                zzd.zzed("Looper thread started.");
            } else {
                zzd.zzed("Resuming the looper thread");
                this.d.notifyAll();
            }
            this.c++;
            looper = this.a.getLooper();
        }
        return looper;
    }
}
