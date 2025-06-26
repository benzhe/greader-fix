package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import defpackage.bi;
import defpackage.cv3;
import defpackage.is0;
import defpackage.zu3;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class AdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_APP_ID_MISSING = 8;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_MEDIATION_NO_FILL = 9;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int ERROR_CODE_REQUEST_ID_MISMATCH = 10;
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
    public static final int MAX_CONTENT_URL_LENGTH = 512;

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    public final zu3 a;

    public static class Builder {
        public final cv3 a;

        public Builder() {
            cv3 cv3Var = new cv3();
            this.a = cv3Var;
            cv3Var.d.add("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.a.b(cls, bundle);
            return this;
        }

        public Builder addKeyword(String str) {
            this.a.a.add(str);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.a.a(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.a.b.putBundle(cls.getName(), bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.a.d.remove("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        @Deprecated
        public Builder addTestDevice(String str) {
            this.a.d.add(str);
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this);
        }

        public Builder setAdInfo(AdInfo adInfo) {
            this.a.q = adInfo;
            return this;
        }

        @Deprecated
        public Builder setBirthday(Date date) {
            this.a.g = date;
            return this;
        }

        public Builder setContentUrl(String str) {
            bi.j(str, "Content URL must be non-null.");
            bi.h(str, "Content URL must be non-empty.");
            bi.d(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.a.h = str;
            return this;
        }

        @Deprecated
        public Builder setGender(int i) {
            this.a.j = i;
            return this;
        }

        public Builder setHttpTimeoutMillis(int i) {
            this.a.t = i;
            return this;
        }

        @Deprecated
        public Builder setIsDesignedForFamilies(boolean z) {
            this.a.p = z;
            return this;
        }

        public Builder setLocation(Location location) {
            this.a.k = location;
            return this;
        }

        @Deprecated
        public Builder setMaxAdContentRating(String str) {
            this.a.d(str);
            return this;
        }

        public Builder setNeighboringContentUrls(List<String> list) {
            if (list == null) {
                is0.zzez("neighboring content URLs list should not be null");
                return this;
            }
            this.a.c(list);
            return this;
        }

        public Builder setRequestAgent(String str) {
            this.a.n = str;
            return this;
        }

        @Deprecated
        public Builder setTagForUnderAgeOfConsent(int i) {
            cv3 cv3Var = this.a;
            Objects.requireNonNull(cv3Var);
            if (i == -1 || i == 0 || i == 1) {
                cv3Var.r = i;
            }
            return this;
        }

        @Deprecated
        public Builder tagForChildDirectedTreatment(boolean z) {
            this.a.o = z ? 1 : 0;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    public @interface TagForUnderAgeOfConsent {
    }

    public AdRequest(Builder builder) {
        this.a = new zu3(builder.a, null);
    }

    @Deprecated
    public Date getBirthday() {
        return this.a.a;
    }

    public String getContentUrl() {
        return this.a.b;
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.a.a(cls);
    }

    public Bundle getCustomTargeting() {
        return this.a.o;
    }

    @Deprecated
    public int getGender() {
        return this.a.d;
    }

    public Set<String> getKeywords() {
        return this.a.e;
    }

    public Location getLocation() {
        return this.a.f;
    }

    public List<String> getNeighboringContentUrls() {
        return this.a.c();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.a.i.get(cls);
    }

    public <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.a.h.getBundle(cls.getName());
    }

    public boolean isTestDevice(Context context) {
        return this.a.b(context);
    }

    public zu3 zzdt() {
        return this.a;
    }
}
