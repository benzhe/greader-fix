package com.michaelflisar.gdprdialog;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.jo;

/* loaded from: classes.dex */
public class GDPRSubNetwork implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    public String e;
    public String f;

    public static class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new GDPRSubNetwork(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new GDPRSubNetwork[i];
        }
    }

    public GDPRSubNetwork(String str, String str2) {
        this.e = str;
        this.f = str2;
    }

    public String a() {
        StringBuilder sbZ = jo.z("<a href=\"");
        sbZ.append(this.f);
        sbZ.append("\">");
        return jo.s(sbZ, this.e, "</a>");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.e);
        parcel.writeString(this.f);
    }

    public GDPRSubNetwork(Parcel parcel) {
        this.e = parcel.readString();
        this.f = parcel.readString();
    }
}
