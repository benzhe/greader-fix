package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.ads.zzvh;
import defpackage.at2;
import defpackage.bi;
import defpackage.c50;

/* loaded from: classes.dex */
public final class zzaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzas();
    public final int errorCode;
    public final String zzacu;

    public zzaq(String str, int i) {
        this.zzacu = str == null ? "" : str;
        this.errorCode = i;
    }

    public static zzaq zzc(Throwable th) {
        zzvh zzvhVarL4 = c50.l4(th);
        String message = th.getMessage();
        int i = at2.a;
        return new zzaq(message == null || message.isEmpty() ? zzvhVarL4.f : th.getMessage(), zzvhVarL4.e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.zzacu, false);
        int i2 = this.errorCode;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(i2);
        bi.t0(parcel, iM0);
    }
}
