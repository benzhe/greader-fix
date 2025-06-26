package com.google.android.gms.ads.internal.util;

/* loaded from: classes.dex */
public final class zzbp {
    public long a;
    public long b = Long.MIN_VALUE;
    public final Object c = new Object();

    public zzbp(long j) {
        this.a = j;
    }

    public final boolean tryAcquire() {
        synchronized (this.c) {
            long jB = com.google.android.gms.ads.internal.zzr.zzlc().b();
            if (this.b + this.a > jB) {
                return false;
            }
            this.b = jB;
            return true;
        }
    }

    public final void zzfc(long j) {
        synchronized (this.c) {
            this.a = j;
        }
    }
}
