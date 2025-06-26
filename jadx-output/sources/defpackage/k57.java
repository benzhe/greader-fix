package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class k57 {
    public static final Logger c = Logger.getLogger(k57.class.getName());
    public final String a;
    public final AtomicLong b;

    public final class b {
        public final long a;

        public b(long j, a aVar) {
            this.a = j;
        }
    }

    public k57(String str, long j) {
        AtomicLong atomicLong = new AtomicLong();
        this.b = atomicLong;
        c50.t(j > 0, "value must be positive");
        this.a = str;
        atomicLong.set(j);
    }
}
