package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public class oz6 implements Runnable {
    public final /* synthetic */ nz6 e;

    public oz6(nz6 nz6Var) {
        this.e = nz6Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        nz6 nz6Var = this.e;
        l07 l07Var = nz6Var.r;
        String str = nz6Var.m;
        nz6Var.o.b();
        Objects.requireNonNull(l07Var);
    }
}
