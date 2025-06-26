package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.cs2;
import defpackage.kd3;

/* loaded from: classes.dex */
public final class zzdwr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwr> CREATOR = new cs2();
    public final int e;
    public final int f;
    public final String g;
    public final String h;
    public final int i;

    public zzdwr(int i, int i2, int i3, String str, String str2) {
        this.e = i;
        this.f = i2;
        this.g = str;
        this.h = str2;
        this.i = i3;
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
        bi.i0(parcel, 3, this.g, false);
        bi.i0(parcel, 4, this.h, false);
        int i4 = this.i;
        bi.r0(parcel, 5, 4);
        parcel.writeInt(i4);
        bi.t0(parcel, iM0);
    }

    public zzdwr(int i, kd3 kd3Var, String str, String str2) {
        int i2 = kd3Var.e;
        this.e = 1;
        this.f = i;
        this.g = str;
        this.h = str2;
        this.i = i2;
    }
}
