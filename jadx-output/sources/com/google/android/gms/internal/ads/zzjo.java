package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.ag3;
import defpackage.cg3;
import defpackage.el3;
import defpackage.jo;
import defpackage.zd3;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzjo implements Parcelable, Comparator<zza> {
    public static final Parcelable.Creator<zzjo> CREATOR = new ag3();
    public final zza[] e;
    public int f;
    public final int g;

    public zzjo(boolean z, zza... zzaVarArr) {
        zzaVarArr = z ? (zza[]) zzaVarArr.clone() : zzaVarArr;
        Arrays.sort(zzaVarArr, this);
        for (int i = 1; i < zzaVarArr.length; i++) {
            if (zzaVarArr[i - 1].f.equals(zzaVarArr[i].f)) {
                String strValueOf = String.valueOf(zzaVarArr[i].f);
                throw new IllegalArgumentException(jo.O(strValueOf.length() + 25, "Duplicate data for uuid: ", strValueOf));
            }
        }
        this.e = zzaVarArr;
        this.g = zzaVarArr.length;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zza zzaVar, zza zzaVar2) {
        zza zzaVar3 = zzaVar;
        zza zzaVar4 = zzaVar2;
        UUID uuid = zd3.b;
        return uuid.equals(zzaVar3.f) ? uuid.equals(zzaVar4.f) ? 0 : 1 : zzaVar3.f.compareTo(zzaVar4.f);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzjo.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.e, ((zzjo) obj).e);
    }

    public final int hashCode() {
        if (this.f == 0) {
            this.f = Arrays.hashCode(this.e);
        }
        return this.f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.e, 0);
    }

    public static final class zza implements Parcelable {
        public static final Parcelable.Creator<zza> CREATOR = new cg3();
        public int e;
        public final UUID f;
        public final String g;
        public final byte[] h;
        public final boolean i;

        public zza(UUID uuid, String str, byte[] bArr) {
            Objects.requireNonNull(uuid);
            this.f = uuid;
            this.g = str;
            Objects.requireNonNull(bArr);
            this.h = bArr;
            this.i = false;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            zza zzaVar = (zza) obj;
            return this.g.equals(zzaVar.g) && el3.d(this.f, zzaVar.f) && Arrays.equals(this.h, zzaVar.h);
        }

        public final int hashCode() {
            if (this.e == 0) {
                this.e = Arrays.hashCode(this.h) + ((this.g.hashCode() + (this.f.hashCode() * 31)) * 31);
            }
            return this.e;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f.getMostSignificantBits());
            parcel.writeLong(this.f.getLeastSignificantBits());
            parcel.writeString(this.g);
            parcel.writeByteArray(this.h);
            parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        }

        public zza(Parcel parcel) {
            this.f = new UUID(parcel.readLong(), parcel.readLong());
            this.g = parcel.readString();
            this.h = parcel.createByteArray();
            this.i = parcel.readByte() != 0;
        }
    }

    public zzjo(Parcel parcel) {
        zza[] zzaVarArr = (zza[]) parcel.createTypedArray(zza.CREATOR);
        this.e = zzaVarArr;
        this.g = zzaVarArr.length;
    }
}
