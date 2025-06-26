package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.lj0;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaqr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaqr> CREATOR = new lj0();
    public final int e;
    public final int f;
    public final int g;

    public zzaqr(int i, int i2, int i3) {
        this.e = i;
        this.f = i2;
        this.g = i3;
    }

    public static zzaqr n(VersionInfo versionInfo) {
        return new zzaqr(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzaqr)) {
            zzaqr zzaqrVar = (zzaqr) obj;
            if (zzaqrVar.g == this.g && zzaqrVar.f == this.f && zzaqrVar.e == this.e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.e, this.f, this.g});
    }

    public final String toString() {
        int i = this.e;
        int i2 = this.f;
        int i3 = this.g;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.f;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i4);
        bi.t0(parcel, iM0);
    }
}
