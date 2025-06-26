package defpackage;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class xx implements Parcelable.Creator<GoogleSignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final GoogleSignInAccount createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        String strT2 = null;
        String strT3 = null;
        String strT4 = null;
        Uri uri = null;
        String strT5 = null;
        String strT6 = null;
        ArrayList arrayList = null;
        String strT7 = null;
        String strT8 = null;
        long jV = 0;
        int iU = 0;
        while (parcel.dataPosition() < iB0) {
            int i = parcel.readInt();
            switch (65535 & i) {
                case 1:
                    iU = bi.U(parcel, i);
                    break;
                case 2:
                    strT = bi.t(parcel, i);
                    break;
                case 3:
                    strT2 = bi.t(parcel, i);
                    break;
                case 4:
                    strT3 = bi.t(parcel, i);
                    break;
                case 5:
                    strT4 = bi.t(parcel, i);
                    break;
                case 6:
                    uri = (Uri) bi.s(parcel, i, Uri.CREATOR);
                    break;
                case 7:
                    strT5 = bi.t(parcel, i);
                    break;
                case 8:
                    jV = bi.V(parcel, i);
                    break;
                case 9:
                    strT6 = bi.t(parcel, i);
                    break;
                case 10:
                    Parcelable.Creator<Scope> creator = Scope.CREATOR;
                    int iW = bi.W(parcel, i);
                    int iDataPosition = parcel.dataPosition();
                    if (iW != 0) {
                        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
                        parcel.setDataPosition(iDataPosition + iW);
                        arrayList = arrayListCreateTypedArrayList;
                        break;
                    } else {
                        arrayList = null;
                        break;
                    }
                case 11:
                    strT7 = bi.t(parcel, i);
                    break;
                case 12:
                    strT8 = bi.t(parcel, i);
                    break;
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new GoogleSignInAccount(iU, strT, strT2, strT3, strT4, uri, strT5, jV, strT6, arrayList, strT7, strT8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
