package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzvh;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cs1 implements da1, ob1, sc1 {
    public final ks1 e;
    public final ss1 f;

    public cs1(ks1 ks1Var, ss1 ss1Var) {
        this.e = ks1Var;
        this.f = ss1Var;
    }

    @Override // defpackage.sc1
    public final void M(hl2 hl2Var) {
        ks1 ks1Var = this.e;
        Objects.requireNonNull(ks1Var);
        if (hl2Var.b.a.size() > 0) {
            switch (hl2Var.b.a.get(0).b) {
                case 1:
                    ks1Var.a.put("ad_format", "banner");
                    break;
                case 2:
                    ks1Var.a.put("ad_format", "interstitial");
                    break;
                case 3:
                    ks1Var.a.put("ad_format", "native_express");
                    break;
                case 4:
                    ks1Var.a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    ks1Var.a.put("ad_format", "rewarded");
                    break;
                case 6:
                    ks1Var.a.put("ad_format", "app_open_ad");
                    ks1Var.a.put("as", ks1Var.b.g ? "1" : "0");
                    break;
                default:
                    ks1Var.a.put("ad_format", "unknown");
                    break;
            }
        }
        if (TextUtils.isEmpty(hl2Var.b.b.b)) {
            return;
        }
        ks1Var.a.put("gqi", hl2Var.b.b.b);
    }

    @Override // defpackage.da1
    public final void Q(zzvh zzvhVar) {
        this.e.a.put("action", "ftl");
        this.e.a.put("ftl", String.valueOf(zzvhVar.e));
        this.e.a.put("ed", zzvhVar.g);
        this.f.a(this.e.a);
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() {
        this.e.a.put("action", "loaded");
        this.f.a(this.e.a);
    }

    @Override // defpackage.sc1
    public final void t(zzauj zzaujVar) {
        ks1 ks1Var = this.e;
        Bundle bundle = zzaujVar.e;
        Objects.requireNonNull(ks1Var);
        if (bundle.containsKey("cnt")) {
            ks1Var.a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            ks1Var.a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
