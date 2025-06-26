package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.rr3;

/* loaded from: classes.dex */
public final class zzvv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvv> CREATOR = new rr3();
    public final int e;
    public final int f;
    public final String g;
    public final long h;

    public zzvv(int i, int i2, String str, long j) {
        this.e = i;
        this.f = i2;
        this.g = str;
        this.h = j;
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
        long j = this.h;
        bi.r0(parcel, 4, 8);
        parcel.writeLong(j);
        bi.t0(parcel, iM0);
    }
}
