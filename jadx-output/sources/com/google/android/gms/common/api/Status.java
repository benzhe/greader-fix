package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.f00;
import defpackage.ty;
import defpackage.w00;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Status extends AbstractSafeParcelable implements ty, ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR;
    public static final Status i = new Status(0);
    public static final Status j;
    public static final Status k;
    public final int e;
    public final int f;
    public final String g;
    public final PendingIntent h;

    static {
        new Status(14);
        new Status(8);
        j = new Status(15);
        k = new Status(16);
        new Status(17);
        new Status(18);
        CREATOR = new f00();
    }

    public Status(int i2, int i3, String str, PendingIntent pendingIntent) {
        this.e = i2;
        this.f = i3;
        this.g = str;
        this.h = pendingIntent;
    }

    @Override // defpackage.ty
    public final Status d0() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.e == status.e && this.f == status.f && bi.B(this.g, status.g) && bi.B(this.h, status.h);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.e), Integer.valueOf(this.f), this.g, this.h});
    }

    public final String toString() {
        w00 w00Var = new w00(this, null);
        String strD = this.g;
        if (strD == null) {
            strD = bi.D(this.f);
        }
        w00Var.a("statusCode", strD);
        w00Var.a("resolution", this.h);
        return w00Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iM0 = bi.m0(parcel, 20293);
        int i3 = this.f;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i3);
        bi.i0(parcel, 2, this.g, false);
        bi.h0(parcel, 3, this.h, i2, false);
        int i4 = this.e;
        bi.r0(parcel, 1000, 4);
        parcel.writeInt(i4);
        bi.t0(parcel, iM0);
    }

    public Status(int i2) {
        this(1, i2, null, null);
    }

    public Status(int i2, String str) {
        this(1, i2, str, null);
    }
}
