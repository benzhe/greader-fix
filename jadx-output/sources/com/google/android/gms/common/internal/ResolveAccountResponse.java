package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.f10;
import defpackage.q00;

/* loaded from: classes.dex */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new f10();
    public final int e;
    public IBinder f;
    public ConnectionResult g;
    public boolean h;
    public boolean i;

    public ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.e = i;
        this.f = iBinder;
        this.g = connectionResult;
        this.h = z;
        this.i = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.g.equals(resolveAccountResponse.g) && n().equals(resolveAccountResponse.n());
    }

    public q00 n() {
        return q00.a.g0(this.f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.f0(parcel, 2, this.f, false);
        bi.h0(parcel, 3, this.g, i, false);
        boolean z = this.h;
        bi.r0(parcel, 4, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.i;
        bi.r0(parcel, 5, 4);
        parcel.writeInt(z2 ? 1 : 0);
        bi.t0(parcel, iM0);
    }
}
