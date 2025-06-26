package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.an2;
import defpackage.bi;
import defpackage.xm2;
import defpackage.ym2;
import defpackage.zm2;

/* loaded from: classes.dex */
public final class zzdrc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdrc> CREATOR = new zm2();
    public final ym2[] e;
    public final int[] f;
    public final int[] g;
    public final Context h;
    public final int i;
    public final ym2 j;
    public final int k;
    public final int l;
    public final int m;
    public final String n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;

    public zzdrc(Context context, ym2 ym2Var, int i, int i2, int i3, String str, String str2, String str3) {
        this.e = ym2.values();
        this.f = xm2.a();
        this.g = (int[]) an2.a.clone();
        this.h = context;
        this.i = ym2Var.ordinal();
        this.j = ym2Var;
        this.k = i;
        this.l = i2;
        this.m = i3;
        this.n = str;
        int i4 = "oldest".equals(str2) ? 1 : ("lru".equals(str2) || !"lfu".equals(str2)) ? 2 : 3;
        this.p = i4;
        this.o = i4 - 1;
        "onAdClosed".equals(str3);
        this.r = 1;
        this.q = 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.i;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.k;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = this.l;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i4);
        int i5 = this.m;
        bi.r0(parcel, 4, 4);
        parcel.writeInt(i5);
        bi.i0(parcel, 5, this.n, false);
        int i6 = this.o;
        bi.r0(parcel, 6, 4);
        parcel.writeInt(i6);
        int i7 = this.q;
        bi.r0(parcel, 7, 4);
        parcel.writeInt(i7);
        bi.t0(parcel, iM0);
    }

    public zzdrc(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        ym2[] ym2VarArrValues = ym2.values();
        this.e = ym2VarArrValues;
        int[] iArrA = xm2.a();
        this.f = iArrA;
        int[] iArr = (int[]) an2.a.clone();
        this.g = iArr;
        this.h = null;
        this.i = i;
        this.j = ym2VarArrValues[i];
        this.k = i2;
        this.l = i3;
        this.m = i4;
        this.n = str;
        this.o = i5;
        this.p = iArrA[i5];
        this.q = i6;
        this.r = iArr[i6];
    }
}
