package defpackage;

import java.io.File;

/* loaded from: classes2.dex */
public class jz6 implements Runnable {
    public final /* synthetic */ nz6 e;
    public final /* synthetic */ kz6 f;

    public jz6(kz6 kz6Var, nz6 nz6Var) {
        this.f = kz6Var;
        this.e = nz6Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        File fileA = this.f.a.j.a(this.e.m);
        boolean z = fileA != null && fileA.exists();
        this.f.b();
        if (z) {
            this.f.c.execute(this.e);
        } else {
            this.f.b.execute(this.e);
        }
    }
}
