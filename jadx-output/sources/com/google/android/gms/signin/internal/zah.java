package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.p35;

/* loaded from: classes.dex */
public final class zah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zah> CREATOR = new p35();
    public final int e;
    public final ResolveAccountRequest f;

    public zah(int i, ResolveAccountRequest resolveAccountRequest) {
        this.e = i;
        this.f = resolveAccountRequest;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.h0(parcel, 2, this.f, i, false);
        bi.t0(parcel, iM0);
    }

    public zah(ResolveAccountRequest resolveAccountRequest) {
        this.e = 1;
        this.f = resolveAccountRequest;
    }
}
