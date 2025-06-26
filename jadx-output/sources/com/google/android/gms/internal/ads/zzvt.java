package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.qr3;

/* loaded from: classes.dex */
public class zzvt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvt> CREATOR = new qr3();
    public final String e;
    public final int f;
    public final int g;
    public final boolean h;
    public final int i;
    public final int j;
    public final zzvt[] k;
    public final boolean l;
    public final boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;

    public zzvt() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public static zzvt C() {
        return new zzvt("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    public static zzvt K0() {
        return new zzvt("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public static zzvt L0() {
        return new zzvt("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    public static zzvt M0() {
        return new zzvt("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
    }

    public static int n(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
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
        int i4 = this.i;
        bi.r0(parcel, 6, 4);
        parcel.writeInt(i4);
        int i5 = this.j;
        bi.r0(parcel, 7, 4);
        parcel.writeInt(i5);
        bi.l0(parcel, 8, this.k, i, false);
        boolean z2 = this.l;
        bi.r0(parcel, 9, 4);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = this.m;
        bi.r0(parcel, 10, 4);
        parcel.writeInt(z3 ? 1 : 0);
        boolean z4 = this.n;
        bi.r0(parcel, 11, 4);
        parcel.writeInt(z4 ? 1 : 0);
        boolean z5 = this.o;
        bi.r0(parcel, 12, 4);
        parcel.writeInt(z5 ? 1 : 0);
        boolean z6 = this.p;
        bi.r0(parcel, 13, 4);
        parcel.writeInt(z6 ? 1 : 0);
        boolean z7 = this.q;
        bi.r0(parcel, 14, 4);
        parcel.writeInt(z7 ? 1 : 0);
        boolean z8 = this.r;
        bi.r0(parcel, 15, 4);
        parcel.writeInt(z8 ? 1 : 0);
        boolean z9 = this.s;
        bi.r0(parcel, 16, 4);
        parcel.writeInt(z9 ? 1 : 0);
        bi.t0(parcel, iM0);
    }

    public zzvt(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzvt(android.content.Context r14, com.google.android.gms.ads.AdSize[] r15) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvt.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    public zzvt(String str, int i, int i2, boolean z, int i3, int i4, zzvt[] zzvtVarArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.e = str;
        this.f = i;
        this.g = i2;
        this.h = z;
        this.i = i3;
        this.j = i4;
        this.k = zzvtVarArr;
        this.l = z2;
        this.m = z3;
        this.n = z4;
        this.o = z5;
        this.p = z6;
        this.q = z7;
        this.r = z8;
        this.s = z9;
    }
}
