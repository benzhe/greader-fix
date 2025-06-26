package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.hg4;

/* loaded from: classes.dex */
public final class zzy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzy> CREATOR = new hg4();
    public final long e;
    public final long f;
    public final boolean g;
    public final String h;
    public final String i;
    public final String j;
    public final Bundle k;
    public final String l;

    public zzy(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle, String str4) {
        this.e = j;
        this.f = j2;
        this.g = z;
        this.h = str;
        this.i = str2;
        this.j = str3;
        this.k = bundle;
        this.l = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        long j = this.e;
        bi.r0(parcel, 1, 8);
        parcel.writeLong(j);
        long j2 = this.f;
        bi.r0(parcel, 2, 8);
        parcel.writeLong(j2);
        boolean z = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(z ? 1 : 0);
        bi.i0(parcel, 4, this.h, false);
        bi.i0(parcel, 5, this.i, false);
        bi.i0(parcel, 6, this.j, false);
        bi.c0(parcel, 7, this.k, false);
        bi.i0(parcel, 8, this.l, false);
        bi.t0(parcel, iM0);
    }
}
