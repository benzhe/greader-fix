package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.c50;
import defpackage.e35;
import defpackage.jo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ExperimentTokens extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ExperimentTokens> CREATOR = new e35();
    public static final byte[][] m;
    public final String e;
    public final byte[] f;
    public final byte[][] g;
    public final byte[][] h;
    public final byte[][] i;
    public final byte[][] j;
    public final int[] k;
    public final byte[][] l;

    static {
        byte[][] bArr = new byte[0][];
        m = bArr;
        new ExperimentTokens("", null, bArr, bArr, bArr, bArr, null, null);
    }

    public ExperimentTokens(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6) {
        this.e = str;
        this.f = bArr;
        this.g = bArr2;
        this.h = bArr3;
        this.i = bArr4;
        this.j = bArr5;
        this.k = iArr;
        this.l = bArr6;
    }

    public static List<String> C(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static void K0(StringBuilder sb, String str, byte[][] bArr) {
        String str2;
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            str2 = "null";
        } else {
            sb.append("(");
            int length = bArr.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                byte[] bArr2 = bArr[i];
                if (!z) {
                    sb.append(", ");
                }
                sb.append("'");
                sb.append(Base64.encodeToString(bArr2, 3));
                sb.append("'");
                i++;
                z = false;
            }
            str2 = ")";
        }
        sb.append(str2);
    }

    public static List<Integer> n(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ExperimentTokens) {
            ExperimentTokens experimentTokens = (ExperimentTokens) obj;
            if (c50.U(this.e, experimentTokens.e) && Arrays.equals(this.f, experimentTokens.f) && c50.U(C(this.g), C(experimentTokens.g)) && c50.U(C(this.h), C(experimentTokens.h)) && c50.U(C(this.i), C(experimentTokens.i)) && c50.U(C(this.j), C(experimentTokens.j)) && c50.U(n(this.k), n(experimentTokens.k)) && c50.U(C(this.l), C(experimentTokens.l))) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        String str = this.e;
        sb.append(str == null ? "null" : jo.c(jo.x(str, 2), "'", str, "'"));
        sb.append(", ");
        byte[] bArr = this.f;
        sb.append("direct");
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
        } else {
            sb.append("'");
            sb.append(Base64.encodeToString(bArr, 3));
            sb.append("'");
        }
        sb.append(", ");
        K0(sb, "GAIA", this.g);
        sb.append(", ");
        K0(sb, "PSEUDO", this.h);
        sb.append(", ");
        K0(sb, "ALWAYS", this.i);
        sb.append(", ");
        K0(sb, "OTHER", this.j);
        sb.append(", ");
        int[] iArr = this.k;
        sb.append("weak");
        sb.append("=");
        if (iArr == null) {
            sb.append("null");
        } else {
            sb.append("(");
            int length = iArr.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                int i2 = iArr[i];
                if (!z) {
                    sb.append(", ");
                }
                sb.append(i2);
                i++;
                z = false;
            }
            sb.append(")");
        }
        sb.append(", ");
        K0(sb, "directs", this.l);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 2, this.e, false);
        bi.d0(parcel, 3, this.f, false);
        bi.e0(parcel, 4, this.g, false);
        bi.e0(parcel, 5, this.h, false);
        bi.e0(parcel, 6, this.i, false);
        bi.e0(parcel, 7, this.j, false);
        bi.g0(parcel, 8, this.k, false);
        bi.e0(parcel, 9, this.l, false);
        bi.t0(parcel, iM0);
    }
}
