package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.g14;
import defpackage.jo;
import defpackage.z14;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new z14();
    public final String e;
    public final int f;
    public final int g;
    public final String h;
    public final String i;
    public final boolean j;
    public final String k;
    public final boolean l;
    public final int m;

    public zzr(String str, int i, int i2, String str2, String str3, String str4, boolean z, g14 g14Var) {
        Objects.requireNonNull(str, "null reference");
        this.e = str;
        this.f = i;
        this.g = i2;
        this.k = str2;
        this.h = str3;
        this.i = null;
        this.j = !z;
        this.l = z;
        this.m = g14Var.e;
    }

    public zzr(String str, int i, int i2, String str2, String str3, boolean z, String str4, boolean z2, int i3) {
        this.e = str;
        this.f = i;
        this.g = i2;
        this.h = str2;
        this.i = str3;
        this.j = z;
        this.k = str4;
        this.l = z2;
        this.m = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzr) {
            zzr zzrVar = (zzr) obj;
            if (bi.B(this.e, zzrVar.e) && this.f == zzrVar.f && this.g == zzrVar.g && bi.B(this.k, zzrVar.k) && bi.B(this.h, zzrVar.h) && bi.B(this.i, zzrVar.i) && this.j == zzrVar.j && this.l == zzrVar.l && this.m == zzrVar.m) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, Integer.valueOf(this.f), Integer.valueOf(this.g), this.k, this.h, this.i, Boolean.valueOf(this.j), Boolean.valueOf(this.l), Integer.valueOf(this.m)});
    }

    public final String toString() {
        StringBuilder sbB = jo.B("PlayLoggerContext[", "package=");
        sbB.append(this.e);
        sbB.append(',');
        sbB.append("packageVersionCode=");
        sbB.append(this.f);
        sbB.append(',');
        sbB.append("logSource=");
        sbB.append(this.g);
        sbB.append(',');
        sbB.append("logSourceName=");
        sbB.append(this.k);
        sbB.append(',');
        sbB.append("uploadAccount=");
        sbB.append(this.h);
        sbB.append(',');
        sbB.append("loggingId=");
        sbB.append(this.i);
        sbB.append(',');
        sbB.append("logAndroidId=");
        sbB.append(this.j);
        sbB.append(',');
        sbB.append("isAnonymous=");
        sbB.append(this.l);
        sbB.append(',');
        sbB.append("qosTier=");
        return jo.q(sbB, this.m, "]");
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
        bi.i0(parcel, 5, this.h, false);
        bi.i0(parcel, 6, this.i, false);
        boolean z = this.j;
        bi.r0(parcel, 7, 4);
        parcel.writeInt(z ? 1 : 0);
        bi.i0(parcel, 8, this.k, false);
        boolean z2 = this.l;
        bi.r0(parcel, 9, 4);
        parcel.writeInt(z2 ? 1 : 0);
        int i4 = this.m;
        bi.r0(parcel, 10, 4);
        parcel.writeInt(i4);
        bi.t0(parcel, iM0);
    }
}
