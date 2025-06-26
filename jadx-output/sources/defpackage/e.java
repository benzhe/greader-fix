package defpackage;

import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.premium.PremiumActivity;
import java.util.Objects;

/* compiled from: java-style lambda group */
/* loaded from: classes.dex */
public final class e implements View.OnClickListener {
    public final /* synthetic */ int e;
    public final /* synthetic */ Object f;

    public e(int i, Object obj) {
        this.e = i;
        this.f = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.e;
        if (i == 0) {
            ((PremiumActivity) this.f).finish();
            return;
        }
        boolean z = true;
        if (i == 1) {
            PremiumActivity premiumActivity = (PremiumActivity) this.f;
            int i2 = PremiumActivity.E;
            Objects.requireNonNull(premiumActivity);
            t75 t75Var = new t75(premiumActivity);
            t75Var.m(R.string.premium_redeem_code);
            t75 t75VarJ = t75Var.j(R.string.premium_redeem, new ns6(premiumActivity));
            t75VarJ.h(android.R.string.cancel, os6.e);
            t75VarJ.o(R.layout.dialog_input);
            t75VarJ.e();
            return;
        }
        if (i != 2) {
            throw null;
        }
        PremiumActivity premiumActivity2 = (PremiumActivity) this.f;
        ho6 ho6Var = premiumActivity2.D;
        if (ho6Var == null) {
            im7.k("binding");
            throw null;
        }
        LinearProgressIndicator linearProgressIndicator = ho6Var.o;
        im7.d(linearProgressIndicator, "binding.rewardedAdLoading");
        im7.e(linearProgressIndicator, "$this$isVisible");
        if (linearProgressIndicator.getVisibility() == 0) {
            return;
        }
        if (cn6.e0(premiumActivity2.getApplicationContext())) {
            n56.X1(premiumActivity2, premiumActivity2.getString(R.string.premium_rewarded_ad_granted));
            return;
        }
        ho6 ho6Var2 = premiumActivity2.D;
        if (ho6Var2 == null) {
            im7.k("binding");
            throw null;
        }
        LinearProgressIndicator linearProgressIndicator2 = ho6Var2.o;
        im7.d(linearProgressIndicator2, "binding.rewardedAdLoading");
        im7.e(linearProgressIndicator2, "$this$visible");
        linearProgressIndicator2.setVisibility(0);
        hs6 hs6Var = new hs6(premiumActivity2);
        im7.e(premiumActivity2, "context");
        im7.e(hs6Var, "onAdLoaded");
        AdRequest.Builder builder = new AdRequest.Builder();
        pl6 pl6VarB = pl6.b();
        im7.d(pl6VarB, "GDPR.getInstance()");
        rl6 rl6VarA = pl6VarB.a();
        im7.d(rl6VarA, "GDPR.getInstance().consentState");
        ql6 ql6Var = rl6VarA.a;
        im7.d(ql6Var, "GDPR.getInstance().consentState.consent");
        if (ql6Var != ql6.PERSONAL_CONSENT && ql6Var != ql6.AUTOMATIC_PERSONAL_CONSENT) {
            z = false;
        }
        if (!z) {
            Bundle bundle = new Bundle();
            bundle.putString("npa", "1");
            builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle);
        }
        AdRequest adRequestBuild = builder.build();
        im7.d(adRequestBuild, "adRequestBuilder.build()");
        RewardedAd.load(premiumActivity2, "ca-app-pub-6875289151086704/7294691963", adRequestBuild, new zv6(hs6Var));
    }
}
