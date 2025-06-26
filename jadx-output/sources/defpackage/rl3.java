package defpackage;

import android.os.Handler;
import java.util.Objects;

/* loaded from: classes.dex */
public final class rl3 {
    public final Handler a;
    public final sl3 b;

    public rl3(Handler handler, sl3 sl3Var) {
        if (sl3Var != null) {
            Objects.requireNonNull(handler);
        } else {
            handler = null;
        }
        this.a = handler;
        this.b = sl3Var;
    }

    public final void a(int i, int i2, int i3, float f) {
        if (this.b != null) {
            this.a.post(new yl3(this, i, i2, i3, f));
        }
    }
}
