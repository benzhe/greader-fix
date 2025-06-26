package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.android.billingclient.api.Purchase;
import com.noinnion.android.greader.ui.premium.PremiumActivity;

/* loaded from: classes2.dex */
public final class ms6 implements View.OnClickListener {
    public final /* synthetic */ PremiumActivity e;
    public final /* synthetic */ Purchase f;

    public ms6(PremiumActivity premiumActivity, Purchase purchase) {
        this.e = premiumActivity;
        this.f = purchase;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        StringBuilder sbZ = jo.z("https://play.google.com/store/account/subscriptions?sku=");
        sbZ.append(this.f.a());
        sbZ.append("&package=");
        sbZ.append(this.f.c.optString("packageName"));
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(sbZ.toString()));
        intent.setFlags(134217728);
        this.e.startActivity(intent);
    }
}
