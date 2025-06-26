package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.yo0;

/* loaded from: classes.dex */
public final class zzaww extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaww> CREATOR = new yo0();
    public final String e;
    public final String f;

    public zzaww(ServerSideVerificationOptions serverSideVerificationOptions) {
        String userId = serverSideVerificationOptions.getUserId();
        String customData = serverSideVerificationOptions.getCustomData();
        this.e = userId;
        this.f = customData;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        bi.i0(parcel, 2, this.f, false);
        bi.t0(parcel, iM0);
    }

    public zzaww(String str, String str2) {
        this.e = str;
        this.f = str2;
    }
}
