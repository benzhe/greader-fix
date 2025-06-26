package com.michaelflisar.gdprdialog;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import defpackage.jo;
import defpackage.n56;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class GDPRNetwork implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    public String e;
    public String f;
    public String g;
    public boolean h;
    public boolean i;
    public ArrayList<GDPRSubNetwork> j;
    public String k;

    public static class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new GDPRNetwork(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new GDPRNetwork[i];
        }
    }

    public GDPRNetwork(Context context, String str, String str2, int i, boolean z) {
        this.e = str;
        this.f = str2;
        this.g = context.getString(i);
        this.h = false;
        this.k = null;
        this.i = z;
        this.j = new ArrayList<>();
    }

    public String a(Context context, boolean z, boolean z2) {
        StringBuilder sbZ = jo.z("<a href=\"");
        sbZ.append(this.f);
        sbZ.append("\">");
        String strS = jo.s(sbZ, this.e, "</a>");
        if (z && this.h && this.k != null) {
            StringBuilder sbB = jo.B(strS, " (<a href=\"");
            sbB.append(this.k);
            sbB.append("\">");
            sbB.append(context.getString(R$string.gdpr_show_me_partners));
            sbB.append("</a>)");
            strS = sbB.toString();
        }
        if (!z2 || this.j.size() <= 0) {
            return strS;
        }
        String strN = jo.n(strS, " (");
        ArrayList arrayList = new ArrayList();
        Iterator<GDPRSubNetwork> it = this.j.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        StringBuilder sbZ2 = jo.z(strN);
        sbZ2.append(n56.G0(context, arrayList));
        return jo.n(sbZ2.toString(), ")");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        String strN = jo.n(this.e, " [");
        ArrayList arrayList = new ArrayList();
        Iterator<GDPRSubNetwork> it = this.j.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().e);
        }
        StringBuilder sbZ = jo.z(strN);
        sbZ.append(TextUtils.join(",", arrayList));
        return jo.n(sbZ.toString(), "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeByte(this.h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.j.size());
        Iterator<GDPRSubNetwork> it = this.j.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable(it.next(), 0);
        }
        parcel.writeString(this.k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GDPRNetwork(Parcel parcel) {
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readByte() == 1;
        this.i = parcel.readByte() == 1;
        this.j = new ArrayList<>();
        for (int i = parcel.readInt(); i > 0; i--) {
            this.j.add(parcel.readParcelable(GDPRSubNetwork.class.getClassLoader()));
        }
        this.k = parcel.readString();
    }
}
