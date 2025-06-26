package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.n70;

/* loaded from: classes.dex */
public final class zzaei extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaei> CREATOR = new n70();
    public final int e;
    public final boolean f;
    public final int g;
    public final boolean h;
    public final int i;
    public final zzaaz j;
    public final boolean k;
    public final int l;

    public zzaei(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzaaz(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjx(), nativeAdOptions.getMediaAspectRatio());
    }

    public static com.google.android.gms.ads.nativead.NativeAdOptions n(zzaei zzaeiVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzaeiVar == null) {
            return builder.build();
        }
        int i = zzaeiVar.e;
        if (i == 2) {
            builder.setAdChoicesPlacement(zzaeiVar.i);
        } else {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzaeiVar.k).setMediaAspectRatio(zzaeiVar.l);
                }
            }
            zzaaz zzaazVar = zzaeiVar.j;
            if (zzaazVar != null) {
                builder.setVideoOptions(new VideoOptions(zzaazVar));
            }
            builder.setAdChoicesPlacement(zzaeiVar.i);
        }
        builder.setReturnUrlsForImageAssets(zzaeiVar.f).setRequestMultipleImages(zzaeiVar.h);
        return builder.build();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        boolean z = this.f;
        bi.r0(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        int i3 = this.g;
        bi.r0(parcel, 3, 4);
        parcel.writeInt(i3);
        boolean z2 = this.h;
        bi.r0(parcel, 4, 4);
        parcel.writeInt(z2 ? 1 : 0);
        int i4 = this.i;
        bi.r0(parcel, 5, 4);
        parcel.writeInt(i4);
        bi.h0(parcel, 6, this.j, i, false);
        boolean z3 = this.k;
        bi.r0(parcel, 7, 4);
        parcel.writeInt(z3 ? 1 : 0);
        int i5 = this.l;
        bi.r0(parcel, 8, 4);
        parcel.writeInt(i5);
        bi.t0(parcel, iM0);
    }

    public zzaei(int i, boolean z, int i2, boolean z2, int i3, zzaaz zzaazVar, boolean z3, int i4) {
        this.e = i;
        this.f = z;
        this.g = i2;
        this.h = z2;
        this.i = i3;
        this.j = zzaazVar;
        this.k = z3;
        this.l = i4;
    }
}
