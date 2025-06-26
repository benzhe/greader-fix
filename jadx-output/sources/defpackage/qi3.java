package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class qi3 implements Runnable {
    public final /* synthetic */ IOException e;
    public final /* synthetic */ mi3 f;

    public qi3(mi3 mi3Var, IOException iOException) {
        this.f = mi3Var;
        this.e = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ti3 ti3Var = this.f.i;
        IOException iOException = this.e;
        cv0 cv0Var = (cv0) ti3Var;
        mv0 mv0Var = cv0Var.o;
        if (mv0Var != null) {
            if (cv0Var.j.k) {
                mv0Var.c("onLoadException", iOException);
            } else {
                mv0Var.d("onLoadError", iOException);
            }
        }
    }
}
