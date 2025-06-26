package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;
import defpackage.bi;
import defpackage.cy;
import defpackage.p14;
import defpackage.yx;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new cy();
    public zzr e;
    public byte[] f;
    public int[] g;
    public String[] h;
    public int[] i;
    public byte[][] j;
    public ExperimentTokens[] k;
    public boolean l;
    public final p14 m;
    public final yx.c n;

    public zze(zzr zzrVar, p14 p14Var, yx.c cVar, int[] iArr, int[] iArr2, boolean z) {
        this.e = zzrVar;
        this.m = p14Var;
        this.n = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = z;
    }

    public zze(zzr zzrVar, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, ExperimentTokens[] experimentTokensArr) {
        this.e = zzrVar;
        this.f = bArr;
        this.g = iArr;
        this.h = strArr;
        this.m = null;
        this.n = null;
        this.i = iArr2;
        this.j = bArr2;
        this.k = experimentTokensArr;
        this.l = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zze) {
            zze zzeVar = (zze) obj;
            if (bi.B(this.e, zzeVar.e) && Arrays.equals(this.f, zzeVar.f) && Arrays.equals(this.g, zzeVar.g) && Arrays.equals(this.h, zzeVar.h) && bi.B(this.m, zzeVar.m) && bi.B(this.n, zzeVar.n) && bi.B(null, null) && Arrays.equals(this.i, zzeVar.i) && Arrays.deepEquals(this.j, zzeVar.j) && Arrays.equals(this.k, zzeVar.k) && this.l == zzeVar.l) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, this.f, this.g, this.h, this.m, this.n, null, this.i, this.j, this.k, Boolean.valueOf(this.l)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.e);
        sb.append(", LogEventBytes: ");
        sb.append(this.f == null ? null : new String(this.f));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.g));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.h));
        sb.append(", LogEvent: ");
        sb.append(this.m);
        sb.append(", ExtensionProducer: ");
        sb.append(this.n);
        sb.append(", VeProducer: ");
        sb.append((Object) null);
        sb.append(", ExperimentIDs: ");
        sb.append(Arrays.toString(this.i));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.toString(this.j));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.k));
        sb.append(", AddPhenotypeExperimentTokens: ");
        sb.append(this.l);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.h0(parcel, 2, this.e, i, false);
        bi.d0(parcel, 3, this.f, false);
        bi.g0(parcel, 4, this.g, false);
        bi.j0(parcel, 5, this.h, false);
        bi.g0(parcel, 6, this.i, false);
        bi.e0(parcel, 7, this.j, false);
        boolean z = this.l;
        bi.r0(parcel, 8, 4);
        parcel.writeInt(z ? 1 : 0);
        bi.l0(parcel, 9, this.k, i, false);
        bi.t0(parcel, iM0);
    }
}
