package com.google.android.apps.dashclock.api;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.net.URISyntaxException;

/* loaded from: classes.dex */
public class ExtensionData implements Parcelable {
    public static final Parcelable.Creator<ExtensionData> CREATOR = new a();
    public boolean e;
    public int f;
    public Uri g;
    public String h;
    public String i;
    public String j;
    public Intent k;
    public String l;

    public static class a implements Parcelable.Creator<ExtensionData> {
        @Override // android.os.Parcelable.Creator
        public ExtensionData createFromParcel(Parcel parcel) {
            return new ExtensionData(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public ExtensionData[] newArray(int i) {
            return new ExtensionData[i];
        }
    }

    public ExtensionData() {
        this.e = false;
        this.f = 0;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
    }

    public static boolean a(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? obj == obj2 : obj.equals(obj2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            ExtensionData extensionData = (ExtensionData) obj;
            if (extensionData.e == this.e && extensionData.f == this.f && a(extensionData.g, this.g) && TextUtils.equals(extensionData.h, this.h) && TextUtils.equals(extensionData.i, this.i) && TextUtils.equals(extensionData.j, this.j) && a(extensionData.k, this.k)) {
                return TextUtils.equals(extensionData.l, this.l);
            }
            return false;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        throw new UnsupportedOperationException();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(2);
        int iDataPosition = parcel.dataPosition();
        parcel.writeInt(0);
        int iDataPosition2 = parcel.dataPosition();
        parcel.writeInt(this.e ? 1 : 0);
        parcel.writeInt(this.f);
        parcel.writeString(TextUtils.isEmpty(this.h) ? "" : this.h);
        parcel.writeString(TextUtils.isEmpty(this.i) ? "" : this.i);
        parcel.writeString(TextUtils.isEmpty(this.j) ? "" : this.j);
        Intent intent = this.k;
        parcel.writeString(intent == null ? "" : intent.toUri(0));
        parcel.writeString(TextUtils.isEmpty(this.l) ? "" : this.l);
        Uri uri = this.g;
        parcel.writeString(uri != null ? uri.toString() : "");
        int iDataPosition3 = parcel.dataPosition() - iDataPosition2;
        parcel.setDataPosition(iDataPosition);
        parcel.writeInt(iDataPosition3);
        parcel.setDataPosition(iDataPosition3 + iDataPosition2);
    }

    public ExtensionData(Parcel parcel, a aVar) {
        this.e = false;
        this.f = 0;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        int i = parcel.readInt();
        int i2 = parcel.readInt();
        int iDataPosition = parcel.dataPosition();
        if (i >= 1) {
            this.e = parcel.readInt() != 0;
            this.f = parcel.readInt();
            String string = parcel.readString();
            this.h = string;
            if (TextUtils.isEmpty(string)) {
                this.h = null;
            }
            String string2 = parcel.readString();
            this.i = string2;
            if (TextUtils.isEmpty(string2)) {
                this.i = null;
            }
            String string3 = parcel.readString();
            this.j = string3;
            if (TextUtils.isEmpty(string3)) {
                this.j = null;
            }
            try {
                this.k = Intent.parseUri(parcel.readString(), 0);
            } catch (URISyntaxException unused) {
            }
        }
        if (i >= 2) {
            String string4 = parcel.readString();
            this.l = string4;
            if (TextUtils.isEmpty(string4)) {
                this.l = null;
            }
            String string5 = parcel.readString();
            this.g = TextUtils.isEmpty(string5) ? null : Uri.parse(string5);
        }
        if (i >= 2) {
            parcel.setDataPosition(iDataPosition + i2);
        }
    }
}
