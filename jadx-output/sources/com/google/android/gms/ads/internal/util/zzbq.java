package com.google.android.gms.ads.internal.util;

import android.content.Context;
import defpackage.ls0;

/* loaded from: classes.dex */
public final class zzbq extends zza {
    public final ls0 b;
    public final String c;

    public zzbq(Context context, String str, String str2) {
        this.b = new ls0(com.google.android.gms.ads.internal.zzr.zzkv().zzq(context, str));
        this.c = str2;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        this.b.a(this.c);
    }
}
