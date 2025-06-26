package com.google.firebase;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.c50;
import defpackage.jo;
import java.util.Date;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes.dex */
public final class Timestamp implements Comparable<Timestamp>, Parcelable {
    public static final Parcelable.Creator<Timestamp> CREATOR = new a();
    public final long e;
    public final int f;

    public class a implements Parcelable.Creator<Timestamp> {
        @Override // android.os.Parcelable.Creator
        public Timestamp createFromParcel(Parcel parcel) {
            return new Timestamp(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Timestamp[] newArray(int i) {
            return new Timestamp[i];
        }
    }

    public Timestamp(long j, int i) {
        k(j, i);
        this.e = j;
        this.f = i;
    }

    public static void k(long j, int i) {
        c50.q(i >= 0, "Timestamp nanoseconds out of range: %s", Integer.valueOf(i));
        c50.q(((double) i) < 1.0E9d, "Timestamp nanoseconds out of range: %s", Integer.valueOf(i));
        c50.q(j >= -62135596800L, "Timestamp seconds out of range: %s", Long.valueOf(j));
        c50.q(j < 253402300800L, "Timestamp seconds out of range: %s", Long.valueOf(j));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof Timestamp) && compareTo((Timestamp) obj) == 0;
    }

    public int hashCode() {
        long j = this.e;
        return (((((int) j) * 37 * 37) + ((int) (j >> 32))) * 37) + this.f;
    }

    @Override // java.lang.Comparable
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public int compareTo(Timestamp timestamp) {
        long j = this.e;
        long j2 = timestamp.e;
        return j == j2 ? Integer.signum(this.f - timestamp.f) : Long.signum(j - j2);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Timestamp(seconds=");
        sbZ.append(this.e);
        sbZ.append(", nanoseconds=");
        return jo.q(sbZ, this.f, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.e);
        parcel.writeInt(this.f);
    }

    public Timestamp(Parcel parcel) {
        this.e = parcel.readLong();
        this.f = parcel.readInt();
    }

    public Timestamp(Date date) {
        long time = date.getTime();
        long j = time / 1000;
        int i = ((int) (time % 1000)) * 1000000;
        if (i < 0) {
            j--;
            i += Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
        }
        k(j, i);
        this.e = j;
        this.f = i;
    }
}
