package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.jo;
import defpackage.ns0;

/* loaded from: classes.dex */
public final class zzbar extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbar> CREATOR = new ns0();
    public String e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;

    public zzbar(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public static zzbar n() {
        return new zzbar(12451000, 12451000, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, this.e, false);
        int i2 = this.f;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i2);
        int i3 = this.g;
        bi.r0(parcel, 4, 4);
        parcel.writeInt(i3);
        boolean z = this.h;
        bi.r0(parcel, 5, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.i;
        bi.r0(parcel, 6, 4);
        parcel.writeInt(z2 ? 1 : 0);
        bi.t0(parcel, iM0);
    }

    public zzbar(int i, int i2, boolean z, boolean z2, boolean z3) {
        String str = z ? "0" : "1";
        StringBuilder sb = new StringBuilder(str.length() + 36);
        sb.append("afma-sdk-a-v");
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        this.e = jo.s(sb, ".", str);
        this.f = i;
        this.g = i2;
        this.h = z;
        this.i = false;
    }

    public zzbar(String str, int i, int i2, boolean z, boolean z2) {
        this.e = str;
        this.f = i;
        this.g = i2;
        this.h = z;
        this.i = z2;
    }
}
