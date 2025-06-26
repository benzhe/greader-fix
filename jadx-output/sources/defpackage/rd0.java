package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class rd0 implements nd0, pd0 {
    public final xw0 e;

    public rd0(Context context, zzbar zzbarVar, d23 d23Var) throws ix0 {
        zzr.zzkw();
        xw0 xw0VarA = fx0.a(context, jy0.a(), "", false, false, d23Var, null, zzbarVar, null, null, new ep3(), null, null);
        this.e = xw0VarA;
        xw0VarA.getView().setWillNotDraw(true);
    }

    public static void t(Runnable runnable) {
        zr0 zr0Var = os3.j.a;
        if (zr0.f()) {
            runnable.run();
        } else {
            zzj.zzegq.post(runnable);
        }
    }

    @Override // defpackage.zd0
    public final void Z(String str, JSONObject jSONObject) {
        c50.d2(this, str, jSONObject.toString());
    }

    @Override // defpackage.nd0, defpackage.zd0
    public final void d(final String str) {
        t(new Runnable(this, str) { // from class: qd0
            public final rd0 e;
            public final String f;

            {
                this.e = this;
                this.f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                rd0 rd0Var = this.e;
                rd0Var.e.d(this.f);
            }
        });
    }

    @Override // defpackage.od0
    public final void d0(String str, JSONObject jSONObject) {
        c50.f3(this, str, jSONObject);
    }

    @Override // defpackage.pd0
    public final void destroy() {
        this.e.destroy();
    }

    @Override // defpackage.pd0
    public final boolean j() {
        return this.e.j();
    }

    @Override // defpackage.we0
    public final void n(String str, kb0<? super we0> kb0Var) {
        this.e.k0(str, new ud0(kb0Var));
    }

    @Override // defpackage.we0
    public final void o(String str, kb0<? super we0> kb0Var) {
        this.e.o(str, new wd0(this, kb0Var));
    }

    @Override // defpackage.pd0
    public final ze0 o0() {
        return new ye0(this);
    }

    @Override // defpackage.od0
    public final void x(String str, Map map) {
        try {
            c50.f3(this, str, zzr.zzkv().zzj(map));
        } catch (JSONException unused) {
            is0.zzez("Could not convert parameters to JSON.");
        }
    }
}
