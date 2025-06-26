package defpackage;

import android.content.Context;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class oe2 implements qd2<ke2> {
    public final qm0 a;
    public final Context b;
    public final String c;
    public final zv2 d;

    public oe2(qm0 qm0Var, Context context, String str, zv2 zv2Var) {
        this.a = qm0Var;
        this.b = context;
        this.c = str;
        this.d = zv2Var;
    }

    @Override // defpackage.qd2
    public final aw2<ke2> a() {
        return this.d.y(new Callable(this) { // from class: ne2
            public final oe2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                oe2 oe2Var = this.e;
                Objects.requireNonNull(oe2Var);
                JSONObject jSONObject = new JSONObject();
                qm0 qm0Var = oe2Var.a;
                if (qm0Var != null) {
                    qm0Var.a(oe2Var.b, oe2Var.c, jSONObject);
                }
                return new ke2(jSONObject);
            }
        });
    }
}
