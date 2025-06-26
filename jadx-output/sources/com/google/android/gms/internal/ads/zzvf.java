package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.gr3;

/* loaded from: classes.dex */
public final class zzvf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvf> CREATOR = new gr3();
    public final String e;
    public final String f;

    public zzvf(String str, String str2) {
        this.e = str;
        this.f = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        bi.i0(parcel, 2, this.f, false);
        bi.t0(parcel, iM0);
    }
}
