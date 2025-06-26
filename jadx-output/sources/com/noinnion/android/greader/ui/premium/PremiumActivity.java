package com.noinnion.android.greader.ui.premium;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.b68;
import defpackage.bj7;
import defpackage.c58;
import defpackage.c68;
import defpackage.cn6;
import defpackage.dq;
import defpackage.ej7;
import defpackage.el7;
import defpackage.eq;
import defpackage.fc7;
import defpackage.h68;
import defpackage.hb7;
import defpackage.hn;
import defpackage.ho6;
import defpackage.ic7;
import defpackage.im7;
import defpackage.io6;
import defpackage.is6;
import defpackage.iw6;
import defpackage.j;
import defpackage.jb6;
import defpackage.je7;
import defpackage.jm7;
import defpackage.jy6;
import defpackage.k18;
import defpackage.kt7;
import defpackage.l;
import defpackage.lh7;
import defpackage.mb7;
import defpackage.ms6;
import defpackage.n48;
import defpackage.n56;
import defpackage.o48;
import defpackage.o58;
import defpackage.oj7;
import defpackage.pj7;
import defpackage.pl7;
import defpackage.po6;
import defpackage.rb7;
import defpackage.sm7;
import defpackage.to6;
import defpackage.uf7;
import defpackage.uo6;
import defpackage.wo6;
import defpackage.ye7;
import defpackage.yj7;
import defpackage.z48;
import defpackage.zb7;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class PremiumActivity extends BaseDialogActivity {
    public static final /* synthetic */ int E = 0;
    public final oj7 A;
    public po6 B;
    public RewardedAd C;
    public ho6 D;
    public final oj7 y;
    public final oj7 z;

    public static final class a extends jm7 implements el7<wo6> {
        public final /* synthetic */ ComponentCallbacks e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ComponentCallbacks componentCallbacks, k18 k18Var, el7 el7Var) {
            super(0);
            this.e = componentCallbacks;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, wo6] */
        @Override // defpackage.el7
        public final wo6 invoke() {
            return kt7.j(this.e).a.a().a(sm7.a(wo6.class), null, null);
        }
    }

    public static final class b extends jm7 implements el7<uo6> {
        public final /* synthetic */ ComponentCallbacks e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ComponentCallbacks componentCallbacks, k18 k18Var, el7 el7Var) {
            super(0);
            this.e = componentCallbacks;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, uo6] */
        @Override // defpackage.el7
        public final uo6 invoke() {
            return kt7.j(this.e).a.a().a(sm7.a(uo6.class), null, null);
        }
    }

    public static final class c extends jm7 implements el7<eq> {
        public final /* synthetic */ ComponentCallbacks e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ComponentCallbacks componentCallbacks, k18 k18Var, el7 el7Var) {
            super(0);
            this.e = componentCallbacks;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [eq, java.lang.Object] */
        @Override // defpackage.el7
        public final eq invoke() {
            return kt7.j(this.e).a.a().a(sm7.a(eq.class), null, null);
        }
    }

    public static final class d extends jm7 implements pl7<dq, yj7> {
        public d() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
        @Override // defpackage.pl7
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public defpackage.yj7 invoke(defpackage.dq r6) {
            /*
                r5 = this;
                dq r6 = (defpackage.dq) r6
                com.noinnion.android.greader.ui.premium.PremiumActivity r0 = com.noinnion.android.greader.ui.premium.PremiumActivity.this
                java.lang.String r1 = "purchasesUpdate"
                defpackage.im7.d(r6, r1)
                int r1 = com.noinnion.android.greader.ui.premium.PremiumActivity.E
                java.util.Objects.requireNonNull(r0)
                int r1 = r6.a()
                r2 = 1
                if (r1 == 0) goto L3e
                if (r1 == r2) goto L32
                r6 = 7
                if (r1 == r6) goto L26
                r6 = 2131821271(0x7f1102d7, float:1.927528E38)
                java.lang.String r6 = r0.getString(r6)
                defpackage.n56.X1(r0, r6)
                goto Lc0
            L26:
                r6 = 2131821269(0x7f1102d5, float:1.9275276E38)
                java.lang.String r6 = r0.getString(r6)
                defpackage.n56.X1(r0, r6)
                goto Lc0
            L32:
                r6 = 2131821270(0x7f1102d6, float:1.9275278E38)
                java.lang.String r6 = r0.getString(r6)
                defpackage.n56.X1(r0, r6)
                goto Lc0
            L3e:
                r1 = 2131821272(0x7f1102d8, float:1.9275282E38)
                java.lang.String r1 = r0.getString(r1)
                defpackage.n56.X1(r0, r1)
                po6 r1 = r0.B
                if (r1 == 0) goto Lc0
                java.util.List r6 = r6.b()
                boolean r3 = r6 instanceof java.util.Collection
                if (r3 == 0) goto L5b
                boolean r3 = r6.isEmpty()
                if (r3 == 0) goto L5b
                goto L78
            L5b:
                java.util.Iterator r6 = r6.iterator()
            L5f:
                boolean r3 = r6.hasNext()
                if (r3 == 0) goto L78
                java.lang.Object r3 = r6.next()
                com.android.billingclient.api.Purchase r3 = (com.android.billingclient.api.Purchase) r3
                java.lang.String r3 = r3.a()
                java.lang.String r4 = r1.b
                boolean r3 = defpackage.im7.a(r3, r4)
                if (r3 == 0) goto L5f
                goto L79
            L78:
                r2 = 0
            L79:
                if (r2 == 0) goto Lc0
                oj7 r6 = r0.y
                java.lang.Object r6 = r6.getValue()
                wo6 r6 = (defpackage.wo6) r6
                java.util.Objects.requireNonNull(r6)
                java.lang.String r2 = "promoCode"
                defpackage.im7.e(r1, r2)
                go6 r6 = r6.a
                java.util.Objects.requireNonNull(r6)
                defpackage.im7.e(r1, r2)
                eo6 r2 = new eo6
                r2.<init>(r6, r1)
                wd7 r6 = new wd7
                r6.<init>(r2)
                java.lang.String r1 = "Completable.create { emi…              }\n        }"
                defpackage.im7.d(r6, r1)
                zb7 r1 = defpackage.ej7.b
                hb7 r6 = r6.j(r1)
                zb7 r1 = defpackage.fc7.a()
                hb7 r6 = r6.g(r1)
                java.lang.String r1 = "promoCodeUseCase.acknowl…dSchedulers.mainThread())"
                defpackage.im7.d(r6, r1)
                cs6 r1 = defpackage.cs6.e
                r2 = 0
                r3 = 2
                ic7 r6 = defpackage.bj7.g(r6, r1, r2, r3)
                defpackage.n56.j(r6, r0)
            Lc0:
                r0.D()
                yj7 r6 = defpackage.yj7.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.premium.PremiumActivity.d.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static final class e extends jm7 implements pl7<Throwable, yj7> {
        public static final e e = new e();

        public e() {
            super(1);
        }

        @Override // defpackage.pl7
        public yj7 invoke(Throwable th) {
            Throwable th2 = th;
            im7.e(th2, "it");
            th2.printStackTrace();
            jy6.a("=> Could not fetch purchases: " + th2);
            return yj7.a;
        }
    }

    public static final class f extends jm7 implements pl7<Purchase, yj7> {
        public f() {
            super(1);
        }

        @Override // defpackage.pl7
        public yj7 invoke(Purchase purchase) {
            Purchase purchase2 = purchase;
            PremiumActivity premiumActivity = PremiumActivity.this;
            im7.d(purchase2, "purchase");
            ho6 ho6Var = premiumActivity.D;
            if (ho6Var == null) {
                im7.k("binding");
                throw null;
            }
            TextView textView = ho6Var.e;
            im7.d(textView, "binding.orderId");
            textView.setText(purchase2.c.optString("orderId"));
            ho6 ho6Var2 = premiumActivity.D;
            if (ho6Var2 == null) {
                im7.k("binding");
                throw null;
            }
            ho6Var2.p.setText(purchase2.c.optBoolean("autoRenewing") ? R.string.txt_yes : R.string.txt_no);
            ho6 ho6Var3 = premiumActivity.D;
            if (ho6Var3 == null) {
                im7.k("binding");
                throw null;
            }
            TextView textView2 = ho6Var3.r;
            im7.d(textView2, "binding.subscriptionSubscribedSince");
            o48 o48VarM = o48.M(purchase2.c.optLong("purchaseTime"));
            z48 z48VarM = z48.M();
            kt7.o(o48VarM, "instant");
            kt7.o(z48VarM, "zone");
            c58 c58VarW = c58.W(o48VarM.e, o48VarM.f, z48VarM);
            h68 h68Var = h68.MEDIUM;
            b68 b68Var = b68.h;
            kt7.o(h68Var, "dateStyle");
            c68 c68Var = new c68();
            c68Var.b(new c68.i(h68Var, null));
            b68 b68VarB = c68Var.o().b(o58.g);
            kt7.o(b68VarB, "formatter");
            textView2.setText(b68VarB.a(c58VarW));
            ho6 ho6Var4 = premiumActivity.D;
            if (ho6Var4 == null) {
                im7.k("binding");
                throw null;
            }
            ho6Var4.f.setOnClickListener(new ms6(premiumActivity, purchase2));
            PremiumActivity.E(premiumActivity, true, false, false, 6);
            return yj7.a;
        }
    }

    public static final class g extends jm7 implements el7<yj7> {
        public g() {
            super(0);
        }

        @Override // defpackage.el7
        public yj7 invoke() {
            PremiumActivity premiumActivity = PremiumActivity.this;
            int i = PremiumActivity.E;
            uo6 uo6VarB = premiumActivity.B();
            Objects.requireNonNull(uo6VarB);
            String strC = jb6.a().c("premium_monthly_subscription_product_id");
            im7.d(strC, "FirebaseRemoteConfig.get…scriptionProductId.key())");
            rb7<SkuDetails> rb7VarA = uo6VarB.c.a(strC);
            zb7 zb7Var = ej7.b;
            rb7<SkuDetails> rb7VarK = rb7VarA.n(zb7Var).k(fc7.a());
            im7.d(rb7VarK, "billingUseCase.getMonthl…dSchedulers.mainThread())");
            n56.j(bj7.e(rb7VarK, defpackage.h.f, j.f, new l(0, premiumActivity)), premiumActivity);
            uo6 uo6VarB2 = premiumActivity.B();
            Objects.requireNonNull(uo6VarB2);
            String strC2 = jb6.a().c("premium_yearly_subscription_product_id");
            im7.d(strC2, "FirebaseRemoteConfig.get…scriptionProductId.key())");
            rb7<SkuDetails> rb7VarK2 = uo6VarB2.c.a(strC2).n(zb7Var).k(fc7.a());
            im7.d(rb7VarK2, "billingUseCase.getYearly…dSchedulers.mainThread())");
            n56.j(bj7.e(rb7VarK2, defpackage.h.g, j.g, new l(1, premiumActivity)), premiumActivity);
            PremiumActivity.E(premiumActivity, false, true, false, 5);
            return yj7.a;
        }
    }

    public static final class h extends jm7 implements pl7<Throwable, yj7> {
        public h() {
            super(1);
        }

        @Override // defpackage.pl7
        public yj7 invoke(Throwable th) {
            Throwable th2 = th;
            im7.e(th2, "throwable");
            jy6.b("Purchases could not be retrieved", th2);
            PremiumActivity.E(PremiumActivity.this, false, false, true, 3);
            return yj7.a;
        }
    }

    public PremiumActivity() {
        pj7 pj7Var = pj7.SYNCHRONIZED;
        this.y = n56.q1(pj7Var, new a(this, null, null));
        this.z = n56.q1(pj7Var, new b(this, null, null));
        this.A = n56.q1(pj7Var, new c(this, null, null));
    }

    public static void E(PremiumActivity premiumActivity, boolean z, boolean z2, boolean z3, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        ho6 ho6Var = premiumActivity.D;
        if (ho6Var == null) {
            im7.k("binding");
            throw null;
        }
        LinearLayout linearLayout = ho6Var.h;
        im7.d(linearLayout, "binding.premiumStatus");
        n56.B2(linearLayout, Boolean.valueOf(z));
        ho6 ho6Var2 = premiumActivity.D;
        if (ho6Var2 == null) {
            im7.k("binding");
            throw null;
        }
        LinearLayout linearLayout2 = ho6Var2.q;
        im7.d(linearLayout2, "binding.subscriptionModels");
        n56.B2(linearLayout2, Boolean.valueOf(z2));
        ho6 ho6Var3 = premiumActivity.D;
        if (ho6Var3 == null) {
            im7.k("binding");
            throw null;
        }
        TextView textView = ho6Var3.g;
        im7.d(textView, "binding.premiumDataError");
        n56.B2(textView, Boolean.valueOf(z3));
    }

    public final uo6 B() {
        return (uo6) this.z.getValue();
    }

    public final void C(SkuDetails skuDetails) {
        ArrayList<SkuDetails> arrayList = new ArrayList<>();
        arrayList.add(skuDetails);
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("SkuDetails must be provided.");
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (arrayList.get(i) == null) {
                throw new IllegalArgumentException("SKU cannot be null.");
            }
            i = i2;
        }
        if (arrayList.size() > 1) {
            SkuDetails skuDetails2 = arrayList.get(0);
            String strC = skuDetails2.c();
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                SkuDetails skuDetails3 = arrayList.get(i3);
                if (!strC.equals("play_pass_subs") && !skuDetails3.c().equals("play_pass_subs") && !strC.equals(skuDetails3.c())) {
                    throw new IllegalArgumentException("SKUs should have the same type.");
                }
            }
            String strD = skuDetails2.d();
            int size3 = arrayList.size();
            for (int i4 = 0; i4 < size3; i4++) {
                SkuDetails skuDetails4 = arrayList.get(i4);
                if (!strC.equals("play_pass_subs") && !skuDetails4.c().equals("play_pass_subs") && !strD.equals(skuDetails4.d())) {
                    throw new IllegalArgumentException("All SKUs must have the same package name.");
                }
            }
        }
        hn hnVar = new hn();
        hnVar.a = true ^ arrayList.get(0).d().isEmpty();
        hnVar.b = null;
        hnVar.e = null;
        hnVar.c = null;
        hnVar.d = null;
        hnVar.f = 0;
        hnVar.g = arrayList;
        hnVar.h = false;
        im7.d(hnVar, "BillingFlowParams.newBui…ils)\n            .build()");
        hb7 hb7VarG = ((eq) this.A.getValue()).d(this, hnVar).j(ej7.b).g(fc7.a());
        im7.d(hb7VarG, "billingClient.launchFlow…dSchedulers.mainThread())");
        n56.j(bj7.g(hb7VarG, is6.e, null, 2), this);
    }

    public final void D() {
        lh7 lh7Var = new lh7(B().c.b(), to6.e);
        im7.d(lh7Var, "billingRepository.getVal…just(purchases.first()) }");
        rb7 rb7VarK = lh7Var.n(ej7.b).k(fc7.a());
        im7.d(rb7VarK, "billingUseCase.getSubscr…dSchedulers.mainThread())");
        n56.j(bj7.e(rb7VarK, new h(), new g(), new f()), this);
        if (cn6.e0(getApplicationContext())) {
            String str = new SimpleDateFormat("dd.MMM.yyyy HH:mm", Locale.getDefault()).format(Long.valueOf(iw6.A(getApplicationContext(), "premium_rewarded_expiry_time", -1L)));
            ho6 ho6Var = this.D;
            if (ho6Var == null) {
                im7.k("binding");
                throw null;
            }
            TextView textView = ho6Var.n;
            im7.d(textView, "binding.rewardedAdDescription");
            textView.setText(getString(R.string.premium_rewarded_ad_granted_description, new Object[]{str}));
            return;
        }
        long j = n48.l(jb6.a().b("premium_reward_duration_in_seconds")).e / 86400;
        ho6 ho6Var2 = this.D;
        if (ho6Var2 == null) {
            im7.k("binding");
            throw null;
        }
        TextView textView2 = ho6Var2.n;
        im7.d(textView2, "binding.rewardedAdDescription");
        textView2.setText(getString(R.string.premium_rewarded_ad_description, new Object[]{String.valueOf(j)}));
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, true);
        View viewInflate = getLayoutInflater().inflate(R.layout.premium, (ViewGroup) null, false);
        int i = R.id.monthly_subscription;
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.monthly_subscription);
        if (linearLayout != null) {
            i = R.id.monthly_subscription_description;
            TextView textView = (TextView) viewInflate.findViewById(R.id.monthly_subscription_description);
            if (textView != null) {
                i = R.id.monthly_subscription_price;
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.monthly_subscription_price);
                if (textView2 != null) {
                    i = R.id.order_id;
                    TextView textView3 = (TextView) viewInflate.findViewById(R.id.order_id);
                    if (textView3 != null) {
                        i = R.id.play_manage_subscription;
                        Button button = (Button) viewInflate.findViewById(R.id.play_manage_subscription);
                        if (button != null) {
                            i = R.id.premium_data_error;
                            TextView textView4 = (TextView) viewInflate.findViewById(R.id.premium_data_error);
                            if (textView4 != null) {
                                i = R.id.premium_status;
                                LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.premium_status);
                                if (linearLayout2 != null) {
                                    i = R.id.promo_subscription;
                                    LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.promo_subscription);
                                    if (linearLayout3 != null) {
                                        i = R.id.promo_subscription_description;
                                        TextView textView5 = (TextView) viewInflate.findViewById(R.id.promo_subscription_description);
                                        if (textView5 != null) {
                                            i = R.id.promo_subscription_price;
                                            TextView textView6 = (TextView) viewInflate.findViewById(R.id.promo_subscription_price);
                                            if (textView6 != null) {
                                                i = R.id.redeem_code;
                                                MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(R.id.redeem_code);
                                                if (materialButton != null) {
                                                    i = R.id.rewarded_ad;
                                                    LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.rewarded_ad);
                                                    if (linearLayout4 != null) {
                                                        i = R.id.rewarded_ad_container;
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate.findViewById(R.id.rewarded_ad_container);
                                                        if (constraintLayout != null) {
                                                            i = R.id.rewarded_ad_description;
                                                            TextView textView7 = (TextView) viewInflate.findViewById(R.id.rewarded_ad_description);
                                                            if (textView7 != null) {
                                                                i = R.id.rewarded_ad_loading;
                                                                LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) viewInflate.findViewById(R.id.rewarded_ad_loading);
                                                                if (linearProgressIndicator != null) {
                                                                    i = R.id.rewarded_ad_title;
                                                                    TextView textView8 = (TextView) viewInflate.findViewById(R.id.rewarded_ad_title);
                                                                    if (textView8 != null) {
                                                                        i = R.id.subscription_auto_renewal;
                                                                        TextView textView9 = (TextView) viewInflate.findViewById(R.id.subscription_auto_renewal);
                                                                        if (textView9 != null) {
                                                                            i = R.id.subscription_models;
                                                                            LinearLayout linearLayout5 = (LinearLayout) viewInflate.findViewById(R.id.subscription_models);
                                                                            if (linearLayout5 != null) {
                                                                                i = R.id.subscription_subscribed_since;
                                                                                TextView textView10 = (TextView) viewInflate.findViewById(R.id.subscription_subscribed_since);
                                                                                if (textView10 != null) {
                                                                                    i = R.id.toolbar_container;
                                                                                    View viewFindViewById = viewInflate.findViewById(R.id.toolbar_container);
                                                                                    if (viewFindViewById != null) {
                                                                                        Toolbar toolbar = (Toolbar) viewFindViewById;
                                                                                        io6 io6Var = new io6(toolbar, toolbar);
                                                                                        LinearLayout linearLayout6 = (LinearLayout) viewInflate.findViewById(R.id.yearly_subscription);
                                                                                        if (linearLayout6 != null) {
                                                                                            TextView textView11 = (TextView) viewInflate.findViewById(R.id.yearly_subscription_description);
                                                                                            if (textView11 != null) {
                                                                                                TextView textView12 = (TextView) viewInflate.findViewById(R.id.yearly_subscription_price);
                                                                                                if (textView12 != null) {
                                                                                                    ho6 ho6Var = new ho6((FrameLayout) viewInflate, linearLayout, textView, textView2, textView3, button, textView4, linearLayout2, linearLayout3, textView5, textView6, materialButton, linearLayout4, constraintLayout, textView7, linearProgressIndicator, textView8, textView9, linearLayout5, textView10, io6Var, linearLayout6, textView11, textView12);
                                                                                                    im7.d(ho6Var, "PremiumBinding.inflate(layoutInflater)");
                                                                                                    this.D = ho6Var;
                                                                                                    setContentView(ho6Var.a);
                                                                                                    ho6 ho6Var2 = this.D;
                                                                                                    if (ho6Var2 == null) {
                                                                                                        im7.k("binding");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    Toolbar toolbar2 = ho6Var2.s.a;
                                                                                                    toolbar2.setNavigationIcon(R.drawable.bs_ic_clear);
                                                                                                    toolbar2.setNavigationOnClickListener(new defpackage.e(0, this));
                                                                                                    ho6 ho6Var3 = this.D;
                                                                                                    if (ho6Var3 == null) {
                                                                                                        im7.k("binding");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    ho6Var3.l.setOnClickListener(new defpackage.e(1, this));
                                                                                                    ho6 ho6Var4 = this.D;
                                                                                                    if (ho6Var4 == null) {
                                                                                                        im7.k("binding");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    ho6Var4.m.setOnClickListener(new defpackage.e(2, this));
                                                                                                    mb7<dq> mb7Var = B().a;
                                                                                                    zb7 zb7Var = ej7.b;
                                                                                                    Objects.requireNonNull(mb7Var);
                                                                                                    Objects.requireNonNull(zb7Var, "scheduler is null");
                                                                                                    mb7<T> mb7VarO = new uf7(mb7Var, zb7Var, true ^ (mb7Var instanceof je7)).o(fc7.a());
                                                                                                    im7.d(mb7VarO, "billingUseCase.purchaseU…dSchedulers.mainThread())");
                                                                                                    d dVar = new d();
                                                                                                    e eVar = e.e;
                                                                                                    pl7<Object, yj7> pl7Var = bj7.a;
                                                                                                    el7<yj7> el7Var = bj7.c;
                                                                                                    im7.f(mb7VarO, "$this$subscribeBy");
                                                                                                    im7.f(eVar, "onError");
                                                                                                    im7.f(el7Var, "onComplete");
                                                                                                    im7.f(dVar, "onNext");
                                                                                                    ic7 ic7VarR = mb7VarO.r(bj7.a(dVar), bj7.c(eVar), bj7.b(el7Var), ye7.INSTANCE);
                                                                                                    im7.b(ic7VarR, "subscribe(onNext.asConsu…ete.asOnCompleteAction())");
                                                                                                    n56.j(ic7VarR, this);
                                                                                                    n56.y2(this, R.string.ga_screen_upgrade);
                                                                                                    return;
                                                                                                }
                                                                                                i = R.id.yearly_subscription_price;
                                                                                            } else {
                                                                                                i = R.id.yearly_subscription_description;
                                                                                            }
                                                                                        } else {
                                                                                            i = R.id.yearly_subscription;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        RewardedAd rewardedAd = this.C;
        if (rewardedAd != null) {
            im7.e(rewardedAd, "$this$destroy");
            rewardedAd.setFullScreenContentCallback(null);
        }
        this.C = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        D();
    }
}
