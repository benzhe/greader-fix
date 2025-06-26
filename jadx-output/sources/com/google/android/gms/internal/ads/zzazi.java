package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.hr0;

/* loaded from: classes.dex */
public final class zzazi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzazi> CREATOR = new hr0();

    @Deprecated
    public final String e;
    public final String f;

    @Deprecated
    public final zzvt g;
    public final zzvq h;

    public zzazi(String str, String str2, zzvt zzvtVar, zzvq zzvqVar) {
        this.e = str;
        this.f = str2;
        this.g = zzvtVar;
        this.h = zzvqVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        bi.i0(parcel, 2, this.f, false);
        bi.h0(parcel, 3, this.g, i, false);
        bi.h0(parcel, 4, this.h, i, false);
        bi.t0(parcel, iM0);
    }
}
