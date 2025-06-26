package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.el3;
import defpackage.jo;
import defpackage.ke3;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzht implements Parcelable {
    public static final Parcelable.Creator<zzht> CREATOR = new ke3();
    public final long A;
    public final int B;
    public final String C;
    public final int D;
    public int E;
    public final String e;
    public final int f;
    public final String g;
    public final zzmh h;
    public final String i;
    public final String j;
    public final int k;
    public final List<byte[]> l;
    public final zzjo m;
    public final int n;
    public final int o;
    public final float p;
    public final int q;
    public final float r;
    public final int s;
    public final byte[] t;
    public final zzpy u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    public zzht(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zzpy zzpyVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zzjo zzjoVar, zzmh zzmhVar) {
        this.e = str;
        this.i = str2;
        this.j = str3;
        this.g = str4;
        this.f = i;
        this.k = i2;
        this.n = i3;
        this.o = i4;
        this.p = f;
        this.q = i5;
        this.r = f2;
        this.t = bArr;
        this.s = i6;
        this.u = zzpyVar;
        this.v = i7;
        this.w = i8;
        this.x = i9;
        this.y = i10;
        this.z = i11;
        this.B = i12;
        this.C = str5;
        this.D = i13;
        this.A = j;
        this.l = list == null ? Collections.emptyList() : list;
        this.m = zzjoVar;
        this.h = zzmhVar;
    }

    public static zzht a(String str, String str2, int i, int i2, int i3, int i4, List list, zzjo zzjoVar, int i5, String str3) {
        return new zzht(str, null, str2, null, -1, i, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, i4, -1, -1, i5, str3, -1, Long.MAX_VALUE, list, zzjoVar, null);
    }

    public static zzht b(String str, String str2, int i, int i2, int i3, List list, int i4, float f, byte[] bArr, int i5, zzpy zzpyVar, zzjo zzjoVar) {
        return new zzht(str, null, str2, null, -1, i, i2, i3, -1.0f, i4, f, bArr, i5, zzpyVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzjoVar, null);
    }

    public static zzht c(String str, String str2, int i, int i2, zzjo zzjoVar, String str3) {
        return a(str, str2, -1, i, i2, -1, null, zzjoVar, 0, str3);
    }

    public static zzht d(String str, String str2, int i, String str3, zzjo zzjoVar) {
        return e(str, str2, i, str3, zzjoVar, Long.MAX_VALUE, Collections.emptyList());
    }

    public static zzht e(String str, String str2, int i, String str3, zzjo zzjoVar, long j, List list) {
        return new zzht(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i, str3, -1, j, list, zzjoVar, null);
    }

    public static void f(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzht.class == obj.getClass()) {
            zzht zzhtVar = (zzht) obj;
            if (this.f == zzhtVar.f && this.k == zzhtVar.k && this.n == zzhtVar.n && this.o == zzhtVar.o && this.p == zzhtVar.p && this.q == zzhtVar.q && this.r == zzhtVar.r && this.s == zzhtVar.s && this.v == zzhtVar.v && this.w == zzhtVar.w && this.x == zzhtVar.x && this.y == zzhtVar.y && this.z == zzhtVar.z && this.A == zzhtVar.A && this.B == zzhtVar.B && el3.d(this.e, zzhtVar.e) && el3.d(this.C, zzhtVar.C) && this.D == zzhtVar.D && el3.d(this.i, zzhtVar.i) && el3.d(this.j, zzhtVar.j) && el3.d(this.g, zzhtVar.g) && el3.d(this.m, zzhtVar.m) && el3.d(this.h, zzhtVar.h) && el3.d(this.u, zzhtVar.u) && Arrays.equals(this.t, zzhtVar.t) && this.l.size() == zzhtVar.l.size()) {
                for (int i = 0; i < this.l.size(); i++) {
                    if (!Arrays.equals(this.l.get(i), zzhtVar.l.get(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final zzht g(long j) {
        return new zzht(this.e, this.i, this.j, this.g, this.f, this.k, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.B, this.C, this.D, j, this.l, this.m, this.h);
    }

    public final int h() {
        int i;
        int i2 = this.n;
        if (i2 == -1 || (i = this.o) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final int hashCode() {
        if (this.E == 0) {
            String str = this.e;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
            String str2 = this.i;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.j;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.g;
            int iHashCode4 = (((((((((((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.f) * 31) + this.n) * 31) + this.o) * 31) + this.v) * 31) + this.w) * 31;
            String str5 = this.C;
            int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.D) * 31;
            zzjo zzjoVar = this.m;
            int iHashCode6 = (iHashCode5 + (zzjoVar == null ? 0 : zzjoVar.hashCode())) * 31;
            zzmh zzmhVar = this.h;
            this.E = iHashCode6 + (zzmhVar != null ? zzmhVar.hashCode() : 0);
        }
        return this.E;
    }

    public final MediaFormat i() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.j);
        String str = this.C;
        if (str != null) {
            mediaFormat.setString(NSRSS20.LANGUAGE, str);
        }
        f(mediaFormat, "max-input-size", this.k);
        f(mediaFormat, "width", this.n);
        f(mediaFormat, "height", this.o);
        float f = this.p;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        f(mediaFormat, "rotation-degrees", this.q);
        f(mediaFormat, "channel-count", this.v);
        f(mediaFormat, "sample-rate", this.w);
        f(mediaFormat, "encoder-delay", this.y);
        f(mediaFormat, "encoder-padding", this.z);
        for (int i = 0; i < this.l.size(); i++) {
            mediaFormat.setByteBuffer(jo.M(15, "csd-", i), ByteBuffer.wrap(this.l.get(i)));
        }
        zzpy zzpyVar = this.u;
        if (zzpyVar != null) {
            f(mediaFormat, "color-transfer", zzpyVar.g);
            f(mediaFormat, "color-standard", zzpyVar.e);
            f(mediaFormat, "color-range", zzpyVar.f);
            byte[] bArr = zzpyVar.h;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final String toString() {
        String str = this.e;
        String str2 = this.i;
        String str3 = this.j;
        int i = this.f;
        String str4 = this.C;
        int i2 = this.n;
        int i3 = this.o;
        float f = this.p;
        int i4 = this.v;
        int i5 = this.w;
        StringBuilder sbY = jo.y(jo.x(str4, jo.x(str3, jo.x(str2, jo.x(str, 100)))), "Format(", str, ", ", str2);
        sbY.append(", ");
        sbY.append(str3);
        sbY.append(", ");
        sbY.append(i);
        sbY.append(", ");
        sbY.append(str4);
        sbY.append(", [");
        sbY.append(i2);
        sbY.append(", ");
        sbY.append(i3);
        sbY.append(", ");
        sbY.append(f);
        sbY.append("], [");
        sbY.append(i4);
        sbY.append(", ");
        sbY.append(i5);
        sbY.append("])");
        return sbY.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.e);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeString(this.g);
        parcel.writeInt(this.f);
        parcel.writeInt(this.k);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o);
        parcel.writeFloat(this.p);
        parcel.writeInt(this.q);
        parcel.writeFloat(this.r);
        parcel.writeInt(this.t != null ? 1 : 0);
        byte[] bArr = this.t;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.s);
        parcel.writeParcelable(this.u, i);
        parcel.writeInt(this.v);
        parcel.writeInt(this.w);
        parcel.writeInt(this.x);
        parcel.writeInt(this.y);
        parcel.writeInt(this.z);
        parcel.writeInt(this.B);
        parcel.writeString(this.C);
        parcel.writeInt(this.D);
        parcel.writeLong(this.A);
        int size = this.l.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.l.get(i2));
        }
        parcel.writeParcelable(this.m, 0);
        parcel.writeParcelable(this.h, 0);
    }

    public zzht(Parcel parcel) {
        this.e = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.g = parcel.readString();
        this.f = parcel.readInt();
        this.k = parcel.readInt();
        this.n = parcel.readInt();
        this.o = parcel.readInt();
        this.p = parcel.readFloat();
        this.q = parcel.readInt();
        this.r = parcel.readFloat();
        this.t = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.s = parcel.readInt();
        this.u = (zzpy) parcel.readParcelable(zzpy.class.getClassLoader());
        this.v = parcel.readInt();
        this.w = parcel.readInt();
        this.x = parcel.readInt();
        this.y = parcel.readInt();
        this.z = parcel.readInt();
        this.B = parcel.readInt();
        this.C = parcel.readString();
        this.D = parcel.readInt();
        this.A = parcel.readLong();
        int i = parcel.readInt();
        this.l = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.l.add(parcel.createByteArray());
        }
        this.m = (zzjo) parcel.readParcelable(zzjo.class.getClassLoader());
        this.h = (zzmh) parcel.readParcelable(zzmh.class.getClassLoader());
    }
}
