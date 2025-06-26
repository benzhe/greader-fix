package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jo;
import defpackage.os4;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zzas extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzas> CREATOR = new os4();
    public final String e;
    public final zzaq f;
    public final String g;
    public final long h;

    public zzas(zzas zzasVar, long j) {
        Objects.requireNonNull(zzasVar, "null reference");
        this.e = zzasVar.e;
        this.f = zzasVar.f;
        this.g = zzasVar.g;
        this.h = j;
    }

    public final String toString() {
        String str = this.g;
        String str2 = this.e;
        String strValueOf = String.valueOf(this.f);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 21 + String.valueOf(str2).length() + strValueOf.length());
        jo.J(sb, "origin=", str, ",name=", str2);
        return jo.s(sb, ",params=", strValueOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        os4.a(this, parcel, i);
    }

    public zzas(String str, zzaq zzaqVar, String str2, long j) {
        this.e = str;
        this.f = zzaqVar;
        this.g = str2;
        this.h = j;
    }
}
