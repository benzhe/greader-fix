package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.zzr;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class co1 extends t80 {
    public final Context e;
    public final wj1 f;
    public tk1 g;
    public kj1 h;

    public co1(Context context, wj1 wj1Var, tk1 tk1Var, kj1 kj1Var) {
        this.e = context;
        this.f = wj1Var;
        this.g = tk1Var;
        this.h = kj1Var;
    }

    @Override // defpackage.q80
    public final boolean A3(x20 x20Var) {
        Object objL0 = y20.l0(x20Var);
        if (!(objL0 instanceof ViewGroup)) {
            return false;
        }
        tk1 tk1Var = this.g;
        if (!(tk1Var != null && tk1Var.b((ViewGroup) objL0))) {
            return false;
        }
        this.f.o().K(new fo1(this));
        return true;
    }

    @Override // defpackage.q80
    public final void K2(x20 x20Var) {
        kj1 kj1Var;
        Object objL0 = y20.l0(x20Var);
        if (!(objL0 instanceof View) || this.f.q() == null || (kj1Var = this.h) == null) {
            return;
        }
        kj1Var.e((View) objL0);
    }

    @Override // defpackage.q80
    public final boolean L6() {
        x20 x20VarQ = this.f.q();
        if (x20VarQ == null) {
            is0.zzez("Trying to start OMID session before creation.");
            return false;
        }
        zzr.zzlk().d(x20VarQ);
        if (!((Boolean) os3.j.f.a(y40.X2)).booleanValue() || this.f.p() == null) {
            return true;
        }
        this.f.p().x("onSdkLoaded", new f4());
        return true;
    }

    @Override // defpackage.q80
    public final x20 Q1() {
        return new y20(this.e);
    }

    @Override // defpackage.q80
    public final boolean S0() {
        kj1 kj1Var = this.h;
        return (kj1Var == null || kj1Var.l.a()) && this.f.p() != null && this.f.o() == null;
    }

    @Override // defpackage.q80
    public final String S1(String str) {
        m4<String, String> m4Var;
        wj1 wj1Var = this.f;
        synchronized (wj1Var) {
            m4Var = wj1Var.s;
        }
        return m4Var.getOrDefault(str, null);
    }

    @Override // defpackage.q80
    public final u70 X5(String str) {
        m4<String, h70> m4Var;
        wj1 wj1Var = this.f;
        synchronized (wj1Var) {
            m4Var = wj1Var.r;
        }
        return m4Var.getOrDefault(str, null);
    }

    @Override // defpackage.q80
    public final void destroy() {
        kj1 kj1Var = this.h;
        if (kj1Var != null) {
            kj1Var.a();
        }
        this.h = null;
        this.g = null;
    }

    @Override // defpackage.q80
    public final List<String> getAvailableAssetNames() {
        m4<String, h70> m4Var;
        m4<String, String> m4Var2;
        wj1 wj1Var = this.f;
        synchronized (wj1Var) {
            m4Var = wj1Var.r;
        }
        wj1 wj1Var2 = this.f;
        synchronized (wj1Var2) {
            m4Var2 = wj1Var2.s;
        }
        String[] strArr = new String[m4Var.g + m4Var2.g];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < m4Var.g) {
            strArr[i3] = m4Var.h(i2);
            i2++;
            i3++;
        }
        while (i < m4Var2.g) {
            strArr[i3] = m4Var2.h(i);
            i++;
            i3++;
        }
        return Arrays.asList(strArr);
    }

    @Override // defpackage.q80
    public final String getCustomTemplateId() {
        return this.f.c();
    }

    @Override // defpackage.q80
    public final su3 getVideoController() {
        return this.f.h();
    }

    @Override // defpackage.q80
    public final void performClick(String str) {
        kj1 kj1Var = this.h;
        if (kj1Var != null) {
            synchronized (kj1Var) {
                kj1Var.j.m(str);
            }
        }
    }

    @Override // defpackage.q80
    public final void recordImpression() {
        kj1 kj1Var = this.h;
        if (kj1Var != null) {
            synchronized (kj1Var) {
                if (kj1Var.t) {
                    return;
                }
                kj1Var.j.i();
            }
        }
    }

    @Override // defpackage.q80
    public final void u1() {
        String str;
        wj1 wj1Var = this.f;
        synchronized (wj1Var) {
            str = wj1Var.u;
        }
        if ("Google".equals(str)) {
            is0.zzez("Illegal argument specified for omid partner name.");
            return;
        }
        kj1 kj1Var = this.h;
        if (kj1Var != null) {
            kj1Var.n(str, false);
        }
    }
}
