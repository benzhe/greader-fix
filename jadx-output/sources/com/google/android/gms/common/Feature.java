package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.k20;
import defpackage.w00;
import java.util.Arrays;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new k20();
    public final String e;

    @Deprecated
    public final int f;
    public final long g;

    public Feature(String str, long j) {
        this.e = str;
        this.g = j;
        this.f = -1;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            String str = this.e;
            if (((str != null && str.equals(feature.e)) || (this.e == null && feature.e == null)) && n() == feature.n()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, Long.valueOf(n())});
    }

    public long n() {
        long j = this.g;
        return j == -1 ? this.f : j;
    }

    public String toString() {
        w00 w00Var = new w00(this, null);
        w00Var.a(InetAddressKeys.KEY_NAME, this.e);
        w00Var.a("version", Long.valueOf(n()));
        return w00Var.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        int i2 = this.f;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(i2);
        long jN = n();
        bi.r0(parcel, 3, 8);
        parcel.writeLong(jN);
        bi.t0(parcel, iM0);
    }

    public Feature(String str, int i, long j) {
        this.e = str;
        this.f = i;
        this.g = j;
    }
}
