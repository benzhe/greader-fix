package defpackage;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
public final class g00 implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final DataHolder createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        int i = 0;
        String[] strArrU = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundleO = null;
        int iU = 0;
        int iU2 = 0;
        while (parcel.dataPosition() < iB0) {
            int i2 = parcel.readInt();
            int i3 = 65535 & i2;
            if (i3 == 1) {
                strArrU = bi.u(parcel, i2);
            } else if (i3 == 2) {
                cursorWindowArr = (CursorWindow[]) bi.w(parcel, i2, CursorWindow.CREATOR);
            } else if (i3 == 3) {
                iU2 = bi.U(parcel, i2);
            } else if (i3 == 4) {
                bundleO = bi.o(parcel, i2);
            } else if (i3 != 1000) {
                bi.Y(parcel, i2);
            } else {
                iU = bi.U(parcel, i2);
            }
        }
        bi.A(parcel, iB0);
        DataHolder dataHolder = new DataHolder(iU, strArrU, cursorWindowArr, iU2, bundleO);
        dataHolder.g = new Bundle();
        int i4 = 0;
        while (true) {
            String[] strArr = dataHolder.f;
            if (i4 >= strArr.length) {
                break;
            }
            dataHolder.g.putInt(strArr[i4], i4);
            i4++;
        }
        dataHolder.k = new int[dataHolder.h.length];
        int numRows = 0;
        while (true) {
            CursorWindow[] cursorWindowArr2 = dataHolder.h;
            if (i >= cursorWindowArr2.length) {
                return dataHolder;
            }
            dataHolder.k[i] = numRows;
            numRows += dataHolder.h[i].getNumRows() - (numRows - cursorWindowArr2[i].getStartPosition());
            i++;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
