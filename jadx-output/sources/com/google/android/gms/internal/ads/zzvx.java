package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.ur3;

/* loaded from: classes.dex */
public final class zzvx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvx> CREATOR = new ur3();
    public String e;
    public long f;
    public zzvh g;
    public Bundle h;

    public zzvx(String str, long j, zzvh zzvhVar, Bundle bundle) {
        this.e = str;
        this.f = j;
        this.g = zzvhVar;
        this.h = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        long j = this.f;
        bi.r0(parcel, 2, 8);
        parcel.writeLong(j);
        bi.h0(parcel, 3, this.g, i, false);
        bi.c0(parcel, 4, this.h, false);
        bi.t0(parcel, iM0);
    }
}
