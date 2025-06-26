package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class l57 implements p77 {
    public final AtomicLong a = new AtomicLong();

    @Override // defpackage.p77
    public void a(long j) {
        this.a.getAndAdd(j);
    }
}
