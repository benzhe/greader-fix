package defpackage;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class y51 implements va1, ob1 {
    public final Context e;
    public final xw0 f;
    public final sk2 g;
    public final zzbar h;
    public x20 i;
    public boolean j;

    public y51(Context context, xw0 xw0Var, sk2 sk2Var, zzbar zzbarVar) {
        this.e = context;
        this.f = xw0Var;
        this.g = sk2Var;
        this.h = zzbarVar;
    }

    public final synchronized void a() {
        sk0 sk0Var;
        uk0 uk0Var;
        if (this.g.N) {
            if (this.f == null) {
                return;
            }
            if (zzr.zzlk().e(this.e)) {
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
                        sk0Var = sk0.HTML_DISPLAY;
                        uk0Var = this.g.e == 1 ? uk0.ONE_PIXEL : uk0.BEGIN_TO_RENDER;
                    }
                    this.i = zzr.zzlk().a(string, this.f.getWebView(), "", "javascript", videoEventsOwner, uk0Var, sk0Var, this.g.g0);
                } else {
                    this.i = zzr.zzlk().b(string, this.f.getWebView(), "", "javascript", videoEventsOwner, "Google");
                }
                View view = this.f.getView();
                if (this.i != null && view != null) {
                    zzr.zzlk().c(this.i, view);
                    this.f.u0(this.i);
                    zzr.zzlk().d(this.i);
                    this.j = true;
                    if (((Boolean) os3.j.f.a(y40.X2)).booleanValue()) {
                        this.f.x("onSdkLoaded", new f4());
                    }
                }
            }
        }
    }

    @Override // defpackage.va1
    public final synchronized void onAdImpression() {
        xw0 xw0Var;
        if (!this.j) {
            a();
        }
        if (this.g.N && this.i != null && (xw0Var = this.f) != null) {
            xw0Var.x("onSdkImpression", new f4());
        }
    }

    @Override // defpackage.ob1
    public final synchronized void onAdLoaded() {
        if (this.j) {
            return;
        }
        a();
    }
}
