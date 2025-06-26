package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.no3;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class zzth extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzth> CREATOR = new no3();
    public ParcelFileDescriptor e;
    public final boolean f;
    public final boolean g;
    public final long h;
    public final boolean i;

    public zzth() {
        this.e = null;
        this.f = false;
        this.g = false;
        this.h = 0L;
        this.i = false;
    }

    public final synchronized InputStream C() {
        if (this.e == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.e);
        this.e = null;
        return autoCloseInputStream;
    }

    public final synchronized boolean K0() {
        return this.f;
    }

    public final synchronized boolean L0() {
        return this.g;
    }

    public final synchronized long M0() {
        return this.h;
    }

    public final synchronized boolean N0() {
        return this.i;
    }

    public final synchronized boolean n() {
        return this.e != null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ParcelFileDescriptor parcelFileDescriptor;
        int iM0 = bi.m0(parcel, 20293);
        synchronized (this) {
            parcelFileDescriptor = this.e;
        }
        bi.h0(parcel, 2, parcelFileDescriptor, i, false);
        boolean zK0 = K0();
        bi.r0(parcel, 3, 4);
        parcel.writeInt(zK0 ? 1 : 0);
        boolean zL0 = L0();
        bi.r0(parcel, 4, 4);
        parcel.writeInt(zL0 ? 1 : 0);
        long jM0 = M0();
        bi.r0(parcel, 5, 8);
        parcel.writeLong(jM0);
        boolean zN0 = N0();
        bi.r0(parcel, 6, 4);
        parcel.writeInt(zN0 ? 1 : 0);
        bi.t0(parcel, iM0);
    }

    public zzth(ParcelFileDescriptor parcelFileDescriptor, boolean z, boolean z2, long j, boolean z3) {
        this.e = parcelFileDescriptor;
        this.f = z;
        this.g = z2;
        this.h = j;
        this.i = z3;
    }
}
