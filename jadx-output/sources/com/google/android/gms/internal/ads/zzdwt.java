package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.ds2;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzdwt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwt> CREATOR = new ds2();
    public final int e;
    public final byte[] f;
    public final int g;

    public zzdwt(int i, byte[] bArr, int i2) {
        this.e = i;
        this.f = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.g = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.d0(parcel, 2, this.f, false);
        int i3 = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i3);
        bi.t0(parcel, iM0);
    }

    public zzdwt() {
        this(1, null, 1);
    }
}
