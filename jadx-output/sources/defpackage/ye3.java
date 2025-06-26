package defpackage;

import android.os.Handler;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ye3 {
    public final Handler a;
    public final ze3 b;

    public ye3(Handler handler, ze3 ze3Var) {
        if (ze3Var != null) {
            Objects.requireNonNull(handler);
        } else {
            handler = null;
        }
        this.a = handler;
        this.b = ze3Var;
    }

    public final void a(xf3 xf3Var) {
        if (this.b != null) {
            this.a.post(new ff3(this, xf3Var));
        }
    }
}
