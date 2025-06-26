package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.vl0;
import defpackage.x20;
import defpackage.y20;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzatj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatj> CREATOR = new vl0();
    public final View e;
    public final Map<String, WeakReference<View>> f;

    public zzatj(IBinder iBinder, IBinder iBinder2) {
        this.e = (View) y20.l0(x20.a.g0(iBinder));
        this.f = (Map) y20.l0(x20.a.g0(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        bi.f0(parcel, 1, new y20(this.e), false);
        bi.f0(parcel, 2, new y20(this.f), false);
        bi.t0(parcel, iM0);
    }
}
