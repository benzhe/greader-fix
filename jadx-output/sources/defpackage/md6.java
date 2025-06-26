package defpackage;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class md6 extends de6<AtomicLong> {
    public final /* synthetic */ de6 a;

    public md6(de6 de6Var) {
        this.a = de6Var;
    }

    @Override // defpackage.de6
    public AtomicLong a(eg6 eg6Var) throws IOException {
        return new AtomicLong(((Number) this.a.a(eg6Var)).longValue());
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, AtomicLong atomicLong) throws IOException {
        this.a.b(gg6Var, Long.valueOf(atomicLong.get()));
    }
}
