package defpackage;

import defpackage.gl1;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class pc3 implements Callable {
    public final xb3 e;
    public final gl1.b f;

    public pc3(xb3 xb3Var, gl1.b bVar) {
        this.e = xb3Var;
        this.f = bVar;
    }

    /*  JADX ERROR: StackOverflowError in pass: MethodInvokeVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:99)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:114)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:120)
        */
    @Override // java.util.concurrent.Callable
    public final java.lang.Object call() throws java.lang.Exception {
        /*
            r6 = this;
            xb3 r0 = r6.e
            java.util.concurrent.Future r0 = r0.k
            if (r0 == 0) goto L9
            r0.get()
        L9:
            xb3 r0 = r6.e
            gl1 r0 = r0.j
            if (r0 == 0) goto L26
            gl1$b r1 = r6.f     // Catch: java.lang.Throwable -> L26
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L26
            gl1$b r2 = r6.f     // Catch: java.lang.Throwable -> L23
            byte[] r0 = r0.b()     // Catch: java.lang.Throwable -> L23
            e63 r3 = defpackage.e63.a()     // Catch: java.lang.Throwable -> L23
            r4 = 0
            int r5 = r0.length     // Catch: java.lang.Throwable -> L23
            r2.k(r0, r4, r5, r3)     // Catch: java.lang.Throwable -> L23
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L23
            goto L26
        L23:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L23
            throw r0     // Catch: java.lang.Throwable -> L26 java.lang.Throwable -> L26
        L26:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pc3.call():java.lang.Object");
    }
}
