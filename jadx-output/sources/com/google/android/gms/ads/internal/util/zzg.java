package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import defpackage.ms2;
import defpackage.or0;
import defpackage.xl0;

/* loaded from: classes.dex */
public final class zzg extends ms2 {
    public zzg(Looper looper) {
        super(looper);
    }

    @Override // defpackage.ms2
    public final void a(Message message) {
        try {
            super.a(message);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzr.zzkv();
            zzj.zza(com.google.android.gms.ads.internal.zzr.zzkz().e, th);
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            or0 or0VarZzkz = com.google.android.gms.ads.internal.zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "AdMobHandler.handleMessage");
        }
    }
}
