package defpackage;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzaqr;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class e92 implements qd2<c92> {
    public final zv2 a;
    public final nq1 b;
    public final mt1 c;
    public final g92 d;

    public e92(zv2 zv2Var, nq1 nq1Var, mt1 mt1Var, g92 g92Var) {
        this.a = zv2Var;
        this.b = nq1Var;
        this.c = mt1Var;
        this.d = g92Var;
    }

    public static Bundle b(zl2 zl2Var) {
        pl2 pl2Var;
        Bundle bundle = new Bundle();
        try {
            try {
                zzaqr zzaqrVarM = zl2Var.a.M();
                if (zzaqrVarM != null) {
                    bundle.putString("sdk_version", zzaqrVarM.toString());
                }
            } finally {
            }
        } catch (pl2 unused) {
        }
        try {
            try {
                zzaqr zzaqrVarO = zl2Var.a.O();
                if (zzaqrVarO != null) {
                    bundle.putString("adapter_version", zzaqrVarO.toString());
                }
            } finally {
            }
        } catch (pl2 unused2) {
        }
        return bundle;
    }

    @Override // defpackage.qd2
    public final aw2<c92> a() {
        String str = (String) os3.j.f.a(y40.U0);
        int i = at2.a;
        if ((str == null || str.isEmpty()) || this.d.a.get() || !this.c.b) {
            return vt2.j(new c92(new Bundle(), null));
        }
        this.d.a.set(true);
        return this.a.y(new Callable(this) { // from class: i92
            public final e92 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                e92 e92Var = this.e;
                Objects.requireNonNull(e92Var);
                List<String> listAsList = Arrays.asList(((String) os3.j.f.a(y40.U0)).split(";"));
                Bundle bundle = new Bundle();
                for (String str2 : listAsList) {
                    try {
                        zl2 zl2VarB = e92Var.b.b(str2, new JSONObject());
                        zl2VarB.a();
                        bundle.putBundle(str2, e92.b(zl2VarB));
                    } catch (pl2 unused) {
                    }
                }
                return new c92(bundle, null);
            }
        });
    }
}
