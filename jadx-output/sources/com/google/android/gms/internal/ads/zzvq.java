package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.or3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzvq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvq> CREATOR = new or3();
    public final int A;
    public final int e;

    @Deprecated
    public final long f;
    public final Bundle g;

    @Deprecated
    public final int h;
    public final List<String> i;
    public final boolean j;
    public final int k;
    public final boolean l;
    public final String m;
    public final zzaav n;
    public final Location o;
    public final String p;
    public final Bundle q;
    public final Bundle r;
    public final List<String> s;
    public final String t;
    public final String u;

    @Deprecated
    public final boolean v;
    public final zzvf w;
    public final int x;
    public final String y;
    public final List<String> z;

    public zzvq(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzaav zzaavVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, zzvf zzvfVar, int i4, String str5, List<String> list3, int i5) {
        this.e = i;
        this.f = j;
        this.g = bundle == null ? new Bundle() : bundle;
        this.h = i2;
        this.i = list;
        this.j = z;
        this.k = i3;
        this.l = z2;
        this.m = str;
        this.n = zzaavVar;
        this.o = location;
        this.p = str2;
        this.q = bundle2 == null ? new Bundle() : bundle2;
        this.r = bundle3;
        this.s = list2;
        this.t = str3;
        this.u = str4;
        this.v = z3;
        this.w = zzvfVar;
        this.x = i4;
        this.y = str5;
        this.z = list3 == null ? new ArrayList<>() : list3;
        this.A = i5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzvq)) {
            return false;
        }
        zzvq zzvqVar = (zzvq) obj;
        return this.e == zzvqVar.e && this.f == zzvqVar.f && bi.B(this.g, zzvqVar.g) && this.h == zzvqVar.h && bi.B(this.i, zzvqVar.i) && this.j == zzvqVar.j && this.k == zzvqVar.k && this.l == zzvqVar.l && bi.B(this.m, zzvqVar.m) && bi.B(this.n, zzvqVar.n) && bi.B(this.o, zzvqVar.o) && bi.B(this.p, zzvqVar.p) && bi.B(this.q, zzvqVar.q) && bi.B(this.r, zzvqVar.r) && bi.B(this.s, zzvqVar.s) && bi.B(this.t, zzvqVar.t) && bi.B(this.u, zzvqVar.u) && this.v == zzvqVar.v && this.x == zzvqVar.x && bi.B(this.y, zzvqVar.y) && bi.B(this.z, zzvqVar.z) && this.A == zzvqVar.A;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.e), Long.valueOf(this.f), this.g, Integer.valueOf(this.h), this.i, Boolean.valueOf(this.j), Integer.valueOf(this.k), Boolean.valueOf(this.l), this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, Boolean.valueOf(this.v), Integer.valueOf(this.x), this.y, this.z, Integer.valueOf(this.A)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        long j = this.f;
        bi.r0(parcel, 2, 8);
        parcel.writeLong(j);
        bi.c0(parcel, 3, this.g, false);
        int i3 = this.h;
        bi.r0(parcel, 4, 4);
        parcel.writeInt(i3);
        bi.k0(parcel, 5, this.i, false);
        boolean z = this.j;
        bi.r0(parcel, 6, 4);
        parcel.writeInt(z ? 1 : 0);
        int i4 = this.k;
        bi.r0(parcel, 7, 4);
        parcel.writeInt(i4);
        boolean z2 = this.l;
        bi.r0(parcel, 8, 4);
        parcel.writeInt(z2 ? 1 : 0);
        bi.i0(parcel, 9, this.m, false);
        bi.h0(parcel, 10, this.n, i, false);
        bi.h0(parcel, 11, this.o, i, false);
        bi.i0(parcel, 12, this.p, false);
        bi.c0(parcel, 13, this.q, false);
        bi.c0(parcel, 14, this.r, false);
        bi.k0(parcel, 15, this.s, false);
        bi.i0(parcel, 16, this.t, false);
        bi.i0(parcel, 17, this.u, false);
        boolean z3 = this.v;
        bi.r0(parcel, 18, 4);
        parcel.writeInt(z3 ? 1 : 0);
        bi.h0(parcel, 19, this.w, i, false);
        int i5 = this.x;
        bi.r0(parcel, 20, 4);
        parcel.writeInt(i5);
        bi.i0(parcel, 21, this.y, false);
        bi.k0(parcel, 22, this.z, false);
        int i6 = this.A;
        bi.r0(parcel, 23, 4);
        parcel.writeInt(i6);
        bi.t0(parcel, iM0);
    }
}
