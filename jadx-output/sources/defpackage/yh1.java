package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.internal.ads.zzbar;
import defpackage.lp3;

/* loaded from: classes.dex */
public final class yh1 implements zzp, ob1 {
    public final Context e;
    public final xw0 f;
    public final sk2 g;
    public final zzbar h;
    public final lp3.a i;
    public x20 j;

    public yh1(Context context, xw0 xw0Var, sk2 sk2Var, zzbar zzbarVar, lp3.a aVar) {
        this.e = context;
        this.f = xw0Var;
        this.g = sk2Var;
        this.h = zzbarVar;
        this.i = aVar;
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() {
        uk0 uk0Var;
        sk0 sk0Var;
        lp3.a aVar = this.i;
        if ((aVar == lp3.a.REWARD_BASED_VIDEO_AD || aVar == lp3.a.INTERSTITIAL || aVar == lp3.a.APP_OPEN) && this.g.N && this.f != null && zzr.zzlk().e(this.e)) {
            zzbar zzbarVar = this.h;
            int i = zzbarVar.f;
            int i2 = zzbarVar.g;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String string = sb.toString();
            String videoEventsOwner = this.g.P.getVideoEventsOwner();
            if (((Boolean) os3.j.f.a(y40.V2)).booleanValue()) {
                if (this.g.P.getMediaType() == OmidMediaType.VIDEO) {
                    sk0Var = sk0.VIDEO;
                    uk0Var = uk0.DEFINED_BY_JAVASCRIPT;
                } else {
                    uk0Var = this.g.S == 2 ? uk0.UNSPECIFIED : uk0.BEGIN_TO_RENDER;
                    sk0Var = sk0.HTML_DISPLAY;
                }
                this.j = zzr.zzlk().a(string, this.f.getWebView(), "", "javascript", videoEventsOwner, uk0Var, sk0Var, this.g.g0);
            } else {
                this.j = zzr.zzlk().b(string, this.f.getWebView(), "", "javascript", videoEventsOwner, "Google");
            }
            if (this.j == null || this.f.getView() == null) {
                return;
            }
            zzr.zzlk().c(this.j, this.f.getView());
            this.f.u0(this.j);
            zzr.zzlk().d(this.j);
            if (((Boolean) os3.j.f.a(y40.X2)).booleanValue()) {
                this.f.x("onSdkLoaded", new f4());
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        this.j = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        xw0 xw0Var;
        if (this.j == null || (xw0Var = this.f) == null) {
            return;
        }
        xw0Var.x("onSdkImpression", new f4());
    }
}
