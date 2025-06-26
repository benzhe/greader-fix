package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.by;
import defpackage.jo;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new by();
    public final boolean e;
    public final long f;
    public final long g;

    public zzc(boolean z, long j, long j2) {
        this.e = z;
        this.f = j;
        this.g = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzc) {
            zzc zzcVar = (zzc) obj;
            if (this.e == zzcVar.e && this.f == zzcVar.f && this.g == zzcVar.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.e), Long.valueOf(this.f), Long.valueOf(this.g)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CollectForDebugParcelable[skipPersistentStorage: ");
        sb.append(this.e);
        sb.append(",collectForDebugStartTimeMillis: ");
        sb.append(this.f);
        sb.append(",collectForDebugExpiryTimeMillis: ");
        return jo.r(sb, this.g, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        boolean z = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(z ? 1 : 0);
        long j = this.g;
        bi.r0(parcel, 2, 8);
        parcel.writeLong(j);
        long j2 = this.f;
        bi.r0(parcel, 3, 8);
        parcel.writeLong(j2);
        bi.t0(parcel, iM0);
    }
}
