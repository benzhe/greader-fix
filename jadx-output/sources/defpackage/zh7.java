package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class zh7 extends AtomicLong implements ThreadFactory {
    public final String e;
    public final int f;
    public final boolean g;

    public static final class a extends Thread {
        public a(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public zh7(String str) {
        this.e = str;
        this.f = 5;
        this.g = false;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        String str = this.e + '-' + incrementAndGet();
        Thread aVar = this.g ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.f);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public String toString() {
        return jo.s(jo.z("RxThreadFactory["), this.e, "]");
    }

    public zh7(String str, int i) {
        this.e = str;
        this.f = i;
        this.g = false;
    }

    public zh7(String str, int i, boolean z) {
        this.e = str;
        this.f = i;
        this.g = z;
    }
}
