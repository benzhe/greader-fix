package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import defpackage.bi;
import defpackage.cv3;
import defpackage.is0;
import defpackage.lv;
import defpackage.zu3;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Deprecated
/* loaded from: classes.dex */
public final class PublisherAdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;

    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_G = "G";

    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";

    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";

    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_T = "T";

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    public final zu3 a;

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    public @interface TagForUnderAgeOfConsent {
    }

    public PublisherAdRequest(Builder builder, lv lvVar) {
        this.a = new zu3(builder.a, null);
    }

    @Deprecated
    public static void updateCorrelator() {
    }

    @Deprecated
    public final Date getBirthday() {
        return this.a.a;
    }

    public final String getContentUrl() {
        return this.a.b;
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.a.a(cls);
    }

    public final Bundle getCustomTargeting() {
        return this.a.o;
    }

    @Deprecated
    public final int getGender() {
        return this.a.d;
    }

    public final Set<String> getKeywords() {
        return this.a.e;
    }

    public final Location getLocation() {
        return this.a.f;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.a.g;
    }

    public final List<String> getNeighboringContentUrls() {
        return this.a.c();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.a.i.get(cls);
    }

    public final <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.a.h.getBundle(cls.getName());
    }

    public final String getPublisherProvidedId() {
        return this.a.j;
    }

    public final boolean isTestDevice(Context context) {
        return this.a.b(context);
    }

    public final zu3 zzdt() {
        return this.a;
    }

    public static final class Builder {
        public final cv3 a = new cv3();

        public final Builder addCategoryExclusion(String str) {
            this.a.f.add(str);
            return this;
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.a.b(cls, bundle);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.a.e.putString(str, str2);
            return this;
        }

        public final Builder addKeyword(String str) {
            this.a.a.add(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.a.a(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.a.b.putBundle(cls.getName(), bundle);
            return this;
        }

        @Deprecated
        public final Builder addTestDevice(String str) {
            this.a.d.add(str);
            return this;
        }

        public final PublisherAdRequest build() {
            return new PublisherAdRequest(this, null);
        }

        public final Builder setAdInfo(AdInfo adInfo) {
            this.a.q = adInfo;
            return this;
        }

        @Deprecated
        public final Builder setBirthday(Date date) {
            this.a.g = date;
            return this;
        }

        public final Builder setContentUrl(String str) {
            bi.j(str, "Content URL must be non-null.");
            bi.h(str, "Content URL must be non-empty.");
            bi.d(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.a.h = str;
            return this;
        }

        @Deprecated
        public final Builder setGender(int i) {
            this.a.j = i;
            return this;
        }

        public final Builder setHttpTimeoutMillis(int i) {
            this.a.t = i;
            return this;
        }

        @Deprecated
        public final Builder setIsDesignedForFamilies(boolean z) {
            this.a.p = z;
            return this;
        }

        public final Builder setLocation(Location location) {
            this.a.k = location;
            return this;
        }

        @Deprecated
        public final Builder setManualImpressionsEnabled(boolean z) {
            this.a.l = z;
            return this;
        }

        @Deprecated
        public final Builder setMaxAdContentRating(String str) {
            this.a.d(str);
            return this;
        }

        public final Builder setNeighboringContentUrls(List<String> list) {
            if (list == null) {
                is0.zzez("neighboring content URLs list should not be null");
                return this;
            }
            this.a.c(list);
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.a.m = str;
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.a.n = str;
            return this;
        }

        @Deprecated
        public final Builder setTagForUnderAgeOfConsent(int i) {
            cv3 cv3Var = this.a;
            Objects.requireNonNull(cv3Var);
            if (i == -1 || i == 0 || i == 1) {
                cv3Var.r = i;
            }
            return this;
        }

        @Deprecated
        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.a.o = z ? 1 : 0;
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
