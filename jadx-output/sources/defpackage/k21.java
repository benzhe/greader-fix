package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class k21 implements kb0<Object> {
    public final /* synthetic */ l21 a;

    public k21(l21 l21Var) {
        this.a = l21Var;
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        if (l21.b(this.a, map)) {
            this.a.c.execute(new Runnable(this) { // from class: n21
                public final k21 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.a.d.d();
                }
            });
        }
    }
}
