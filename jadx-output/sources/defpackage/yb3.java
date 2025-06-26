package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.Objects;

/* loaded from: classes.dex */
public final class yb3 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ xb3 g;

    public yb3(xb3 xb3Var, int i, boolean z) {
        this.g = xb3Var;
        this.e = i;
        this.f = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        gl1 gl1VarW4;
        xb3 xb3Var = this.g;
        int i = this.e;
        boolean z = this.f;
        Objects.requireNonNull(xb3Var);
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        boolean z2 = false;
        try {
            PackageInfo packageInfo = xb3Var.a.getPackageManager().getPackageInfo(xb3Var.a.getPackageName(), 0);
            Context context = xb3Var.a;
            gl1VarW4 = c50.w4(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused2) {
            gl1VarW4 = null;
        }
        this.g.j = gl1VarW4;
        if (this.e < 4 && (gl1VarW4 == null || !gl1VarW4.P() || gl1VarW4.M().equals("0000000000000000000000000000000000000000000000000000000000000000") || !gl1VarW4.T() || !gl1VarW4.U().x() || gl1VarW4.U().y() == -2)) {
            z2 = true;
        }
        if (z2) {
            this.g.c(this.e + 1, this.f);
        }
    }
}
