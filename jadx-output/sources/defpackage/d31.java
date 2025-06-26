package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class d31 implements em3 {
    public xw0 e;
    public final Executor f;
    public final o21 g;
    public final b20 h;
    public boolean i = false;
    public boolean j = false;
    public s21 k = new s21();

    public d31(Executor executor, o21 o21Var, b20 b20Var) {
        this.f = executor;
        this.g = o21Var;
        this.h = b20Var;
    }

    @Override // defpackage.em3
    public final void c0(fm3 fm3Var) {
        s21 s21Var = this.k;
        s21Var.a = this.j ? false : fm3Var.j;
        s21Var.c = this.h.b();
        this.k.e = fm3Var;
        if (this.i) {
            d();
        }
    }

    public final void d() {
        try {
            final JSONObject jSONObjectC = this.g.c(this.k);
            if (this.e != null) {
                this.f.execute(new Runnable(this, jSONObjectC) { // from class: c31
                    public final d31 e;
                    public final JSONObject f;

                    {
                        this.e = this;
                        this.f = jSONObjectC;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        d31 d31Var = this.e;
                        d31Var.e.Z("AFMA_updateActiveView", this.f);
                    }
                });
            }
        } catch (JSONException e) {
            zzd.zza("Failed to call video active view js", e);
        }
    }
}
