package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.i40;

/* loaded from: classes.dex */
public final class zzaaz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaaz> CREATOR = new i40();
    public final boolean e;
    public final boolean f;
    public final boolean g;

    public zzaaz(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        boolean z = this.e;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = this.g;
        bi.r0(parcel, 4, 4);
        parcel.writeInt(z3 ? 1 : 0);
        bi.t0(parcel, iM0);
    }

    public zzaaz(boolean z, boolean z2, boolean z3) {
        this.e = z;
        this.f = z2;
        this.g = z3;
    }
}
