package com.google.android.gms.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.m20;
import defpackage.p20;
import defpackage.q10;
import defpackage.r10;
import defpackage.u20;
import defpackage.x20;
import defpackage.y20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new u20();
    public final String e;
    public final m20 f;
    public final boolean g;
    public final boolean h;

    public zzj(String str, IBinder iBinder, boolean z, boolean z2) {
        this.e = str;
        p20 p20Var = null;
        if (iBinder != null) {
            try {
                int i = m20.f;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
                x20 x20VarB = (iInterfaceQueryLocalInterface instanceof q10 ? (q10) iInterfaceQueryLocalInterface : new r10(iBinder)).b();
                byte[] bArr = x20VarB == null ? null : (byte[]) y20.l0(x20VarB);
                if (bArr != null) {
                    p20Var = new p20(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            }
        }
        this.f = p20Var;
        this.g = z;
        this.h = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.i0(parcel, 1, this.e, false);
        m20 m20Var = this.f;
        if (m20Var == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            m20Var = null;
        } else {
            Objects.requireNonNull(m20Var);
        }
        bi.f0(parcel, 2, m20Var, false);
        boolean z = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.h;
        bi.r0(parcel, 4, 4);
        parcel.writeInt(z2 ? 1 : 0);
        bi.t0(parcel, iM0);
    }

    public zzj(String str, m20 m20Var, boolean z, boolean z2) {
        this.e = str;
        this.f = m20Var;
        this.g = z;
        this.h = z2;
    }
}
