package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.qc0;

/* loaded from: classes.dex */
public final class zzajm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajm> CREATOR = new qc0();
    public final String e;
    public final boolean f;
    public final int g;
    public final String h;

    public zzajm(String str, boolean z, int i, String str2) {
        this.e = str;
        this.f = z;
        this.g = i;
        this.h = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        boolean z = this.f;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        int i2 = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i2);
        bi.i0(parcel, 4, this.h, false);
        bi.t0(parcel, iM0);
    }
}
