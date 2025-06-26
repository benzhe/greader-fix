package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class io1 {
    public final zzb b;
    public final Context c;
    public final ns1 d;
    public final pp2 e;
    public final Executor f;
    public final d23 g;
    public final zzbar h;
    public final sy1 j;
    public final jq2 k;
    public aw2<xw0> l;
    public final qo1 a = new qo1(null);
    public final vb0 i = new vb0();

    public io1(vo1 vo1Var) {
        this.c = vo1Var.g;
        this.f = vo1Var.k;
        this.g = vo1Var.l;
        this.h = vo1Var.m;
        this.b = vo1Var.e;
        this.j = vo1Var.j;
        this.k = vo1Var.n;
        this.d = vo1Var.h;
        this.e = vo1Var.i;
    }

    public final synchronized void a(String str, kb0<Object> kb0Var) {
        aw2<xw0> aw2Var = this.l;
        if (aw2Var == null) {
            return;
        }
        mo1 mo1Var = new mo1(str, kb0Var);
        aw2Var.i(new sv2(aw2Var, mo1Var), this.f);
    }

    public final synchronized void b(String str, Map<String, ?> map) {
        aw2<xw0> aw2Var = this.l;
        if (aw2Var == null) {
            return;
        }
        oo1 oo1Var = new oo1(str, map);
        aw2Var.i(new sv2(aw2Var, oo1Var), this.f);
    }

    public final <T> void c(WeakReference<T> weakReference, String str, kb0<T> kb0Var) {
        a(str, new uo1(this, weakReference, str, kb0Var, null));
    }

    public final synchronized void d(String str, kb0<Object> kb0Var) {
        aw2<xw0> aw2Var = this.l;
        if (aw2Var == null) {
            return;
        }
        po1 po1Var = new po1(str, kb0Var);
        aw2Var.i(new sv2(aw2Var, po1Var), this.f);
    }

    public final synchronized aw2<JSONObject> e(final String str, final JSONObject jSONObject) {
        aw2<xw0> aw2Var = this.l;
        if (aw2Var == null) {
            return vt2.j(null);
        }
        return vt2.m(aw2Var, new cv2(this, str, jSONObject) { // from class: ko1
            public final io1 a;
            public final String b;
            public final JSONObject c;

            {
                this.a = this;
                this.b = str;
                this.c = jSONObject;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) throws JSONException {
                io1 io1Var = this.a;
                String str2 = this.b;
                JSONObject jSONObject2 = this.c;
                xw0 xw0Var = (xw0) obj;
                vb0 vb0Var = io1Var.i;
                Objects.requireNonNull(vb0Var);
                xs0 xs0Var = new xs0();
                zzr.zzkv();
                String strZzzr = zzj.zzzr();
                vb0Var.b(strZzzr, new yb0(xs0Var));
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("id", strZzzr);
                    jSONObject3.put("args", jSONObject2);
                    xw0Var.Z(str2, jSONObject3);
                } catch (Exception e) {
                    xs0Var.b(e);
                }
                return xs0Var;
            }
        }, this.f);
    }
}
