package defpackage;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes2.dex */
public final class t78 extends ScheduledThreadPoolExecutor {
    public static volatile t78 e;

    public t78() {
        super(1, new ThreadPoolExecutor.DiscardPolicy());
    }
}
