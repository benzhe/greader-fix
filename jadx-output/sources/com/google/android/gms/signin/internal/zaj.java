package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.q35;

/* loaded from: classes.dex */
public final class zaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaj> CREATOR = new q35();
    public final int e;
    public final ConnectionResult f;
    public final ResolveAccountResponse g;

    public zaj(int i, ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this.e = i;
        this.f = connectionResult;
        this.g = resolveAccountResponse;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.h0(parcel, 2, this.f, i, false);
        bi.h0(parcel, 3, this.g, i, false);
        bi.t0(parcel, iM0);
    }

    public zaj() {
        ConnectionResult connectionResult = new ConnectionResult(8, null);
        this.e = 1;
        this.f = connectionResult;
        this.g = null;
    }
}
