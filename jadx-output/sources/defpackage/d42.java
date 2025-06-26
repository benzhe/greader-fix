package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class d42 implements cb3<w32> {
    public final mb3<Context> a;
    public final mb3<Executor> b;
    public final mb3<gp1> c;

    public d42(mb3<Context> mb3Var, mb3<Executor> mb3Var2, mb3<gp1> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new w32(this.a.get(), this.b.get(), this.c.get());
    }
}
