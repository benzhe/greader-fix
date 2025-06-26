package defpackage;

import defpackage.r37;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class r37<T extends r37<T>> extends g47<T> {
    @Override // defpackage.g47
    public g47 b(long j, TimeUnit timeUnit) {
        ((d57) this).a.b(j, timeUnit);
        return this;
    }

    @Override // defpackage.g47
    public g47 c() {
        ((d57) this).a.c();
        return this;
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("delegate", ((d57) this).a);
        return nd5VarK0.toString();
    }
}
