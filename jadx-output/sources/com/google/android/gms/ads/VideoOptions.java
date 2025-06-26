package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzaaz;
import defpackage.vx;

/* loaded from: classes.dex */
public final class VideoOptions {
    public final boolean a;
    public final boolean b;
    public final boolean c;

    public static final class Builder {
        public boolean a = true;
        public boolean b = false;
        public boolean c = false;

        public final VideoOptions build() {
            return new VideoOptions(this, null);
        }

        public final Builder setClickToExpandRequested(boolean z) {
            this.c = z;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean z) {
            this.b = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.a = z;
            return this;
        }
    }

    public VideoOptions(zzaaz zzaazVar) {
        this.a = zzaazVar.e;
        this.b = zzaazVar.f;
        this.c = zzaazVar.g;
    }

    public final boolean getClickToExpandRequested() {
        return this.c;
    }

    public final boolean getCustomControlsRequested() {
        return this.b;
    }

    public final boolean getStartMuted() {
        return this.a;
    }

    public VideoOptions(Builder builder, vx vxVar) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
    }
}
