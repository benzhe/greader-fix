package com.google.android.gms.ads;

import defpackage.is0;
import defpackage.ux;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class RequestConfiguration {
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    public static final List<String> zzadz = Arrays.asList("MA", "T", "PG", "G");
    public final int a;
    public final int b;
    public final String c;
    public final List<String> d;

    public static class Builder {
        public int a = -1;
        public int b = -1;
        public String c = null;
        public final List<String> d = new ArrayList();

        public RequestConfiguration build() {
            return new RequestConfiguration(this.a, this.b, this.c, this.d, null);
        }

        public Builder setMaxAdContentRating(String str) {
            if (str == null || "".equals(str)) {
                this.c = null;
            } else if ("G".equals(str) || "PG".equals(str) || "T".equals(str) || "MA".equals(str)) {
                this.c = str;
            } else {
                is0.zzez(str.length() != 0 ? "Invalid value passed to setMaxAdContentRating: ".concat(str) : new String("Invalid value passed to setMaxAdContentRating: "));
            }
            return this;
        }

        public Builder setTagForChildDirectedTreatment(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.a = i;
            } else {
                StringBuilder sb = new StringBuilder(68);
                sb.append("Invalid value passed to setTagForChildDirectedTreatment: ");
                sb.append(i);
                is0.zzez(sb.toString());
            }
            return this;
        }

        public Builder setTagForUnderAgeOfConsent(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.b = i;
            } else {
                StringBuilder sb = new StringBuilder(63);
                sb.append("Invalid value passed to setTagForUnderAgeOfConsent: ");
                sb.append(i);
                is0.zzez(sb.toString());
            }
            return this;
        }

        public Builder setTestDeviceIds(List<String> list) {
            this.d.clear();
            if (list != null) {
                this.d.addAll(list);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForUnderAgeOfConsent {
    }

    public RequestConfiguration(int i, int i2, String str, List list, ux uxVar) {
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = list;
    }

    public String getMaxAdContentRating() {
        String str = this.c;
        return str == null ? "" : str;
    }

    public int getTagForChildDirectedTreatment() {
        return this.a;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.b;
    }

    public List<String> getTestDeviceIds() {
        return new ArrayList(this.d);
    }

    public Builder toBuilder() {
        return new Builder().setTagForChildDirectedTreatment(this.a).setTagForUnderAgeOfConsent(this.b).setMaxAdContentRating(this.c).setTestDeviceIds(this.d);
    }
}
