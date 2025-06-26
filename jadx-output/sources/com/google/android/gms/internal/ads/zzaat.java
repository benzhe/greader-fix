package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.e40;

/* loaded from: classes.dex */
public final class zzaat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaat> CREATOR = new e40();
    public final int e;
    public final int f;

    public zzaat(int i, int i2) {
        this.e = i;
        this.f = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.f;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(i3);
        bi.t0(parcel, iM0);
    }

    public zzaat(RequestConfiguration requestConfiguration) {
        this.e = requestConfiguration.getTagForChildDirectedTreatment();
        this.f = requestConfiguration.getTagForUnderAgeOfConsent();
    }
}
