package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class rs1 implements fp2 {
    public final ks1 f;
    public final b20 g;
    public final Map<ap2, Long> e = new HashMap();
    public final Map<ap2, qs1> h = new HashMap();

    public rs1(ks1 ks1Var, Set<qs1> set, b20 b20Var) {
        this.f = ks1Var;
        for (qs1 qs1Var : set) {
            this.h.put(qs1Var.c, qs1Var);
        }
        this.g = b20Var;
    }

    @Override // defpackage.fp2
    public final void A(ap2 ap2Var, String str) {
        this.e.put(ap2Var, Long.valueOf(this.g.b()));
    }

    @Override // defpackage.fp2
    public final void C(ap2 ap2Var, String str) {
        if (this.e.containsKey(ap2Var)) {
            long jB = this.g.b() - this.e.get(ap2Var).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f.a;
            String strValueOf = String.valueOf(str);
            String strConcat = strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task.");
            String strValueOf2 = String.valueOf(Long.toString(jB));
            concurrentHashMap.put(strConcat, strValueOf2.length() != 0 ? "s.".concat(strValueOf2) : new String("s."));
        }
        if (this.h.containsKey(ap2Var)) {
            a(ap2Var, true);
        }
    }

    public final void a(ap2 ap2Var, boolean z) {
        ap2 ap2Var2 = this.h.get(ap2Var).b;
        String str = z ? "s." : "f.";
        if (this.e.containsKey(ap2Var2)) {
            long jB = this.g.b() - this.e.get(ap2Var2).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f.a;
            String strValueOf = String.valueOf(this.h.get(ap2Var).a);
            String strConcat = strValueOf.length() != 0 ? "label.".concat(strValueOf) : new String("label.");
            String strValueOf2 = String.valueOf(Long.toString(jB));
            concurrentHashMap.put(strConcat, strValueOf2.length() != 0 ? str.concat(strValueOf2) : new String(str));
        }
    }

    @Override // defpackage.fp2
    public final void d(ap2 ap2Var, String str, Throwable th) {
        if (this.e.containsKey(ap2Var)) {
            long jB = this.g.b() - this.e.get(ap2Var).longValue();
            ConcurrentHashMap<String, String> concurrentHashMap = this.f.a;
            String strValueOf = String.valueOf(str);
            String strConcat = strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task.");
            String strValueOf2 = String.valueOf(Long.toString(jB));
            concurrentHashMap.put(strConcat, strValueOf2.length() != 0 ? "f.".concat(strValueOf2) : new String("f."));
        }
        if (this.h.containsKey(ap2Var)) {
            a(ap2Var, false);
        }
    }

    @Override // defpackage.fp2
    public final void z(ap2 ap2Var, String str) {
    }
}
