package defpackage;

import android.content.Context;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ku1 implements cb3<aw2<String>> {
    public final mb3<d23> a;
    public final mb3<Context> b;
    public final mb3<zv2> c;

    public ku1(mb3<d23> mb3Var, mb3<Context> mb3Var2, mb3<zv2> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        final d23 d23Var = this.a.get();
        final Context context = this.b.get();
        aw2 aw2VarY = this.c.get().y(new Callable(d23Var, context) { // from class: hu1
            public final d23 e;
            public final Context f;

            {
                this.e = d23Var;
                this.f = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                d23 d23Var2 = this.e;
                return d23Var2.b.zzb(this.f);
            }
        });
        Objects.requireNonNull(aw2VarY, "Cannot return null from a non-@Nullable @Provides method");
        return aw2VarY;
    }
}
