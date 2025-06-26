package defpackage;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzaei;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class th0 implements NativeMediationAdRequest {
    public final Date a;
    public final int b;
    public final Set<String> c;
    public final boolean d;
    public final Location e;
    public final int f;
    public final zzaei g;
    public final boolean i;
    public final List<String> h = new ArrayList();
    public final Map<String, Boolean> j = new HashMap();

    public th0(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzaei zzaeiVar, List<String> list, boolean z2, int i3, String str) {
        this.a = date;
        this.b = i;
        this.c = set;
        this.e = location;
        this.d = z;
        this.f = i2;
        this.g = zzaeiVar;
        this.i = z2;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] strArrSplit = str2.split(":", 3);
                    if (strArrSplit.length == 3) {
                        if ("true".equals(strArrSplit[2])) {
                            this.j.put(strArrSplit[1], Boolean.TRUE);
                        } else if ("false".equals(strArrSplit[2])) {
                            this.j.put(strArrSplit[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.h.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        float fV3;
        gv3 gv3VarG = gv3.g();
        synchronized (gv3VarG.b) {
            zt3 zt3Var = gv3VarG.c;
            fV3 = 1.0f;
            if (zt3Var != null) {
                try {
                    fV3 = zt3Var.v3();
                } catch (RemoteException e) {
                    is0.zzc("Unable to get app volume.", e);
                }
            }
        }
        return fV3;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        zzaei zzaeiVar = this.g;
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzaeiVar == null) {
            return builder.build();
        }
        int i = zzaeiVar.e;
        if (i == 2) {
            builder.setAdChoicesPlacement(zzaeiVar.i);
        } else {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzaeiVar.k).setMediaAspectRatio(zzaeiVar.l);
                }
            }
            zzaaz zzaazVar = zzaeiVar.j;
            if (zzaazVar != null) {
                builder.setVideoOptions(new VideoOptions(zzaazVar));
            }
            builder.setAdChoicesPlacement(zzaeiVar.i);
        }
        builder.setReturnUrlsForImageAssets(zzaeiVar.f).setImageOrientation(zzaeiVar.g).setRequestMultipleImages(zzaeiVar.h);
        return builder.build();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions() {
        return zzaei.n(this.g);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        boolean zD2;
        gv3 gv3VarG = gv3.g();
        synchronized (gv3VarG.b) {
            zt3 zt3Var = gv3VarG.c;
            zD2 = false;
            if (zt3Var != null) {
                try {
                    zD2 = zt3Var.D2();
                } catch (RemoteException e) {
                    is0.zzc("Unable to get app mute state.", e);
                }
            }
        }
        return zD2;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        List<String> list = this.h;
        if (list != null) {
            return list.contains("2") || this.h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        List<String> list = this.h;
        if (list != null) {
            return list.contains("1") || this.h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.i;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.h;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzvw() {
        List<String> list = this.h;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zzvx() {
        return this.j;
    }
}
