package defpackage;

import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class qk3 {
    public final ExecutorService a;
    public rk3<? extends pi3> b;
    public IOException c;

    public qk3(String str) {
        int i = el3.a;
        this.a = Executors.newSingleThreadExecutor(new gl3(str));
    }

    public final boolean a() {
        return this.b != null;
    }

    public final void b() throws IOException {
        IOException iOException = this.c;
        if (iOException != null) {
            throw iOException;
        }
        rk3<? extends pi3> rk3Var = this.b;
        if (rk3Var != null) {
            int i = rk3Var.g;
            IOException iOException2 = rk3Var.i;
            if (iOException2 != null && rk3Var.j > i) {
                throw iOException2;
            }
        }
    }
}
