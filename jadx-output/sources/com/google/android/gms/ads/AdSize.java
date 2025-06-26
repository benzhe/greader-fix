package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.jo;
import defpackage.os3;
import defpackage.zr0;

/* loaded from: classes.dex */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    public final int a;
    public final int b;
    public final String c;
    public boolean d;
    public boolean e;
    public int f;
    public boolean g;
    public int h;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");
    public static final AdSize INVALID = new AdSize(0, 0, "invalid");
    public static final AdSize zzadc = new AdSize(50, 50, "50x50_mb");
    public static final AdSize SEARCH = new AdSize(-3, 0, "search_v2");

    /* JADX WARN: Illegal instructions before constructor call */
    public AdSize(int i, int i2) {
        String strValueOf = i == -1 ? "FULL" : String.valueOf(i);
        String strValueOf2 = i2 == -2 ? "AUTO" : String.valueOf(i2);
        this(i, i2, jo.d(jo.x(strValueOf2, jo.x(strValueOf, 4)), strValueOf, "x", strValueOf2, "_as"));
    }

    public static AdSize a(int i, int i2) {
        if (i2 == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.h = i2;
        adSize.g = true;
        return adSize;
    }

    public static AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize adSizeB = zr0.b(context, i, 0);
        adSizeB.d = true;
        return adSizeB;
    }

    @Deprecated
    public static AdSize getCurrentOrientationBannerAdSizeWithWidth(Context context, int i) {
        return getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i) {
        int iO = zr0.o(context, 0);
        if (iO == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.f = iO;
        adSize.e = true;
        return adSize;
    }

    public static AdSize getCurrentOrientationInterscrollerAdSize(Context context, int i) {
        return a(i, zr0.o(context, 0));
    }

    public static AdSize getLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize adSizeB = zr0.b(context, i, 2);
        adSizeB.d = true;
        return adSizeB;
    }

    @Deprecated
    public static AdSize getLandscapeBannerAdSizeWithWidth(Context context, int i) {
        return getLandscapeAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static AdSize getLandscapeInlineAdaptiveBannerAdSize(Context context, int i) {
        int iO = zr0.o(context, 2);
        AdSize adSize = new AdSize(i, 0);
        if (iO == -1) {
            return INVALID;
        }
        adSize.f = iO;
        adSize.e = true;
        return adSize;
    }

    public static AdSize getLandscapeInterscrollerAdSize(Context context, int i) {
        return a(i, zr0.o(context, 2));
    }

    public static AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize adSizeB = zr0.b(context, i, 1);
        adSizeB.d = true;
        return adSizeB;
    }

    @Deprecated
    public static AdSize getPortraitBannerAdSizeWithWidth(Context context, int i) {
        return getPortraitAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int i) {
        int iO = zr0.o(context, 1);
        AdSize adSize = new AdSize(i, 0);
        if (iO == -1) {
            return INVALID;
        }
        adSize.f = iO;
        adSize.e = true;
        return adSize;
    }

    public static AdSize getPortraitInterscrollerAdSize(Context context, int i) {
        return a(i, zr0.o(context, 1));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.a == adSize.a && this.b == adSize.b && this.c.equals(adSize.c);
    }

    public final int getHeight() {
        return this.b;
    }

    public final int getHeightInPixels(Context context) {
        int i = this.b;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i != -2) {
            zr0 zr0Var = os3.j.a;
            return zr0.a(context.getResources().getDisplayMetrics(), i);
        }
        return (int) (zzvt.n(r3) * context.getResources().getDisplayMetrics().density);
    }

    public final int getWidth() {
        return this.a;
    }

    public final int getWidthInPixels(Context context) {
        int i = this.a;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -1) {
            return context.getResources().getDisplayMetrics().widthPixels;
        }
        zr0 zr0Var = os3.j.a;
        return zr0.a(context.getResources().getDisplayMetrics(), i);
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final boolean isAutoHeight() {
        return this.b == -2;
    }

    public final boolean isFluid() {
        return this.a == -3 && this.b == -4;
    }

    public final boolean isFullWidth() {
        return this.a == -1;
    }

    public final String toString() {
        return this.c;
    }

    public AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException(jo.M(37, "Invalid width for AdSize: ", i));
        }
        if (i2 < 0 && i2 != -2 && i2 != -4) {
            throw new IllegalArgumentException(jo.M(38, "Invalid height for AdSize: ", i2));
        }
        this.a = i;
        this.b = i2;
        this.c = str;
    }
}
