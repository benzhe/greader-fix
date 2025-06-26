package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class v20 extends t20 {
    public final Callable<String> e;

    public v20(Callable callable, w20 w20Var) {
        super(false, null, null);
        this.e = callable;
    }

    @Override // defpackage.t20
    public final String b() {
        try {
            return this.e.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
