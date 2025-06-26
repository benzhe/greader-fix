package com.google.android.gms.ads.internal.util;

/* loaded from: classes.dex */
public final class zzap extends Exception {
    public final int e;

    public zzap(String str, int i) {
        super(str);
        this.e = i;
    }

    public final int getErrorCode() {
        return this.e;
    }
}
