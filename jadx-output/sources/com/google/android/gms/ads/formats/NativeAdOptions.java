package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;
import defpackage.nv;

@Deprecated
/* loaded from: classes.dex */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;

    @Deprecated
    public static final int ORIENTATION_ANY = 0;

    @Deprecated
    public static final int ORIENTATION_LANDSCAPE = 2;

    @Deprecated
    public static final int ORIENTATION_PORTRAIT = 1;
    public final boolean a;
    public final int b;
    public final int c;
    public final boolean d;
    public final int e;
    public final VideoOptions f;
    public final boolean g;

    public @interface AdChoicesPlacement {
    }

    public static final class Builder {
        public VideoOptions e;
        public boolean a = false;
        public int b = -1;
        public int c = 0;
        public boolean d = false;
        public int f = 1;
        public boolean g = false;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this, null);
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.f = i;
            return this;
        }

        @Deprecated
        public final Builder setImageOrientation(int i) {
            this.b = i;
            return this;
        }

        public final Builder setMediaAspectRatio(@NativeMediaAspectRatio int i) {
            this.c = i;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.g = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.d = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.a = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.e = videoOptions;
            return this;
        }
    }

    public @interface NativeMediaAspectRatio {
    }

    public NativeAdOptions(Builder builder, nv nvVar) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.f;
        this.f = builder.e;
        this.g = builder.g;
    }

    public final int getAdChoicesPlacement() {
        return this.e;
    }

    @Deprecated
    public final int getImageOrientation() {
        return this.b;
    }

    public final int getMediaAspectRatio() {
        return this.c;
    }

    public final VideoOptions getVideoOptions() {
        return this.f;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.d;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.a;
    }

    public final boolean zzjx() {
        return this.g;
    }
}
