package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.gi3;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzmh implements Parcelable {
    public static final Parcelable.Creator<zzmh> CREATOR = new gi3();
    public final zza[] e;

    public interface zza extends Parcelable {
    }

    public zzmh(List<? extends zza> list) {
        zza[] zzaVarArr = new zza[list.size()];
        this.e = zzaVarArr;
        list.toArray(zzaVarArr);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzmh.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.e, ((zzmh) obj).e);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.e.length);
        for (zza zzaVar : this.e) {
            parcel.writeParcelable(zzaVar, 0);
        }
    }

    public zzmh(Parcel parcel) {
        this.e = new zza[parcel.readInt()];
        int i = 0;
        while (true) {
            zza[] zzaVarArr = this.e;
            if (i >= zzaVarArr.length) {
                return;
            }
            zzaVarArr[i] = (zza) parcel.readParcelable(zza.class.getClassLoader());
            i++;
        }
    }
}
