package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.fc0;

/* loaded from: classes.dex */
public final class zzaja extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaja> CREATOR = new fc0();
    public final boolean e;
    public final String f;
    public final int g;
    public final byte[] h;
    public final String[] i;
    public final String[] j;
    public final boolean k;
    public final long l;

    public zzaja(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.e = z;
        this.f = str;
        this.g = i;
        this.h = bArr;
        this.i = strArr;
        this.j = strArr2;
        this.k = z2;
        this.l = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        boolean z = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(z ? 1 : 0);
        bi.i0(parcel, 2, this.f, false);
        int i2 = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i2);
        bi.d0(parcel, 4, this.h, false);
        bi.j0(parcel, 5, this.i, false);
        bi.j0(parcel, 6, this.j, false);
        boolean z2 = this.k;
        bi.r0(parcel, 7, 4);
        parcel.writeInt(z2 ? 1 : 0);
        long j = this.l;
        bi.r0(parcel, 8, 8);
        parcel.writeLong(j);
        bi.t0(parcel, iM0);
    }
}
