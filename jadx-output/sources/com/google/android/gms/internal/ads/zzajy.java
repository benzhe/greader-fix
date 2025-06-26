package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.ad0;
import defpackage.bi;
import defpackage.id0;

/* loaded from: classes.dex */
public final class zzajy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajy> CREATOR = new ad0();
    public final int e;
    public final int f;
    public final String g;
    public final int h;

    public zzajy(int i, int i2, String str, int i3) {
        this.e = i;
        this.f = i2;
        this.g = str;
        this.h = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.f;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.i0(parcel, 2, this.g, false);
        int i3 = this.h;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i3);
        int i4 = this.e;
        bi.r0(parcel, 1000, 4);
        parcel.writeInt(i4);
        bi.t0(parcel, iM0);
    }

    public zzajy(id0 id0Var) {
        String str = id0Var.b;
        int i = id0Var.a;
        this.e = 2;
        this.f = 1;
        this.g = str;
        this.h = i;
    }
}
