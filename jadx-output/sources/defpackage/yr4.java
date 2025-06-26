package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class yr4 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ long f;
    public final /* synthetic */ xu4 g;

    public yr4(xu4 xu4Var, String str, long j) {
        this.g = xu4Var;
        this.e = str;
        this.f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Object objValueOf;
        xu4 xu4Var = this.g;
        String str = this.e;
        long j = this.f;
        xu4Var.d();
        bi.g(str);
        if (xu4Var.c.isEmpty()) {
            xu4Var.d = j;
        }
        Integer num = xu4Var.c.get(str);
        if (num != null) {
            map = xu4Var.c;
            objValueOf = Integer.valueOf(num.intValue() + 1);
        } else if (xu4Var.c.size() >= 100) {
            xu4Var.a.a().i.a("Too many ads visible");
            return;
        } else {
            xu4Var.c.put(str, 1);
            map = xu4Var.b;
            objValueOf = Long.valueOf(j);
        }
        map.put(str, objValueOf);
    }
}
