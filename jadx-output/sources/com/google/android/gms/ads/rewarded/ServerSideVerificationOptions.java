package com.google.android.gms.ads.rewarded;

import defpackage.rx;

/* loaded from: classes.dex */
public class ServerSideVerificationOptions {
    public final String a;
    public final String b;

    public static final class Builder {
        public String a = "";
        public String b = "";

        public final ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this, null);
        }

        public final Builder setCustomData(String str) {
            this.b = str;
            return this;
        }

        public final Builder setUserId(String str) {
            this.a = str;
            return this;
        }
    }

    public ServerSideVerificationOptions(Builder builder, rx rxVar) {
        this.a = builder.a;
        this.b = builder.b;
    }

    public String getCustomData() {
        return this.b;
    }

    public String getUserId() {
        return this.a;
    }
}
