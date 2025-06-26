package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.m25;
import defpackage.n25;

/* loaded from: classes.dex */
public final class zzkr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzkr> CREATOR = new m25();
    public final int e;
    public final String f;
    public final long g;
    public final Long h;
    public final String i;
    public final String j;
    public final Double k;

    public zzkr(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        this.e = i;
        this.f = str;
        this.g = j;
        this.h = l;
        if (i == 1) {
            this.k = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.k = d;
        }
        this.i = str2;
        this.j = str3;
    }

    public final Object n() {
        Long l = this.h;
        if (l != null) {
            return l;
        }
        Double d = this.k;
        if (d != null) {
            return d;
        }
        String str = this.i;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        m25.a(this, parcel, i);
    }

    public zzkr(n25 n25Var) {
        this(n25Var.c, n25Var.d, n25Var.e, n25Var.b);
    }

    public zzkr(String str, long j, Object obj, String str2) {
        bi.g(str);
        this.e = 2;
        this.f = str;
        this.g = j;
        this.j = str2;
        if (obj == null) {
            this.h = null;
            this.k = null;
            this.i = null;
            return;
        }
        if (obj instanceof Long) {
            this.h = (Long) obj;
            this.k = null;
            this.i = null;
        } else if (obj instanceof String) {
            this.h = null;
            this.k = null;
            this.i = (String) obj;
        } else {
            if (obj instanceof Double) {
                this.h = null;
                this.k = (Double) obj;
                this.i = null;
                return;
            }
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
