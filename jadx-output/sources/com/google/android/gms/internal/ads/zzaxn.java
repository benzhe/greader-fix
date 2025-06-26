package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.mp0;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaxn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaxn> CREATOR = new mp0();
    public final String e;
    public final String f;
    public final boolean g;
    public final boolean h;
    public final List<String> i;
    public final boolean j;
    public final boolean k;
    public final List<String> l;

    public zzaxn(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.e = str;
        this.f = str2;
        this.g = z;
        this.h = z2;
        this.i = list;
        this.j = z3;
        this.k = z4;
        this.l = list2 == null ? new ArrayList<>() : list2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, this.e, false);
        bi.i0(parcel, 3, this.f, false);
        boolean z = this.g;
        bi.r0(parcel, 4, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.h;
        bi.r0(parcel, 5, 4);
        parcel.writeInt(z2 ? 1 : 0);
        bi.k0(parcel, 6, this.i, false);
        boolean z3 = this.j;
        bi.r0(parcel, 7, 4);
        parcel.writeInt(z3 ? 1 : 0);
        boolean z4 = this.k;
        bi.r0(parcel, 8, 4);
        parcel.writeInt(z4 ? 1 : 0);
        bi.k0(parcel, 9, this.l, false);
        bi.t0(parcel, iM0);
    }
}
