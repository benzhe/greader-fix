package defpackage;

import defpackage.rk7;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* loaded from: classes2.dex */
public interface yp7 extends rk7.a {
    public static final a d = a.a;

    public static final class a implements rk7.b<yp7> {
        public static final /* synthetic */ a a = new a();

        static {
            int i = CoroutineExceptionHandler.c;
        }
    }

    lp7 f(boolean z, boolean z2, pl7<? super Throwable, yj7> pl7Var);

    CancellationException g();

    boolean isActive();

    boolean start();
}
