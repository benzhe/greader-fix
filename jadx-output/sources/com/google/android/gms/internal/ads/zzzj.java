package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.av3;
import defpackage.bi;

/* loaded from: classes.dex */
public final class zzzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzzj> CREATOR = new av3();
    public final int e;

    public zzzj(int i) {
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
