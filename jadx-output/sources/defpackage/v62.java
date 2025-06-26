package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class v62 implements c72<f61> {
    public final /* synthetic */ w62 a;

    public v62(w62 w62Var) {
        this.a = w62Var;
    }

    @Override // defpackage.c72
    public final void a() {
        synchronized (this.a) {
            Objects.requireNonNull(this.a);
        }
    }

    @Override // defpackage.c72
    public final void onSuccess(f61 f61Var) {
        f61 f61Var2 = f61Var;
        synchronized (this.a) {
            Objects.requireNonNull(this.a);
            this.a.c = f61Var2.f;
            f61Var2.b();
        }
    }
}
