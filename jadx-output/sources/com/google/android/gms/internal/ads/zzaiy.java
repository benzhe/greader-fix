package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.dc0;

/* loaded from: classes.dex */
public final class zzaiy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaiy> CREATOR = new dc0();
    public final String e;
    public final String[] f;
    public final String[] g;

    public zzaiy(String str, String[] strArr, String[] strArr2) {
        this.e = str;
        this.f = strArr;
        this.g = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        bi.j0(parcel, 2, this.f, false);
        bi.j0(parcel, 3, this.g, false);
        bi.t0(parcel, iM0);
    }
}
