package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.el3;
import defpackage.hi3;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzmi extends zzmo {
    public static final Parcelable.Creator<zzmi> CREATOR = new hi3();
    public final String f;
    public final String g;
    public final int h;
    public final byte[] i;

    public zzmi(String str, byte[] bArr) {
        super("APIC");
        this.f = str;
        this.g = null;
        this.h = 3;
        this.i = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmi.class == obj.getClass()) {
            zzmi zzmiVar = (zzmi) obj;
            if (this.h == zzmiVar.h && el3.d(this.f, zzmiVar.f) && el3.d(this.g, zzmiVar.g) && Arrays.equals(this.i, zzmiVar.i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (this.h + 527) * 31;
        String str = this.f;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.g;
        return Arrays.hashCode(this.i) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h);
        parcel.writeByteArray(this.i);
    }

    public zzmi(Parcel parcel) {
        super("APIC");
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readInt();
        this.i = parcel.createByteArray();
    }
}
