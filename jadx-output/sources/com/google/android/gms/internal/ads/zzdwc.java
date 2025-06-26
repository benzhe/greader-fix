package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.ur2;

/* loaded from: classes.dex */
public final class zzdwc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwc> CREATOR = new ur2();
    public final int e;
    public final byte[] f;

    public zzdwc(int i, byte[] bArr) {
        this.e = i;
        this.f = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.d0(parcel, 2, this.f, false);
        bi.t0(parcel, iM0);
    }

    public zzdwc(byte[] bArr) {
        this.e = 1;
        this.f = bArr;
    }
}
