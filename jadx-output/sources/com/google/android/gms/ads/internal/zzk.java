package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;

/* loaded from: classes.dex */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzj();
    public final String e;
    public final boolean zzbpo;
    public final boolean zzbpp;
    public final boolean zzbpr;
    public final float zzbps;
    public final int zzbpt;
    public final boolean zzbpu;
    public final boolean zzbpv;
    public final boolean zzbpw;

    public zzk(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, z3, f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        boolean z = this.zzbpo;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.zzbpp;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(z2 ? 1 : 0);
        bi.i0(parcel, 4, this.e, false);
        boolean z3 = this.zzbpr;
        bi.r0(parcel, 5, 4);
        parcel.writeInt(z3 ? 1 : 0);
        float f = this.zzbps;
        bi.r0(parcel, 6, 4);
        parcel.writeFloat(f);
        int i2 = this.zzbpt;
        bi.r0(parcel, 7, 4);
        parcel.writeInt(i2);
        boolean z4 = this.zzbpu;
        bi.r0(parcel, 8, 4);
        parcel.writeInt(z4 ? 1 : 0);
        boolean z5 = this.zzbpv;
        bi.r0(parcel, 9, 4);
        parcel.writeInt(z5 ? 1 : 0);
        boolean z6 = this.zzbpw;
        bi.r0(parcel, 10, 4);
        parcel.writeInt(z6 ? 1 : 0);
        bi.t0(parcel, iM0);
    }

    public zzk(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.zzbpo = z;
        this.zzbpp = z2;
        this.e = str;
        this.zzbpr = z3;
        this.zzbps = f;
        this.zzbpt = i;
        this.zzbpu = z4;
        this.zzbpv = z5;
        this.zzbpw = z6;
    }
}
