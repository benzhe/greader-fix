package defpackage;

import android.util.Log;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class dh5 implements d45<pm5, Void> {
    public final /* synthetic */ String a;
    public final /* synthetic */ jm5 b;
    public final /* synthetic */ Executor c;
    public final /* synthetic */ gh5 d;

    public dh5(gh5 gh5Var, String str, jm5 jm5Var, Executor executor) {
        this.d = gh5Var;
        this.a = str;
        this.b = jm5Var;
        this.c = executor;
    }

    @Override // defpackage.d45
    public e45<Void> a(pm5 pm5Var) throws Exception {
        try {
            gh5.a(this.d, pm5Var, this.a, this.b, this.c, true);
            return null;
        } catch (Exception e) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "Error performing auto configuration.", e);
            }
            throw e;
        }
    }
}
