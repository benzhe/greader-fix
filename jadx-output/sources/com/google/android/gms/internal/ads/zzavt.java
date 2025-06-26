package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.un0;

/* loaded from: classes.dex */
public final class zzavt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavt> CREATOR = new un0();
    public final zzvq e;
    public final String f;

    public zzavt(zzvq zzvqVar, String str) {
        this.e = zzvqVar;
        this.f = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.h0(parcel, 2, this.e, i, false);
        bi.i0(parcel, 3, this.f, false);
        bi.t0(parcel, iM0);
    }
}
