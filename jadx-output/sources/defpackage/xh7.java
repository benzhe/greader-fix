package defpackage;

import defpackage.zb7;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
public final class xh7 extends zb7 {
    public static final zh7 b = new zh7("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())));
    public final ThreadFactory a = b;

    @Override // defpackage.zb7
    public zb7.b a() {
        return new yh7(this.a);
    }
}
