package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.u25;
import java.util.List;

/* loaded from: classes.dex */
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new u25();
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final long i;
    public final long j;
    public final String k;
    public final boolean l;
    public final boolean m;
    public final long n;
    public final String o;
    public final long p;
    public final long q;
    public final int r;
    public final boolean s;
    public final boolean t;
    public final String u;
    public final Boolean v;
    public final long w;
    public final List<String> x;
    public final String y;
    public final String z;

    public zzp(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        bi.g(str);
        this.e = str;
        this.f = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.g = str3;
        this.n = j;
        this.h = str4;
        this.i = j2;
        this.j = j3;
        this.k = str5;
        this.l = z;
        this.m = z2;
        this.o = str6;
        this.p = j4;
        this.q = j5;
        this.r = i;
        this.s = z3;
        this.t = z4;
        this.u = str7;
        this.v = bool;
        this.w = j6;
        this.x = list;
        this.y = str8;
        this.z = str9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, this.e, false);
        bi.i0(parcel, 3, this.f, false);
        bi.i0(parcel, 4, this.g, false);
        bi.i0(parcel, 5, this.h, false);
        long j = this.i;
        bi.r0(parcel, 6, 8);
        parcel.writeLong(j);
        long j2 = this.j;
        bi.r0(parcel, 7, 8);
        parcel.writeLong(j2);
        bi.i0(parcel, 8, this.k, false);
        boolean z = this.l;
        bi.r0(parcel, 9, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.m;
        bi.r0(parcel, 10, 4);
        parcel.writeInt(z2 ? 1 : 0);
        long j3 = this.n;
        bi.r0(parcel, 11, 8);
        parcel.writeLong(j3);
        bi.i0(parcel, 12, this.o, false);
        long j4 = this.p;
        bi.r0(parcel, 13, 8);
        parcel.writeLong(j4);
        long j5 = this.q;
        bi.r0(parcel, 14, 8);
        parcel.writeLong(j5);
        int i2 = this.r;
        bi.r0(parcel, 15, 4);
        parcel.writeInt(i2);
        boolean z3 = this.s;
        bi.r0(parcel, 16, 4);
        parcel.writeInt(z3 ? 1 : 0);
        boolean z4 = this.t;
        bi.r0(parcel, 18, 4);
        parcel.writeInt(z4 ? 1 : 0);
        bi.i0(parcel, 19, this.u, false);
        Boolean bool = this.v;
        if (bool != null) {
            bi.r0(parcel, 21, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        long j6 = this.w;
        bi.r0(parcel, 22, 8);
        parcel.writeLong(j6);
        bi.k0(parcel, 23, this.x, false);
        bi.i0(parcel, 24, this.y, false);
        bi.i0(parcel, 25, this.z, false);
        bi.t0(parcel, iM0);
    }

    public zzp(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.n = j3;
        this.h = str4;
        this.i = j;
        this.j = j2;
        this.k = str5;
        this.l = z;
        this.m = z2;
        this.o = str6;
        this.p = j4;
        this.q = j5;
        this.r = i;
        this.s = z3;
        this.t = z4;
        this.u = str7;
        this.v = bool;
        this.w = j6;
        this.x = list;
        this.y = str8;
        this.z = str9;
    }
}
