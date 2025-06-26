package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.pm0;
import java.util.List;

/* loaded from: classes.dex */
public final class zzauj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzauj> CREATOR = new pm0();
    public final Bundle e;
    public final zzbar f;
    public final ApplicationInfo g;
    public final String h;
    public final List<String> i;
    public final PackageInfo j;
    public final String k;
    public final String l;
    public zzdrc m;
    public String n;

    public zzauj(Bundle bundle, zzbar zzbarVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, String str2, String str3, zzdrc zzdrcVar, String str4) {
        this.e = bundle;
        this.f = zzbarVar;
        this.h = str;
        this.g = applicationInfo;
        this.i = list;
        this.j = packageInfo;
        this.k = str2;
        this.l = str3;
        this.m = zzdrcVar;
        this.n = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.c0(parcel, 1, this.e, false);
        bi.h0(parcel, 2, this.f, i, false);
        bi.h0(parcel, 3, this.g, i, false);
        bi.i0(parcel, 4, this.h, false);
        bi.k0(parcel, 5, this.i, false);
        bi.h0(parcel, 6, this.j, i, false);
        bi.i0(parcel, 7, this.k, false);
        bi.i0(parcel, 9, this.l, false);
        bi.h0(parcel, 10, this.m, i, false);
        bi.i0(parcel, 11, this.n, false);
        bi.t0(parcel, iM0);
    }
}
