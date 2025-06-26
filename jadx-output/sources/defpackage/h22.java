package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class h22 implements cb3<e22> {
    public final mb3<Context> a;
    public final mb3<ji1> b;
    public final mb3<Executor> c;

    public h22(mb3<Context> mb3Var, mb3<ji1> mb3Var2, mb3<Executor> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new e22(this.a.get(), this.b.get(), this.c.get());
    }
}
