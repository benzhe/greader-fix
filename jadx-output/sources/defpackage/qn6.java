package defpackage;

/* loaded from: classes2.dex */
public enum qn6 {
    PremiumMonthlySubscriptionProductId { // from class: qn6.e
        @Override // defpackage.qn6
        public Object i() {
            return "premium_monthly";
        }

        @Override // defpackage.qn6
        public String k() {
            return "premium_monthly_subscription_product_id";
        }
    },
    PremiumYearlySubscriptionProductId { // from class: qn6.g
        @Override // defpackage.qn6
        public Object i() {
            return "premium_yearly";
        }

        @Override // defpackage.qn6
        public String k() {
            return "premium_yearly_subscription_product_id";
        }
    },
    PremiumRewardDurationInSeconds { // from class: qn6.f
        @Override // defpackage.qn6
        public Object i() {
            return 259200;
        }

        @Override // defpackage.qn6
        public String k() {
            return "premium_reward_duration_in_seconds";
        }
    },
    UrlPrivacyPolicy { // from class: qn6.h
        @Override // defpackage.qn6
        public Object i() {
            return "https://noinnion.com/privacy";
        }

        @Override // defpackage.qn6
        public String k() {
            return "url_privacy_policy";
        }
    },
    AdBannerFormatNative { // from class: qn6.a
        @Override // defpackage.qn6
        public Object i() {
            return Boolean.FALSE;
        }

        @Override // defpackage.qn6
        public String k() {
            return "ad_banner_format_native";
        }
    },
    AdInterstitialFreeTrialInSeconds { // from class: qn6.c
        @Override // defpackage.qn6
        public Object i() {
            return 259200;
        }

        @Override // defpackage.qn6
        public String k() {
            return "ad_interstitial_free_trial_in_seconds";
        }
    },
    AdInterstitialIntervalInSeconds { // from class: qn6.d
        @Override // defpackage.qn6
        public Object i() {
            return 86400;
        }

        @Override // defpackage.qn6
        public String k() {
            return "ad_interstitial_interval_in_seconds";
        }
    },
    /* JADX INFO: Fake field, exist only in values array */
    AdInterstitialExtendedIntervalInSeconds { // from class: qn6.b
        @Override // defpackage.qn6
        public Object i() {
            return 259200;
        }

        @Override // defpackage.qn6
        public String k() {
            return "ad_interstitial_extended_interval_in_seconds";
        }
    };

    qn6(gm7 gm7Var) {
    }

    public abstract Object i();

    public abstract String k();
}
