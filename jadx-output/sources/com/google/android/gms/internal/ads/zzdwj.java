package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.gl1;
import defpackage.wr2;

/* loaded from: classes.dex */
public final class zzdwj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwj> CREATOR = new wr2();
    public final int e;
    public gl1 f = null;
    public byte[] g;

    public zzdwj(int i, byte[] bArr) {
        this.e = i;
        this.g = bArr;
        n();
    }

    public final void n() {
        gl1 gl1Var = this.f;
        if (gl1Var != null || this.g == null) {
            if (gl1Var == null || this.g != null) {
                if (gl1Var != null && this.g != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (gl1Var != null || this.g != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        byte[] bArrB = this.g;
        if (bArrB == null) {
            bArrB = this.f.b();
        }
        bi.d0(parcel, 2, bArrB, false);
        bi.t0(parcel, iM0);
    }
}
