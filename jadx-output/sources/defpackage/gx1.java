package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzvh;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class gx1 implements ha1, va1, id1, er3 {
    public final Context e;
    public final vl2 f;
    public final hl2 g;
    public final sk2 h;
    public final sy1 i;
    public Boolean j;
    public final boolean k = ((Boolean) os3.j.f.a(y40.n4)).booleanValue();
    public final pp2 l;
    public final String m;

    public gx1(Context context, vl2 vl2Var, hl2 hl2Var, sk2 sk2Var, sy1 sy1Var, pp2 pp2Var, String str) {
        this.e = context;
        this.f = vl2Var;
        this.g = hl2Var;
        this.h = sk2Var;
        this.i = sy1Var;
        this.l = pp2Var;
        this.m = str;
    }

    @Override // defpackage.ha1
    public final void B0() {
        if (this.k) {
            pp2 pp2Var = this.l;
            qp2 qp2VarX = x("ifts");
            qp2VarX.a.put("reason", "blocked");
            pp2Var.b(qp2VarX);
        }
    }

    @Override // defpackage.ha1
    public final void V(zzvh zzvhVar) {
        zzvh zzvhVar2;
        if (this.k) {
            int i = zzvhVar.e;
            String str = zzvhVar.f;
            if (zzvhVar.g.equals(MobileAds.ERROR_DOMAIN) && (zzvhVar2 = zzvhVar.h) != null && !zzvhVar2.g.equals(MobileAds.ERROR_DOMAIN)) {
                zzvh zzvhVar3 = zzvhVar.h;
                i = zzvhVar3.e;
                str = zzvhVar3.f;
            }
            String strA = this.f.a(str);
            qp2 qp2VarX = x("ifts");
            qp2VarX.a.put("reason", "adapter");
            if (i >= 0) {
                qp2VarX.a.put("arec", String.valueOf(i));
            }
            if (strA != null) {
                qp2VarX.a.put("areec", strA);
            }
            this.l.b(qp2VarX);
        }
    }

    @Override // defpackage.ha1
    public final void a0(vh1 vh1Var) {
        if (this.k) {
            qp2 qp2VarX = x("ifts");
            qp2VarX.a.put("reason", "exception");
            if (!TextUtils.isEmpty(vh1Var.getMessage())) {
                qp2VarX.a.put("msg", vh1Var.getMessage());
            }
            this.l.b(qp2VarX);
        }
    }

    public final void d(qp2 qp2Var) {
        if (!this.h.d0) {
            this.l.b(qp2Var);
            return;
        }
        zy1 zy1Var = new zy1(zzr.zzlc().a(), this.g.b.b.b, this.l.a(qp2Var), 2);
        sy1 sy1Var = this.i;
        sy1Var.c(new yy1(sy1Var, zy1Var));
    }

    @Override // defpackage.er3
    public final void onAdClicked() {
        if (this.h.d0) {
            d(x("click"));
        }
    }

    @Override // defpackage.va1
    public final void onAdImpression() {
        if (t() || this.h.d0) {
            d(x("impression"));
        }
    }

    @Override // defpackage.id1
    public final void r() {
        if (t()) {
            this.l.b(x("adapter_impression"));
        }
    }

    @Override // defpackage.id1
    public final void s() {
        if (t()) {
            this.l.b(x("adapter_shown"));
        }
    }

    public final boolean t() {
        if (this.j == null) {
            synchronized (this) {
                if (this.j == null) {
                    String str = (String) os3.j.f.a(y40.Z0);
                    zzr.zzkv();
                    String strZzbb = zzj.zzbb(this.e);
                    boolean zMatches = false;
                    if (str != null && strZzbb != null) {
                        try {
                            zMatches = Pattern.matches(str, strZzbb);
                        } catch (RuntimeException e) {
                            or0 or0VarZzkz = zzr.zzkz();
                            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.j = Boolean.valueOf(zMatches);
                }
            }
        }
        return this.j.booleanValue();
    }

    public final qp2 x(String str) {
        qp2 qp2VarC = qp2.c(str);
        qp2VarC.a(this.g, null);
        qp2VarC.a.put("aai", this.h.v);
        qp2VarC.a.put("request_id", this.m);
        if (!this.h.s.isEmpty()) {
            qp2VarC.a.put("ancn", this.h.s.get(0));
        }
        if (this.h.d0) {
            zzr.zzkv();
            qp2VarC.a.put("device_connectivity", zzj.zzbd(this.e) ? "online" : "offline");
            qp2VarC.a.put("event_timestamp", String.valueOf(zzr.zzlc().a()));
            qp2VarC.a.put("offline_ad", "1");
        }
        return qp2VarC;
    }
}
