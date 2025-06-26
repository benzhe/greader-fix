package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.vr2;

/* loaded from: classes.dex */
public final class zzdwh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwh> CREATOR = new vr2();
    public final int e;
    public final String f;
    public final String g;

    public zzdwh(int i, String str, String str2) {
        this.e = i;
        this.f = str;
        this.g = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.i0(parcel, 2, this.f, false);
        bi.i0(parcel, 3, this.g, false);
        bi.t0(parcel, iM0);
    }

    public zzdwh(String str, String str2) {
        this.e = 1;
        this.f = str;
        this.g = str2;
    }
}
