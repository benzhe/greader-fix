package defpackage;

import defpackage.su2;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class mv2<V> extends nv2<V> implements su2.j<V> {
    @Override // defpackage.su2, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (V) super.get(j, timeUnit);
    }
}
