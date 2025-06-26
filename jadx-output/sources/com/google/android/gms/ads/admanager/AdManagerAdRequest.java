package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.AdInfo;
import defpackage.cv3;
import defpackage.kv;
import defpackage.zu3;
import java.util.List;

/* loaded from: classes.dex */
public final class AdManagerAdRequest extends AdRequest {
    public AdManagerAdRequest(Builder builder, kv kvVar) {
        super(builder);
    }

    @Override // com.google.android.gms.ads.AdRequest
    public final Bundle getCustomTargeting() {
        return this.a.o;
    }

    public final String getPublisherProvidedId() {
        return this.a.j;
    }

    @Override // com.google.android.gms.ads.AdRequest
    public final zu3 zzdt() {
        return this.a;
    }

    public static final class Builder extends AdRequest.Builder {
        public final Builder addCategoryExclusion(String str) {
            this.a.f.add(str);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.a.e.putString(str, str2);
            return this;
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        public final AdManagerAdRequest build() {
            return new AdManagerAdRequest(this, null);
        }

        @Override // com.google.android.gms.ads.AdRequest.Builder
        public final Builder setAdInfo(AdInfo adInfo) {
            this.a.q = adInfo;
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.a.m = str;
            return this;
        }

        public final Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                cv3 cv3Var = this.a;
                cv3Var.e.putString(str, TextUtils.join(",", list));
            }
            return this;
        }
    }
}
