package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.xc0;

/* loaded from: classes.dex */
public final class zzajw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajw> CREATOR = new xc0();
    public final String e;
    public final Bundle f;

    public zzajw(String str, Bundle bundle) {
        this.e = str;
        this.f = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        bi.c0(parcel, 2, this.f, false);
        bi.t0(parcel, iM0);
    }
}
