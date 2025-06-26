package com.google.android.gms.ads.internal.util;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class zzy extends zzv {
    @Override // com.google.android.gms.ads.internal.util.zzv, com.google.android.gms.ads.internal.util.zzr
    public final boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final ViewGroup.LayoutParams zzzw() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
