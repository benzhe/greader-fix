package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import defpackage.dc;
import defpackage.qb;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new a();
    public final int[] e;
    public final ArrayList<String> f;
    public final int[] g;
    public final int[] h;
    public final int i;
    public final int j;
    public final String k;
    public final int l;
    public final int m;
    public final CharSequence n;
    public final int o;
    public final CharSequence p;
    public final ArrayList<String> q;
    public final ArrayList<String> r;
    public final boolean s;

    public static class a implements Parcelable.Creator<BackStackState> {
        @Override // android.os.Parcelable.Creator
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    public BackStackState(qb qbVar) {
        int size = qbVar.a.size();
        this.e = new int[size * 5];
        if (!qbVar.h) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f = new ArrayList<>(size);
        this.g = new int[size];
        this.h = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            dc.a aVar = qbVar.a.get(i);
            int i3 = i2 + 1;
            this.e[i2] = aVar.a;
            ArrayList<String> arrayList = this.f;
            Fragment fragment = aVar.b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.e;
            int i4 = i3 + 1;
            iArr[i3] = aVar.c;
            int i5 = i4 + 1;
            iArr[i4] = aVar.d;
            int i6 = i5 + 1;
            iArr[i5] = aVar.e;
            iArr[i6] = aVar.f;
            this.g[i] = aVar.g.ordinal();
            this.h[i] = aVar.h.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.i = qbVar.f;
        this.j = qbVar.g;
        this.k = qbVar.j;
        this.l = qbVar.t;
        this.m = qbVar.k;
        this.n = qbVar.l;
        this.o = qbVar.m;
        this.p = qbVar.n;
        this.q = qbVar.o;
        this.r = qbVar.p;
        this.s = qbVar.q;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.e);
        parcel.writeStringList(this.f);
        parcel.writeIntArray(this.g);
        parcel.writeIntArray(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.j);
        parcel.writeString(this.k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.m);
        TextUtils.writeToParcel(this.n, parcel, 0);
        parcel.writeInt(this.o);
        TextUtils.writeToParcel(this.p, parcel, 0);
        parcel.writeStringList(this.q);
        parcel.writeStringList(this.r);
        parcel.writeInt(this.s ? 1 : 0);
    }

    public BackStackState(Parcel parcel) {
        this.e = parcel.createIntArray();
        this.f = parcel.createStringArrayList();
        this.g = parcel.createIntArray();
        this.h = parcel.createIntArray();
        this.i = parcel.readInt();
        this.j = parcel.readInt();
        this.k = parcel.readString();
        this.l = parcel.readInt();
        this.m = parcel.readInt();
        this.n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.o = parcel.readInt();
        this.p = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.q = parcel.createStringArrayList();
        this.r = parcel.createStringArrayList();
        this.s = parcel.readInt() != 0;
    }
}
