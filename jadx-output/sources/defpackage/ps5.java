package defpackage;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ps5 extends ts5 {
    public final Map<tp5, os5> b = new HashMap();
    public final ns5 c = new ns5();
    public final rs5 d = new rs5(this);
    public final qs5 e = new qs5(this);
    public xs5 f;
    public boolean g;

    @Override // defpackage.ts5
    public sr5 a() {
        return this.c;
    }

    @Override // defpackage.ts5
    public ss5 b(tp5 tp5Var) {
        os5 os5Var = this.b.get(tp5Var);
        if (os5Var != null) {
            return os5Var;
        }
        os5 os5Var2 = new os5(this);
        this.b.put(tp5Var, os5Var2);
        return os5Var2;
    }

    @Override // defpackage.ts5
    public xs5 c() {
        return this.f;
    }

    @Override // defpackage.ts5
    public zs5 d() {
        return this.e;
    }

    @Override // defpackage.ts5
    public tt5 e() {
        return this.d;
    }

    @Override // defpackage.ts5
    public boolean f() {
        return this.g;
    }

    @Override // defpackage.ts5
    public <T> T g(String str, rx5<T> rx5Var) {
        this.f.c();
        try {
            return rx5Var.get();
        } finally {
            this.f.b();
        }
    }

    @Override // defpackage.ts5
    public void h(String str, Runnable runnable) {
        this.f.c();
        try {
            runnable.run();
        } finally {
            this.f.b();
        }
    }

    @Override // defpackage.ts5
    public void i() {
        bx5.c(!this.g, "MemoryPersistence double-started!", new Object[0]);
        this.g = true;
    }
}
