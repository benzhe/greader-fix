package defpackage;

import android.content.Context;
import defpackage.sf5;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class bh4 {
    public static final sf5<?> b;
    public final a a;

    public interface a {
    }

    static {
        sf5.b bVarA = sf5.a(bh4.class);
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.a(new ig5(kh6.class, 1, 0));
        bVarA.a(new ig5(a.class, 1, 0));
        bVarA.d(dh4.a);
        b = bVarA.b();
    }

    public bh4(Context context, final kh6 kh6Var, a aVar) {
        new HashMap();
        new HashMap();
        context.getPackageName();
        dh6.a(context);
        this.a = aVar;
        gh6.a().b(ah4.e);
        gh6 gh6VarA = gh6.a();
        kh6Var.getClass();
        gh6VarA.b(new Callable(kh6Var) { // from class: ch4
            public final kh6 e;

            {
                this.e = kh6Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.e.a();
            }
        });
    }
}
