package defpackage;

import defpackage.t57;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class x57 extends f67 {
    public final /* synthetic */ x47 f;
    public final /* synthetic */ i47 g;
    public final /* synthetic */ t57.b h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x57(t57.b bVar, db7 db7Var, x47 x47Var, i47 i47Var) {
        super(t57.this.e);
        this.h = bVar;
        this.f = x47Var;
        this.g = i47Var;
    }

    @Override // defpackage.f67
    public void a() {
        fb7 fb7Var = t57.this.b;
        cb7 cb7Var = eb7.a;
        Objects.requireNonNull(cb7Var);
        Objects.requireNonNull(cb7Var);
        try {
            t57.b bVar = this.h;
            if (!bVar.b) {
                t57.b.f(bVar, this.f, this.g);
            }
            fb7 fb7Var2 = t57.this.b;
            Objects.requireNonNull(cb7Var);
        } catch (Throwable th) {
            fb7 fb7Var3 = t57.this.b;
            Objects.requireNonNull(eb7.a);
            throw th;
        }
    }
}
