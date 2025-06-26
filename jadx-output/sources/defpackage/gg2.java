package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.f61;
import defpackage.k91;
import defpackage.n91;
import defpackage.t31;
import defpackage.yd1;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class gg2<AppOpenAd extends f61, AppOpenRequestComponent extends t31<AppOpenAd>, AppOpenRequestComponentBuilder extends k91<AppOpenRequestComponent>> implements a72<AppOpenAd> {
    public final Context a;
    public final Executor b;
    public final sy0 c;
    public final mg2 d;
    public final li2<AppOpenRequestComponent, AppOpenAd> e;
    public final ViewGroup f;
    public final nl2 g;
    public aw2<AppOpenAd> h;

    public gg2(Context context, Executor executor, sy0 sy0Var, li2<AppOpenRequestComponent, AppOpenAd> li2Var, mg2 mg2Var, nl2 nl2Var) {
        this.a = context;
        this.b = executor;
        this.c = sy0Var;
        this.e = li2Var;
        this.d = mg2Var;
        this.g = nl2Var;
        this.f = new FrameLayout(context);
    }

    @Override // defpackage.a72
    public final synchronized boolean a(zzvq zzvqVar, String str, z62 z62Var, c72<? super AppOpenAd> c72Var) throws RemoteException {
        bi.f("loadAd must be called on the main UI thread.");
        if (str == null) {
            is0.zzex("Ad unit ID should not be null for app open ad.");
            this.b.execute(new jg2(this));
            return false;
        }
        if (this.h != null) {
            return false;
        }
        c50.Q3(this.a, zzvqVar.j);
        nl2 nl2Var = this.g;
        nl2Var.d = str;
        nl2Var.b = zzvt.L0();
        nl2Var.a = zzvqVar;
        ll2 ll2VarA = nl2Var.a();
        ng2 ng2Var = new ng2(null);
        ng2Var.a = ll2VarA;
        aw2<AppOpenAd> aw2VarA = this.e.a(new pi2(ng2Var), new hg2(this));
        this.h = aw2VarA;
        lg2 lg2Var = new lg2(this, c72Var, ng2Var);
        aw2VarA.i(new sv2(aw2VarA, lg2Var), this.b);
        return true;
    }

    public abstract AppOpenRequestComponentBuilder b(i41 i41Var, n91 n91Var, yd1 yd1Var);

    public final synchronized AppOpenRequestComponentBuilder c(oi2 oi2Var) {
        ng2 ng2Var = (ng2) oi2Var;
        if (((Boolean) os3.j.f.a(y40.M4)).booleanValue()) {
            i41 i41Var = new i41(this.f);
            n91.a aVar = new n91.a();
            aVar.a = this.a;
            aVar.b = ng2Var.a;
            return (AppOpenRequestComponentBuilder) b(i41Var, aVar.a(), new yd1.a().h());
        }
        mg2 mg2Var = this.d;
        mg2 mg2Var2 = new mg2(mg2Var.e);
        mg2Var2.l = mg2Var;
        yd1.a aVar2 = new yd1.a();
        aVar2.g.add(new sf1<>(mg2Var2, this.b));
        aVar2.e.add(new sf1<>(mg2Var2, this.b));
        aVar2.l.add(new sf1<>(mg2Var2, this.b));
        aVar2.k.add(new sf1<>(mg2Var2, this.b));
        aVar2.m = mg2Var2;
        i41 i41Var2 = new i41(this.f);
        n91.a aVar3 = new n91.a();
        aVar3.a = this.a;
        aVar3.b = ng2Var.a;
        return (AppOpenRequestComponentBuilder) b(i41Var2, aVar3.a(), aVar2.h());
    }

    @Override // defpackage.a72
    public final boolean isLoading() {
        aw2<AppOpenAd> aw2Var = this.h;
        return (aw2Var == null || aw2Var.isDone()) ? false : true;
    }
}
