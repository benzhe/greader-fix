package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;

/* loaded from: classes.dex */
public abstract class ek {
    public static final String a = vj.e("WorkerFactory");

    public final ListenableWorker a(Context context, String str, WorkerParameters workerParameters) {
        try {
            try {
                return (ListenableWorker) Class.forName(str).asSubclass(ListenableWorker.class).getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Exception e) {
                vj.c().b(a, jo.n("Could not instantiate ", str), e);
                return null;
            }
        } catch (ClassNotFoundException unused) {
            vj.c().b(a, jo.n("Class not found: ", str), new Throwable[0]);
            return null;
        }
    }
}
