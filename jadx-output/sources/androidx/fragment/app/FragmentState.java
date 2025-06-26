package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.jo;

/* loaded from: classes.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new a();
    public final String e;
    public final String f;
    public final boolean g;
    public final int h;
    public final int i;
    public final String j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final Bundle n;
    public final boolean o;
    public final int p;
    public Bundle q;
    public Fragment r;

    public static class a implements Parcelable.Creator<FragmentState> {
        @Override // android.os.Parcelable.Creator
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    public FragmentState(Fragment fragment) {
        this.e = fragment.getClass().getName();
        this.f = fragment.mWho;
        this.g = fragment.mFromLayout;
        this.h = fragment.mFragmentId;
        this.i = fragment.mContainerId;
        this.j = fragment.mTag;
        this.k = fragment.mRetainInstance;
        this.l = fragment.mRemoving;
        this.m = fragment.mDetached;
        this.n = fragment.mArguments;
        this.o = fragment.mHidden;
        this.p = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sbW = jo.w(128, "FragmentState{");
        sbW.append(this.e);
        sbW.append(" (");
        sbW.append(this.f);
        sbW.append(")}:");
        if (this.g) {
            sbW.append(" fromLayout");
        }
        if (this.i != 0) {
            sbW.append(" id=0x");
            sbW.append(Integer.toHexString(this.i));
        }
        String str = this.j;
        if (str != null && !str.isEmpty()) {
            sbW.append(" tag=");
            sbW.append(this.j);
        }
        if (this.k) {
            sbW.append(" retainInstance");
        }
        if (this.l) {
            sbW.append(" removing");
        }
        if (this.m) {
            sbW.append(" detached");
        }
        if (this.o) {
            sbW.append(" hidden");
        }
        return sbW.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeString(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeInt(this.l ? 1 : 0);
        parcel.writeInt(this.m ? 1 : 0);
        parcel.writeBundle(this.n);
        parcel.writeInt(this.o ? 1 : 0);
        parcel.writeBundle(this.q);
        parcel.writeInt(this.p);
    }

    public FragmentState(Parcel parcel) {
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt();
        this.i = parcel.readInt();
        this.j = parcel.readString();
        this.k = parcel.readInt() != 0;
        this.l = parcel.readInt() != 0;
        this.m = parcel.readInt() != 0;
        this.n = parcel.readBundle();
        this.o = parcel.readInt() != 0;
        this.q = parcel.readBundle();
        this.p = parcel.readInt();
    }
}
