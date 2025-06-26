package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.vr3;

/* loaded from: classes.dex */
public final class zzwc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzwc> CREATOR = new vr3();

    @AppOpenAd.AppOpenAdOrientation
    public final int e;

    public zzwc(@AppOpenAd.AppOpenAdOrientation int i) {
        this.e = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(i2);
        bi.t0(parcel, iM0);
    }
}
