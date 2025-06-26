package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new a();
    public ArrayList<FragmentState> e;
    public ArrayList<String> f;
    public BackStackState[] g;
    public String h;
    public int i;

    public static class a implements Parcelable.Creator<FragmentManagerState> {
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    public FragmentManagerState() {
        this.h = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.e);
        parcel.writeStringList(this.f);
        parcel.writeTypedArray(this.g, i);
        parcel.writeString(this.h);
        parcel.writeInt(this.i);
    }

    public FragmentManagerState(Parcel parcel) {
        this.h = null;
        this.e = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f = parcel.createStringArrayList();
        this.g = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.h = parcel.readString();
        this.i = parcel.readInt();
    }
}
