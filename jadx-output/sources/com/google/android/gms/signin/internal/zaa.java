package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.j35;
import defpackage.ty;

/* loaded from: classes.dex */
public final class zaa extends AbstractSafeParcelable implements ty {
    public static final Parcelable.Creator<zaa> CREATOR = new j35();
    public final int e;
    public int f;
    public Intent g;

    public zaa() {
        this.e = 2;
        this.f = 0;
        this.g = null;
    }

    @Override // defpackage.ty
    public final Status d0() {
        return this.f == 0 ? Status.i : Status.k;
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
        bi.h0(parcel, 3, this.g, i, false);
        bi.t0(parcel, iM0);
    }

    public zaa(int i, int i2, Intent intent) {
        this.e = i;
        this.f = i2;
        this.g = intent;
    }
}
