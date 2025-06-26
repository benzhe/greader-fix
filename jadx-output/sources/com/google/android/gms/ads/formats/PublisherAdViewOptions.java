package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.h40;
import defpackage.ot3;
import defpackage.ov;
import defpackage.p90;
import defpackage.pt3;
import defpackage.s90;
import defpackage.sr3;
import defpackage.st3;

@Deprecated
/* loaded from: classes.dex */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zze();
    public final boolean e;
    public final pt3 f;
    public AppEventListener g;
    public final IBinder h;

    @Deprecated
    public static final class Builder {
        public boolean a = false;
        public AppEventListener b;
        public ShouldDelayBannerRenderingListener c;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this, null);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.b = appEventListener;
            return this;
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.a = z;
            return this;
        }

        public final Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.c = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    public PublisherAdViewOptions(Builder builder, ov ovVar) {
        this.e = builder.a;
        AppEventListener appEventListener = builder.b;
        this.g = appEventListener;
        this.f = appEventListener != null ? new sr3(this.g) : null;
        this.h = builder.c != null ? new h40(builder.c) : null;
    }

    public final AppEventListener getAppEventListener() {
        return this.g;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        boolean manualImpressionsEnabled = getManualImpressionsEnabled();
        bi.r0(parcel, 1, 4);
        parcel.writeInt(manualImpressionsEnabled ? 1 : 0);
        pt3 pt3Var = this.f;
        bi.f0(parcel, 2, pt3Var == null ? null : pt3Var.asBinder(), false);
        bi.f0(parcel, 3, this.h, false);
        bi.t0(parcel, iM0);
    }

    public final p90 zzjv() {
        return s90.W6(this.h);
    }

    public final pt3 zzjz() {
        return this.f;
    }

    public PublisherAdViewOptions(boolean z, IBinder iBinder, IBinder iBinder2) {
        pt3 st3Var;
        this.e = z;
        if (iBinder != null) {
            int i = ot3.e;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            if (iInterfaceQueryLocalInterface instanceof pt3) {
                st3Var = (pt3) iInterfaceQueryLocalInterface;
            } else {
                st3Var = new st3(iBinder);
            }
        } else {
            st3Var = null;
        }
        this.f = st3Var;
        this.h = iBinder2;
    }
}
