package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.g10;

/* loaded from: classes.dex */
public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new g10();
    public final int e;
    public final int f;
    public final int g;

    @Deprecated
    public final Scope[] h;

    public SignInButtonConfig(int i, int i2) {
        this.e = 1;
        this.f = i;
        this.g = i2;
        this.h = null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
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
        bi.l0(parcel, 4, this.h, i, false);
        bi.t0(parcel, iM0);
    }

    public SignInButtonConfig(int i, int i2, int i3, Scope[] scopeArr) {
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = scopeArr;
    }
}
