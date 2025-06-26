package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.ms4;
import defpackage.ns4;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzaq extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzaq> CREATOR = new ns4();
    public final Bundle e;

    public zzaq(Bundle bundle) {
        this.e = bundle;
    }

    public final Long C() {
        return Long.valueOf(this.e.getLong("value"));
    }

    public final Double K0() {
        return Double.valueOf(this.e.getDouble("value"));
    }

    public final String L0(String str) {
        return this.e.getString(str);
    }

    public final Bundle M0() {
        return new Bundle(this.e);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new ms4(this);
    }

    public final Object n(String str) {
        return this.e.get(str);
    }

    public final String toString() {
        return this.e.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.c0(parcel, 2, M0(), false);
        bi.t0(parcel, iM0);
    }
}
