package com.google.android.gms.ads;

/* loaded from: classes.dex */
public final class zza {
    public static AdSize zza(int i, int i2, String str) {
        return new AdSize(i, i2, str);
    }

    public static AdSize zzb(int i, int i2) {
        AdSize adSize = new AdSize(i, i2);
        adSize.e = true;
        adSize.f = i2;
        return adSize;
    }

    public static AdSize zzc(int i, int i2) {
        AdSize adSize = new AdSize(i, i2);
        adSize.g = true;
        adSize.h = i2;
        return adSize;
    }

    public static boolean zzd(AdSize adSize) {
        return adSize.e;
    }

    public static int zze(AdSize adSize) {
        return adSize.f;
    }

    public static boolean zza(AdSize adSize) {
        return adSize.g;
    }

    public static int zzb(AdSize adSize) {
        return adSize.h;
    }

    public static boolean zzc(AdSize adSize) {
        return adSize.d;
    }
}
