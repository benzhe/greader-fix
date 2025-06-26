package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.h40;
import defpackage.mv;
import defpackage.p90;
import defpackage.s90;

/* loaded from: classes.dex */
public final class AdManagerAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new zzb();
    public final boolean e;
    public final IBinder f;

    public static final class Builder {
        public boolean a = false;
        public ShouldDelayBannerRenderingListener b;

        public final AdManagerAdViewOptions build() {
            return new AdManagerAdViewOptions(this, (mv) null);
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.a = z;
            return this;
        }

        public final Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.b = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    public AdManagerAdViewOptions(Builder builder, mv mvVar) {
        this.e = builder.a;
        this.f = builder.b != null ? new h40(builder.b) : null;
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
        bi.f0(parcel, 2, this.f, false);
        bi.t0(parcel, iM0);
    }

    public final p90 zzjv() {
        return s90.W6(this.f);
    }

    public AdManagerAdViewOptions(boolean z, IBinder iBinder) {
        this.e = z;
        this.f = iBinder;
    }
}
