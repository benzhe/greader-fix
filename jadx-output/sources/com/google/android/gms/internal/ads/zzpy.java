package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.hl3;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzpy implements Parcelable {
    public static final Parcelable.Creator<zzpy> CREATOR = new hl3();
    public final int e;
    public final int f;
    public final int g;
    public final byte[] h;
    public int i;

    public zzpy(int i, int i2, int i3, byte[] bArr) {
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzpy.class == obj.getClass()) {
            zzpy zzpyVar = (zzpy) obj;
            if (this.e == zzpyVar.e && this.f == zzpyVar.f && this.g == zzpyVar.g && Arrays.equals(this.h, zzpyVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.i == 0) {
            this.i = Arrays.hashCode(this.h) + ((((((this.e + 527) * 31) + this.f) * 31) + this.g) * 31);
        }
        return this.i;
    }

    public final String toString() {
        int i = this.e;
        int i2 = this.f;
        int i3 = this.g;
        boolean z = this.h != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h != null ? 1 : 0);
        byte[] bArr = this.h;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }

    public zzpy(Parcel parcel) {
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }
}
