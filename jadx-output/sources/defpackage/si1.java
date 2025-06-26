package defpackage;

import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
public final class si1 implements kb0<Object> {
    public WeakReference<ri1> a;

    public si1(ri1 ri1Var, qi1 qi1Var) {
        this.a = new WeakReference<>(ri1Var);
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        ri1 ri1Var = this.a.get();
        if (ri1Var == null) {
            return;
        }
        ri1Var.h.D0(aa1.a);
    }
}
