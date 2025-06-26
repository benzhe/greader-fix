package defpackage;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class jl3 {
    public final Executor a;

    public jl3(Handler handler) {
        this.a = new ho3(handler);
    }

    public final void a(j40<?> j40Var, c90<?> c90Var) {
        j40Var.zzk();
        j40Var.zzc("post-response");
        this.a.execute(new jn3(j40Var, c90Var, null));
    }
}
