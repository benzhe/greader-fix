package defpackage;

import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class j7 implements Runnable {
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public j7(Object obj, Object obj2) {
        this.e = obj;
        this.f = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Method method = i7.d;
            if (method != null) {
                method.invoke(this.e, this.f, Boolean.FALSE, "AppCompat recreation");
            } else {
                i7.e.invoke(this.e, this.f, Boolean.FALSE);
            }
        } catch (RuntimeException e) {
            if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                throw e;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
        }
    }
}
