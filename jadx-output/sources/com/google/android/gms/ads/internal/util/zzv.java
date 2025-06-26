package com.google.android.gms.ads.internal.util;

import android.os.Environment;
import android.os.StatFs;
import android.view.View;
import defpackage.os3;
import defpackage.y40;

/* loaded from: classes.dex */
public class zzv extends zzw {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public boolean isAttachedToWindow(View view) {
        return super.isAttachedToWindow(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzzv() {
        return 14;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final long zzzz() {
        if (((Boolean) os3.j.f.a(y40.P1)).booleanValue()) {
            return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
        }
        return -1L;
    }
}
