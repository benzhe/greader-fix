package com.michaelflisar.gdprdialog;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GDPRCustomTexts implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    public int e;
    public String f;
    public int g;
    public String h;
    public int i;
    public String j;
    public int k;
    public String l;
    public int m;
    public String n;

    public static class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new GDPRCustomTexts(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new GDPRCustomTexts[i];
        }
    }

    public GDPRCustomTexts() {
        this.e = -1;
        this.f = null;
        this.g = -1;
        this.h = null;
        this.i = -1;
        this.j = null;
        this.k = -1;
        this.l = null;
        this.m = -1;
        this.n = null;
    }

    public final String a(Context context) {
        int i = this.e;
        return i != -1 ? context.getString(i) : this.f;
    }

    public final boolean b() {
        return (this.e == -1 && this.f == null) ? false : true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
        parcel.writeString(this.h);
        parcel.writeInt(this.i);
        parcel.writeString(this.j);
        parcel.writeInt(this.k);
        parcel.writeString(this.l);
        parcel.writeInt(this.m);
        parcel.writeString(this.n);
    }

    public GDPRCustomTexts(Parcel parcel) {
        this.e = -1;
        this.f = null;
        this.g = -1;
        this.h = null;
        this.i = -1;
        this.j = null;
        this.k = -1;
        this.l = null;
        this.m = -1;
        this.n = null;
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt();
        this.h = parcel.readString();
        this.i = parcel.readInt();
        this.j = parcel.readString();
        this.k = parcel.readInt();
        this.l = parcel.readString();
        this.m = parcel.readInt();
        this.n = parcel.readString();
    }
}
