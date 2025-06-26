package defpackage;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class av1 implements cb3<yu1> {
    public final mb3<ScheduledExecutorService> a;
    public final mb3<ov1> b;
    public final mb3<mw1> c;

    public av1(mb3<ScheduledExecutorService> mb3Var, mb3<zv2> mb3Var2, mb3<ov1> mb3Var3, mb3<mw1> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var3;
        this.c = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new yu1(this.a.get(), yn2.a(), this.b.get(), db3.b(this.c));
    }
}
