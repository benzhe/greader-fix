package defpackage;

import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
public final class ti1 implements kb0<Object> {
    public WeakReference<ri1> a;

    public ti1(ri1 ri1Var, qi1 qi1Var) {
        this.a = new WeakReference<>(ri1Var);
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        ri1 ri1Var = this.a.get();
        if (ri1Var != null && "_ac".equals(map.get("eventName"))) {
            ri1Var.h.D0(aa1.a);
        }
    }
}
