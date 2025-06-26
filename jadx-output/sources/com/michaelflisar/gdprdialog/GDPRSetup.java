package com.michaelflisar.gdprdialog;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.wl6;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public class GDPRSetup implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    public String e;
    public boolean f;
    public boolean g;
    public boolean h;
    public GDPRNetwork[] i;
    public boolean j;
    public boolean k;
    public boolean l;
    public wl6[] m;
    public boolean n;
    public boolean o;
    public int p;
    public boolean q;
    public ArrayList<String> r;
    public boolean s;
    public GDPRCustomTexts t;
    public int u;
    public int v;

    public static class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new GDPRSetup(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new GDPRSetup[i];
        }
    }

    public GDPRSetup(GDPRNetwork... gDPRNetworkArr) {
        this.e = null;
        this.f = false;
        this.g = false;
        this.h = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.n = false;
        this.o = false;
        this.p = 0;
        this.q = false;
        this.r = new ArrayList<>();
        this.s = true;
        this.t = new GDPRCustomTexts();
        this.u = 3000;
        this.v = 5000;
        if (gDPRNetworkArr.length == 0) {
            throw new RuntimeException("At least one ad network must be provided, otherwise this setup does not make any sense.");
        }
        this.i = gDPRNetworkArr;
        this.m = new wl6[0];
    }

    public final boolean a() {
        for (GDPRNetwork gDPRNetwork : this.i) {
            if (gDPRNetwork.i) {
                return true;
            }
        }
        return false;
    }

    public HashSet<String> b() {
        HashSet<String> hashSet = new HashSet<>();
        for (GDPRNetwork gDPRNetwork : this.i) {
            hashSet.add(gDPRNetwork.g);
        }
        return hashSet;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.e);
        parcel.writeInt(this.f ? 1 : 0);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeParcelableArray(this.i, 0);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.m.length);
        wl6[] wl6VarArr = this.m;
        if (wl6VarArr.length > 0) {
            int[] iArr = new int[wl6VarArr.length];
            int i2 = 0;
            while (true) {
                wl6[] wl6VarArr2 = this.m;
                if (i2 >= wl6VarArr2.length) {
                    break;
                }
                iArr[i2] = wl6VarArr2[i2].ordinal();
                i2++;
            }
            parcel.writeIntArray(iArr);
        }
        parcel.writeByte(this.n ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.o ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.p);
        parcel.writeByte(this.q ? (byte) 1 : (byte) 0);
        parcel.writeStringList(this.r);
        parcel.writeInt(this.u);
        parcel.writeInt(this.v);
        parcel.writeByte(this.s ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.t, 0);
    }

    public GDPRSetup(Parcel parcel) {
        this.e = null;
        this.f = false;
        this.g = false;
        this.h = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.n = false;
        this.o = false;
        this.p = 0;
        this.q = false;
        this.r = new ArrayList<>();
        this.s = true;
        this.t = new GDPRCustomTexts();
        this.u = 3000;
        this.v = 5000;
        this.e = parcel.readString();
        this.f = parcel.readByte() == 1;
        this.g = parcel.readByte() == 1;
        this.h = parcel.readByte() == 1;
        Parcelable[] parcelableArray = parcel.readParcelableArray(GDPRNetwork.class.getClassLoader());
        this.i = new GDPRNetwork[parcelableArray.length];
        for (int i = 0; i < parcelableArray.length; i++) {
            this.i[i] = (GDPRNetwork) parcelableArray[i];
        }
        this.j = parcel.readByte() == 1;
        this.k = parcel.readByte() == 1;
        this.l = parcel.readByte() == 1;
        int i2 = parcel.readInt();
        this.m = new wl6[i2];
        int[] iArr = new int[i2];
        if (i2 > 0) {
            parcel.readIntArray(iArr);
        }
        for (int i3 = 0; i3 < i2; i3++) {
            this.m[i3] = wl6.values()[iArr[i3]];
        }
        this.n = parcel.readByte() == 1;
        this.o = parcel.readByte() == 1;
        this.p = parcel.readInt();
        this.q = parcel.readByte() == 1;
        parcel.readStringList(this.r);
        this.u = parcel.readInt();
        this.v = parcel.readInt();
        this.s = parcel.readByte() == 1;
        this.t = (GDPRCustomTexts) parcel.readParcelable(GDPRCustomTexts.class.getClassLoader());
    }
}
