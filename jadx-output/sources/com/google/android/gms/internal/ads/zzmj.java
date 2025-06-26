package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.el3;
import defpackage.ii3;

/* loaded from: classes.dex */
public final class zzmj extends zzmo {
    public static final Parcelable.Creator<zzmj> CREATOR = new ii3();
    public final String f;
    public final String g;
    public final String h;

    public zzmj(String str, String str2, String str3) {
        super("COMM");
        this.f = str;
        this.g = str2;
        this.h = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmj.class == obj.getClass()) {
            zzmj zzmjVar = (zzmj) obj;
            if (el3.d(this.g, zzmjVar.g) && el3.d(this.f, zzmjVar.f) && el3.d(this.h, zzmjVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.g;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.h;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.h);
    }

    public zzmj(Parcel parcel) {
        super("COMM");
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
    }
}
