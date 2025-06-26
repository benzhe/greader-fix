package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.ir3;
import defpackage.ru3;
import defpackage.tu3;

/* loaded from: classes.dex */
public final class zzvh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvh> CREATOR = new ir3();
    public final int e;
    public final String f;
    public final String g;
    public zzvh h;
    public IBinder i;

    public zzvh(int i, String str, String str2, zzvh zzvhVar, IBinder iBinder) {
        this.e = i;
        this.f = str;
        this.g = str2;
        this.h = zzvhVar;
        this.i = iBinder;
    }

    public final LoadAdError C() {
        zzvh zzvhVar = this.h;
        ru3 tu3Var = null;
        AdError adError = zzvhVar == null ? null : new AdError(zzvhVar.e, zzvhVar.f, zzvhVar.g);
        int i = this.e;
        String str = this.f;
        String str2 = this.g;
        IBinder iBinder = this.i;
        if (iBinder != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            tu3Var = iInterfaceQueryLocalInterface instanceof ru3 ? (ru3) iInterfaceQueryLocalInterface : new tu3(iBinder);
        }
        return new LoadAdError(i, str, str2, adError, ResponseInfo.zza(tu3Var));
    }

    public final AdError n() {
        zzvh zzvhVar = this.h;
        return new AdError(this.e, this.f, this.g, zzvhVar == null ? null : new AdError(zzvhVar.e, zzvhVar.f, zzvhVar.g));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.i0(parcel, 2, this.f, false);
        bi.i0(parcel, 3, this.g, false);
        bi.h0(parcel, 4, this.h, i, false);
        bi.f0(parcel, 5, this.i, false);
        bi.t0(parcel, iM0);
    }
}
