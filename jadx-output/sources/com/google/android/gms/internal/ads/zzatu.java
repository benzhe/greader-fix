package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.fm0;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzatu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatu> CREATOR = new fm0();
    public final boolean e;
    public final List<String> f;

    public zzatu() {
        List<String> listEmptyList = Collections.emptyList();
        this.e = false;
        this.f = listEmptyList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        boolean z = this.e;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        bi.k0(parcel, 3, this.f, false);
        bi.t0(parcel, iM0);
    }

    public zzatu(boolean z, List<String> list) {
        this.e = z;
        this.f = list;
    }
}
