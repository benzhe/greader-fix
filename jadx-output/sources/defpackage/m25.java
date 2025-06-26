package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzkr;

/* loaded from: classes.dex */
public final class m25 implements Parcelable.Creator<zzkr> {
    public static void a(zzkr zzkrVar, Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = zzkrVar.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.i0(parcel, 2, zzkrVar.f, false);
        long j = zzkrVar.g;
        bi.r0(parcel, 3, 8);
        parcel.writeLong(j);
        Long l = zzkrVar.h;
        if (l != null) {
            bi.r0(parcel, 4, 8);
            parcel.writeLong(l.longValue());
        }
        bi.i0(parcel, 6, zzkrVar.i, false);
        bi.i0(parcel, 7, zzkrVar.j, false);
        Double d = zzkrVar.k;
        if (d != null) {
            bi.r0(parcel, 8, 8);
            parcel.writeDouble(d.doubleValue());
        }
        bi.t0(parcel, iM0);
    }

    @Override // android.os.Parcelable.Creator
    public final zzkr createFromParcel(Parcel parcel) {
        int iB0 = bi.b0(parcel);
        String strT = null;
        Long lValueOf = null;
        Float fValueOf = null;
        String strT2 = null;
        String strT3 = null;
        Double dValueOf = null;
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
                    jV = bi.V(parcel, i);
                    break;
                case 4:
                    int iW = bi.W(parcel, i);
                    if (iW != 0) {
                        bi.s0(parcel, iW, 8);
                        lValueOf = Long.valueOf(parcel.readLong());
                        break;
                    } else {
                        lValueOf = null;
                        break;
                    }
                case 5:
                    int iW2 = bi.W(parcel, i);
                    if (iW2 != 0) {
                        bi.s0(parcel, iW2, 4);
                        fValueOf = Float.valueOf(parcel.readFloat());
                        break;
                    } else {
                        fValueOf = null;
                        break;
                    }
                case 6:
                    strT2 = bi.t(parcel, i);
                    break;
                case 7:
                    strT3 = bi.t(parcel, i);
                    break;
                case 8:
                    int iW3 = bi.W(parcel, i);
                    if (iW3 != 0) {
                        bi.s0(parcel, iW3, 8);
                        dValueOf = Double.valueOf(parcel.readDouble());
                        break;
                    } else {
                        dValueOf = null;
                        break;
                    }
                default:
                    bi.Y(parcel, i);
                    break;
            }
        }
        bi.A(parcel, iB0);
        return new zzkr(iU, strT, jV, lValueOf, fValueOf, strT2, strT3, dValueOf);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkr[] newArray(int i) {
        return new zzkr[i];
    }
}
