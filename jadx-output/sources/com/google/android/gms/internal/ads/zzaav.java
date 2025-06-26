package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.f40;

/* loaded from: classes.dex */
public final class zzaav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaav> CREATOR = new f40();
    public final String e;

    public zzaav(SearchAdRequest searchAdRequest) {
        this.e = searchAdRequest.getQuery();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 15, this.e, false);
        bi.t0(parcel, iM0);
    }

    public zzaav(String str) {
        this.e = str;
    }
}
