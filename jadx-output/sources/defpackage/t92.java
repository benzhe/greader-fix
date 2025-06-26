package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.Objects;

/* loaded from: classes.dex */
public final class t92 implements qd2<Object> {
    public static final Object g = new Object();
    public final String a;
    public final String b;
    public final t71 c;
    public final gm2 d;
    public final ll2 e;
    public final zzf f = zzr.zzkz().f();

    public t92(String str, String str2, t71 t71Var, gm2 gm2Var, ll2 ll2Var) {
        this.a = str;
        this.b = str2;
        this.c = t71Var;
        this.d = gm2Var;
        this.e = ll2Var;
    }

    @Override // defpackage.qd2
    public final aw2<Object> a() {
        final Bundle bundle = new Bundle();
        if (((Boolean) os3.j.f.a(y40.k3)).booleanValue()) {
            this.c.d(this.e.d);
            bundle.putAll(this.d.a());
        }
        return vt2.j(new nd2(this, bundle) { // from class: w92
            public final t92 a;
            public final Bundle b;

            {
                this.a = this;
                this.b = bundle;
            }

            @Override // defpackage.nd2
            public final void b(Object obj) {
                t92 t92Var = this.a;
                Bundle bundle2 = this.b;
                Bundle bundle3 = (Bundle) obj;
                Objects.requireNonNull(t92Var);
                if (((Boolean) os3.j.f.a(y40.k3)).booleanValue()) {
                    bundle3.putBundle("quality_signals", bundle2);
                } else {
                    if (((Boolean) os3.j.f.a(y40.j3)).booleanValue()) {
                        synchronized (t92.g) {
                            t92Var.c.d(t92Var.e.d);
                            bundle3.putBundle("quality_signals", t92Var.d.a());
                        }
                    } else {
                        t92Var.c.d(t92Var.e.d);
                        bundle3.putBundle("quality_signals", t92Var.d.a());
                    }
                }
                bundle3.putString("seq_num", t92Var.a);
                bundle3.putString("session_id", t92Var.f.zzzn() ? "" : t92Var.b);
            }
        });
    }
}
