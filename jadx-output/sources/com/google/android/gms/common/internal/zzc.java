package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.h10;

/* loaded from: classes.dex */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new h10();
    public Bundle e;
    public Feature[] f;
    public int g;

    public zzc(Bundle bundle, Feature[] featureArr, int i) {
        this.e = bundle;
        this.f = featureArr;
        this.g = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.c0(parcel, 1, this.e, false);
        bi.l0(parcel, 2, this.f, i, false);
        int i2 = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i2);
        bi.t0(parcel, iM0);
    }

    public zzc() {
    }
}
