package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.el3;
import defpackage.ki3;

/* loaded from: classes.dex */
public final class zzmn extends zzmo {
    public static final Parcelable.Creator<zzmn> CREATOR = new ki3();
    public final String f;
    public final String g;

    public zzmn(String str, String str2) {
        super(str);
        this.f = null;
        this.g = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmn.class == obj.getClass()) {
            zzmn zzmnVar = (zzmn) obj;
            if (this.e.equals(zzmnVar.e) && el3.d(this.f, zzmnVar.f) && el3.d(this.g, zzmnVar.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + 527) * 31;
        String str = this.f;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.g;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
    }

    public zzmn(Parcel parcel) {
        super(parcel.readString());
        this.f = parcel.readString();
        this.g = parcel.readString();
    }
}
