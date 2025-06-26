package defpackage;

import defpackage.gl1;

/* loaded from: classes.dex */
public final class ed3 extends id3 {
    public ed3(xb3 xb3Var, String str, String str2, gl1.b bVar, int i) {
        super(xb3Var, str, str2, bVar, i, 48);
    }

    /*  JADX ERROR: StackOverflowError in pass: MethodInvokeVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:99)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:114)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:120)
        */
    @Override // defpackage.id3
    public final void a() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            r4 = this;
            gl1$b r0 = r4.h
            kw1 r1 = defpackage.kw1.ENUM_FAILURE
            r0.s(r1)
            java.lang.reflect.Method r0 = r4.i
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            xb3 r2 = r4.e
            android.content.Context r2 = r2.a
            r3 = 0
            r1[r3] = r2
            r2 = 0
            java.lang.Object r0 = r0.invoke(r2, r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            gl1$b r1 = r4.h
            monitor-enter(r1)
            if (r0 == 0) goto L2b
            gl1$b r0 = r4.h     // Catch: java.lang.Throwable -> L34
            kw1 r2 = defpackage.kw1.ENUM_TRUE     // Catch: java.lang.Throwable -> L34
            r0.s(r2)     // Catch: java.lang.Throwable -> L34
            goto L32
        L2b:
            gl1$b r0 = r4.h     // Catch: java.lang.Throwable -> L34
            kw1 r2 = defpackage.kw1.ENUM_FALSE     // Catch: java.lang.Throwable -> L34
            r0.s(r2)     // Catch: java.lang.Throwable -> L34
        L32:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            return
        L34:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ed3.a():void");
    }
}
