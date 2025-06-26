package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.ads.zzbar;
import defpackage.bi;
import defpackage.er3;
import defpackage.ns1;
import defpackage.pp2;
import defpackage.ra0;
import defpackage.sy1;
import defpackage.ta0;
import defpackage.x20;
import defpackage.xw0;
import defpackage.y20;

/* loaded from: classes.dex */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzn();
    public final int orientation;
    public final String url;
    public final zzbar zzbpx;
    public final String zzbvf;
    public final String zzbwe;
    public final er3 zzchr;
    public final ra0 zzdic;
    public final ta0 zzdie;
    public final ns1 zzdje;
    public final pp2 zzdjf;
    public final xw0 zzdkm;
    public final zzb zzdue;
    public final zzp zzduf;
    public final String zzdug;
    public final boolean zzduh;
    public final String zzdui;
    public final zzx zzduj;
    public final int zzduk;
    public final String zzdul;
    public final com.google.android.gms.ads.internal.zzk zzdum;
    public final sy1 zzdun;
    public final zzbg zzduo;
    public final String zzdup;

    public AdOverlayInfoParcel(xw0 xw0Var, zzbar zzbarVar, zzbg zzbgVar, sy1 sy1Var, ns1 ns1Var, pp2 pp2Var, String str, String str2, int i) {
        this.zzdue = null;
        this.zzchr = null;
        this.zzduf = null;
        this.zzdkm = xw0Var;
        this.zzdic = null;
        this.zzdie = null;
        this.zzdug = null;
        this.zzduh = false;
        this.zzdui = null;
        this.zzduj = null;
        this.orientation = i;
        this.zzduk = 5;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = str;
        this.zzdup = str2;
        this.zzdun = sy1Var;
        this.zzdje = ns1Var;
        this.zzdjf = pp2Var;
        this.zzduo = zzbgVar;
        this.zzbvf = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzd(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.h0(parcel, 2, this.zzdue, i, false);
        bi.f0(parcel, 3, new y20(this.zzchr), false);
        bi.f0(parcel, 4, new y20(this.zzduf), false);
        bi.f0(parcel, 5, new y20(this.zzdkm), false);
        bi.f0(parcel, 6, new y20(this.zzdie), false);
        bi.i0(parcel, 7, this.zzdug, false);
        boolean z = this.zzduh;
        bi.r0(parcel, 8, 4);
        parcel.writeInt(z ? 1 : 0);
        bi.i0(parcel, 9, this.zzdui, false);
        bi.f0(parcel, 10, new y20(this.zzduj), false);
        int i2 = this.orientation;
        bi.r0(parcel, 11, 4);
        parcel.writeInt(i2);
        int i3 = this.zzduk;
        bi.r0(parcel, 12, 4);
        parcel.writeInt(i3);
        bi.i0(parcel, 13, this.url, false);
        bi.h0(parcel, 14, this.zzbpx, i, false);
        bi.i0(parcel, 16, this.zzdul, false);
        bi.h0(parcel, 17, this.zzdum, i, false);
        bi.f0(parcel, 18, new y20(this.zzdic), false);
        bi.i0(parcel, 19, this.zzbwe, false);
        bi.f0(parcel, 20, new y20(this.zzdun), false);
        bi.f0(parcel, 21, new y20(this.zzdje), false);
        bi.f0(parcel, 22, new y20(this.zzdjf), false);
        bi.f0(parcel, 23, new y20(this.zzduo), false);
        bi.i0(parcel, 24, this.zzdup, false);
        bi.i0(parcel, 25, this.zzbvf, false);
        bi.t0(parcel, iM0);
    }

    public AdOverlayInfoParcel(er3 er3Var, zzp zzpVar, zzx zzxVar, xw0 xw0Var, int i, zzbar zzbarVar, String str, com.google.android.gms.ads.internal.zzk zzkVar, String str2, String str3, String str4) {
        this.zzdue = null;
        this.zzchr = null;
        this.zzduf = zzpVar;
        this.zzdkm = xw0Var;
        this.zzdic = null;
        this.zzdie = null;
        this.zzdug = str2;
        this.zzduh = false;
        this.zzdui = str3;
        this.zzduj = null;
        this.orientation = i;
        this.zzduk = 1;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = str;
        this.zzdum = zzkVar;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = str4;
    }

    public AdOverlayInfoParcel(er3 er3Var, zzp zzpVar, zzx zzxVar, xw0 xw0Var, boolean z, int i, zzbar zzbarVar) {
        this.zzdue = null;
        this.zzchr = er3Var;
        this.zzduf = zzpVar;
        this.zzdkm = xw0Var;
        this.zzdic = null;
        this.zzdie = null;
        this.zzdug = null;
        this.zzduh = z;
        this.zzdui = null;
        this.zzduj = zzxVar;
        this.orientation = i;
        this.zzduk = 2;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = null;
    }

    public AdOverlayInfoParcel(er3 er3Var, zzp zzpVar, ra0 ra0Var, ta0 ta0Var, zzx zzxVar, xw0 xw0Var, boolean z, int i, String str, zzbar zzbarVar) {
        this.zzdue = null;
        this.zzchr = er3Var;
        this.zzduf = zzpVar;
        this.zzdkm = xw0Var;
        this.zzdic = ra0Var;
        this.zzdie = ta0Var;
        this.zzdug = null;
        this.zzduh = z;
        this.zzdui = null;
        this.zzduj = zzxVar;
        this.orientation = i;
        this.zzduk = 3;
        this.url = str;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = null;
    }

    public AdOverlayInfoParcel(er3 er3Var, zzp zzpVar, ra0 ra0Var, ta0 ta0Var, zzx zzxVar, xw0 xw0Var, boolean z, int i, String str, String str2, zzbar zzbarVar) {
        this.zzdue = null;
        this.zzchr = er3Var;
        this.zzduf = zzpVar;
        this.zzdkm = xw0Var;
        this.zzdic = ra0Var;
        this.zzdie = ta0Var;
        this.zzdug = str2;
        this.zzduh = z;
        this.zzdui = str;
        this.zzduj = zzxVar;
        this.orientation = i;
        this.zzduk = 3;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = null;
    }

    public AdOverlayInfoParcel(zzb zzbVar, er3 er3Var, zzp zzpVar, zzx zzxVar, zzbar zzbarVar, xw0 xw0Var) {
        this.zzdue = zzbVar;
        this.zzchr = er3Var;
        this.zzduf = zzpVar;
        this.zzdkm = xw0Var;
        this.zzdic = null;
        this.zzdie = null;
        this.zzdug = null;
        this.zzduh = false;
        this.zzdui = null;
        this.zzduj = zzxVar;
        this.orientation = -1;
        this.zzduk = 4;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = null;
    }

    public AdOverlayInfoParcel(zzb zzbVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzbar zzbarVar, String str4, com.google.android.gms.ads.internal.zzk zzkVar, IBinder iBinder6, String str5, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, IBinder iBinder10, String str6, String str7) {
        this.zzdue = zzbVar;
        this.zzchr = (er3) y20.l0(x20.a.g0(iBinder));
        this.zzduf = (zzp) y20.l0(x20.a.g0(iBinder2));
        this.zzdkm = (xw0) y20.l0(x20.a.g0(iBinder3));
        this.zzdic = (ra0) y20.l0(x20.a.g0(iBinder6));
        this.zzdie = (ta0) y20.l0(x20.a.g0(iBinder4));
        this.zzdug = str;
        this.zzduh = z;
        this.zzdui = str2;
        this.zzduj = (zzx) y20.l0(x20.a.g0(iBinder5));
        this.orientation = i;
        this.zzduk = i2;
        this.url = str3;
        this.zzbpx = zzbarVar;
        this.zzdul = str4;
        this.zzdum = zzkVar;
        this.zzbwe = str5;
        this.zzdup = str6;
        this.zzdun = (sy1) y20.l0(x20.a.g0(iBinder7));
        this.zzdje = (ns1) y20.l0(x20.a.g0(iBinder8));
        this.zzdjf = (pp2) y20.l0(x20.a.g0(iBinder9));
        this.zzduo = (zzbg) y20.l0(x20.a.g0(iBinder10));
        this.zzbvf = str7;
    }
}
