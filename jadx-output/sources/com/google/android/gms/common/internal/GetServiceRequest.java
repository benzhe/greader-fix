package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.gy;
import defpackage.h00;
import defpackage.i10;
import defpackage.q00;
import java.util.Objects;

/* loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new i10();
    public final int e;
    public final int f;
    public int g;
    public String h;
    public IBinder i;
    public Scope[] j;
    public Bundle k;
    public Account l;
    public Feature[] m;
    public Feature[] n;
    public boolean o;
    public int p;

    public GetServiceRequest(int i) {
        this.e = 4;
        this.g = gy.a;
        this.f = i;
        this.o = true;
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
        bi.i0(parcel, 4, this.h, false);
        bi.f0(parcel, 5, this.i, false);
        bi.l0(parcel, 6, this.j, i, false);
        bi.c0(parcel, 7, this.k, false);
        bi.h0(parcel, 8, this.l, i, false);
        bi.l0(parcel, 10, this.m, i, false);
        bi.l0(parcel, 11, this.n, i, false);
        boolean z = this.o;
        bi.r0(parcel, 12, 4);
        parcel.writeInt(z ? 1 : 0);
        int i5 = this.p;
        bi.r0(parcel, 13, 4);
        parcel.writeInt(i5);
        bi.t0(parcel, iM0);
    }

    public GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i4) {
        this.e = i;
        this.f = i2;
        this.g = i3;
        if ("com.google.android.gms".equals(str)) {
            this.h = "com.google.android.gms";
        } else {
            this.h = str;
        }
        if (i < 2) {
            Account accountA = null;
            if (iBinder != null) {
                q00 q00VarG0 = q00.a.g0(iBinder);
                int i5 = h00.e;
                if (q00VarG0 != null) {
                    long jClearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        accountA = q00VarG0.a();
                    } catch (RemoteException unused) {
                        Log.w("AccountAccessor", "Remote account accessor probably died");
                    } finally {
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                    }
                }
                Objects.requireNonNull(accountA, "null reference");
            }
            this.l = accountA;
        } else {
            this.i = iBinder;
            this.l = account;
        }
        this.j = scopeArr;
        this.k = bundle;
        this.m = featureArr;
        this.n = featureArr2;
        this.o = z;
        this.p = i4;
    }
}
