package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzvh;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class as1 implements ha1, va1, id1, er3 {
    public final Context e;
    public final vl2 f;
    public final ns1 g;
    public final hl2 h;
    public final sk2 i;
    public final sy1 j;
    public Boolean k;
    public final boolean l = ((Boolean) os3.j.f.a(y40.n4)).booleanValue();

    public as1(Context context, vl2 vl2Var, ns1 ns1Var, hl2 hl2Var, sk2 sk2Var, sy1 sy1Var) {
        this.e = context;
        this.f = vl2Var;
        this.g = ns1Var;
        this.h = hl2Var;
        this.i = sk2Var;
        this.j = sy1Var;
    }

    @Override // defpackage.ha1
    public final void B0() {
        if (this.l) {
            ms1 ms1VarX = x("ifts");
            ms1VarX.a.put("reason", "blocked");
            ms1VarX.b();
        }
    }

    @Override // defpackage.ha1
    public final void V(zzvh zzvhVar) {
        zzvh zzvhVar2;
        if (this.l) {
            ms1 ms1VarX = x("ifts");
            ms1VarX.a.put("reason", "adapter");
            int i = zzvhVar.e;
            String str = zzvhVar.f;
            if (zzvhVar.g.equals(MobileAds.ERROR_DOMAIN) && (zzvhVar2 = zzvhVar.h) != null && !zzvhVar2.g.equals(MobileAds.ERROR_DOMAIN)) {
                zzvh zzvhVar3 = zzvhVar.h;
                i = zzvhVar3.e;
                str = zzvhVar3.f;
            }
            if (i >= 0) {
                ms1VarX.a.put("arec", String.valueOf(i));
            }
            String strA = this.f.a(str);
            if (strA != null) {
                ms1VarX.a.put("areec", strA);
            }
            ms1VarX.b();
        }
    }

    @Override // defpackage.ha1
    public final void a0(vh1 vh1Var) {
        if (this.l) {
            ms1 ms1VarX = x("ifts");
            ms1VarX.a.put("reason", "exception");
            if (!TextUtils.isEmpty(vh1Var.getMessage())) {
                ms1VarX.a.put("msg", vh1Var.getMessage());
            }
            ms1VarX.b();
        }
    }

    public final void d(ms1 ms1Var) {
        if (!this.i.d0) {
            ms1Var.b();
            return;
        }
        ss1 ss1Var = ms1Var.b.a;
        zy1 zy1Var = new zy1(zzr.zzlc().a(), this.h.b.b.b, ss1Var.e.a(ms1Var.a), 2);
        sy1 sy1Var = this.j;
        sy1Var.c(new yy1(sy1Var, zy1Var));
    }

    @Override // defpackage.er3
    public final void onAdClicked() {
        if (this.i.d0) {
            d(x("click"));
        }
    }

    @Override // defpackage.va1
    public final void onAdImpression() {
        if (t() || this.i.d0) {
            d(x("impression"));
        }
    }

    @Override // defpackage.id1
    public final void r() {
        if (t()) {
            x("adapter_impression").b();
        }
    }

    @Override // defpackage.id1
    public final void s() {
        if (t()) {
            x("adapter_shown").b();
        }
    }

    public final boolean t() {
        if (this.k == null) {
            synchronized (this) {
                if (this.k == null) {
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
                    this.k = Boolean.valueOf(zMatches);
                }
            }
        }
        return this.k.booleanValue();
    }

    public final ms1 x(String str) {
        ms1 ms1VarA = this.g.a();
        ms1VarA.a(this.h.b.b);
        ms1VarA.a.put("aai", this.i.v);
        ms1VarA.a.put("action", str);
        if (!this.i.s.isEmpty()) {
            ms1VarA.a.put("ancn", this.i.s.get(0));
        }
        if (this.i.d0) {
            zzr.zzkv();
            ms1VarA.a.put("device_connectivity", zzj.zzbd(this.e) ? "online" : "offline");
            ms1VarA.a.put("event_timestamp", String.valueOf(zzr.zzlc().a()));
            ms1VarA.a.put("offline_ad", "1");
        }
        return ms1VarA;
    }
}
