package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.e10;

/* loaded from: classes.dex */
public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new e10();
    public final int e;
    public final Account f;
    public final int g;
    public final GoogleSignInAccount h;

    public ResolveAccountRequest(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.e = i;
        this.f = account;
        this.g = i2;
        this.h = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.h0(parcel, 2, this.f, i, false);
        int i3 = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i3);
        bi.h0(parcel, 4, this.h, i, false);
        bi.t0(parcel, iM0);
    }

    public ResolveAccountRequest(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this.e = 2;
        this.f = account;
        this.g = i;
        this.h = googleSignInAccount;
    }
}
