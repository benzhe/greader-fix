package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public class fh5 implements w35<Void, Object> {
    public fh5(gh5 gh5Var) {
    }

    @Override // defpackage.w35
    public Object a(e45<Void> e45Var) throws Exception {
        if (e45Var.o()) {
            return null;
        }
        ah5 ah5Var = ah5.a;
        Exception excK = e45Var.k();
        if (!ah5Var.a(6)) {
            return null;
        }
        Log.e("FirebaseCrashlytics", "Error fetching settings.", excK);
        return null;
    }
}
