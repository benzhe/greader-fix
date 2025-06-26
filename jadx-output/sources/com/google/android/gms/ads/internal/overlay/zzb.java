package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.x20;
import defpackage.y20;

/* loaded from: classes.dex */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();
    public final String e;
    public final String f;
    public final Intent intent;
    public final String mimeType;
    public final String packageName;
    public final String url;
    public final zzv zzdjj;
    public final String zzdsv;
    public final String zzdsw;
    public final boolean zzdsy;

    public zzb(Intent intent, zzv zzvVar) {
        this(null, null, null, null, null, null, null, intent, new y20(zzvVar), false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, this.e, false);
        bi.i0(parcel, 3, this.url, false);
        bi.i0(parcel, 4, this.mimeType, false);
        bi.i0(parcel, 5, this.packageName, false);
        bi.i0(parcel, 6, this.zzdsv, false);
        bi.i0(parcel, 7, this.zzdsw, false);
        bi.i0(parcel, 8, this.f, false);
        bi.h0(parcel, 9, this.intent, i, false);
        bi.f0(parcel, 10, new y20(this.zzdjj), false);
        boolean z = this.zzdsy;
        bi.r0(parcel, 11, 4);
        parcel.writeInt(z ? 1 : 0);
        bi.t0(parcel, iM0);
    }

    public zzb(String str, zzv zzvVar, boolean z) {
        this(null, str, null, null, null, null, null, null, new y20(zzvVar), true);
    }

    public zzb(String str, String str2, String str3, String str4, String str5, String str6, String str7, zzv zzvVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, new y20(zzvVar), false);
    }

    public zzb(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent, IBinder iBinder, boolean z) {
        this.e = str;
        this.url = str2;
        this.mimeType = str3;
        this.packageName = str4;
        this.zzdsv = str5;
        this.zzdsw = str6;
        this.f = str7;
        this.intent = intent;
        this.zzdjj = (zzv) y20.l0(x20.a.g0(iBinder));
        this.zzdsy = z;
    }
}
