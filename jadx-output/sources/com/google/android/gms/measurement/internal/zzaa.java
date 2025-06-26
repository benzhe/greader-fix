package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.zr4;

/* loaded from: classes.dex */
public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new zr4();
    public String e;
    public String f;
    public zzkr g;
    public long h;
    public boolean i;
    public String j;
    public final zzas k;
    public long l;
    public zzas m;
    public final long n;
    public final zzas o;

    public zzaa(zzaa zzaaVar) {
        this.e = zzaaVar.e;
        this.f = zzaaVar.f;
        this.g = zzaaVar.g;
        this.h = zzaaVar.h;
        this.i = zzaaVar.i;
        this.j = zzaaVar.j;
        this.k = zzaaVar.k;
        this.l = zzaaVar.l;
        this.m = zzaaVar.m;
        this.n = zzaaVar.n;
        this.o = zzaaVar.o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, this.e, false);
        bi.i0(parcel, 3, this.f, false);
        bi.h0(parcel, 4, this.g, i, false);
        long j = this.h;
        bi.r0(parcel, 5, 8);
        parcel.writeLong(j);
        boolean z = this.i;
        bi.r0(parcel, 6, 4);
        parcel.writeInt(z ? 1 : 0);
        bi.i0(parcel, 7, this.j, false);
        bi.h0(parcel, 8, this.k, i, false);
        long j2 = this.l;
        bi.r0(parcel, 9, 8);
        parcel.writeLong(j2);
        bi.h0(parcel, 10, this.m, i, false);
        long j3 = this.n;
        bi.r0(parcel, 11, 8);
        parcel.writeLong(j3);
        bi.h0(parcel, 12, this.o, i, false);
        bi.t0(parcel, iM0);
    }

    public zzaa(String str, String str2, zzkr zzkrVar, long j, boolean z, String str3, zzas zzasVar, long j2, zzas zzasVar2, long j3, zzas zzasVar3) {
        this.e = str;
        this.f = str2;
        this.g = zzkrVar;
        this.h = j;
        this.i = z;
        this.j = str3;
        this.k = zzasVar;
        this.l = j2;
        this.m = zzasVar2;
        this.n = j3;
        this.o = zzasVar3;
    }
}
