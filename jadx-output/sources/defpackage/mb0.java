package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class mb0 implements kb0<xw0> {
    public final ob0 a;

    public mb0(ob0 ob0Var) {
        this.a = ob0Var;
    }

    @Override // defpackage.kb0
    public final void a(xw0 xw0Var, Map map) throws NumberFormatException {
        xw0 xw0Var2 = xw0Var;
        boolean zEquals = "1".equals(map.get("transparentBackground"));
        boolean zEquals2 = "1".equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            is0.zzc("Fail to parse float", e);
        }
        ob0 ob0Var = this.a;
        synchronized (ob0Var) {
            ob0Var.a = zEquals;
            ob0Var.d.set(true);
        }
        ob0 ob0Var2 = this.a;
        synchronized (ob0Var2) {
            ob0Var2.b = zEquals2;
            ob0Var2.c = f;
        }
        xw0Var2.v(zEquals);
    }
}
