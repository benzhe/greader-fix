package defpackage;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class zk7 {

    public static final class a {
        public static final Method a;

        /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
        static {
            /*
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableMethods"
                defpackage.im7.d(r1, r2)
                int r2 = r1.length
                r3 = 0
                r4 = 0
            Le:
                java.lang.String r5 = "it"
                r6 = 0
                if (r4 >= r2) goto L47
                r7 = r1[r4]
                defpackage.im7.d(r7, r5)
                java.lang.String r8 = r7.getName()
                java.lang.String r9 = "addSuppressed"
                boolean r8 = defpackage.im7.a(r8, r9)
                r9 = 1
                if (r8 == 0) goto L3f
                java.lang.Class[] r8 = r7.getParameterTypes()
                java.lang.String r10 = "it.parameterTypes"
                defpackage.im7.d(r8, r10)
                java.lang.String r10 = "$this$singleOrNull"
                defpackage.im7.e(r8, r10)
                int r10 = r8.length
                if (r10 != r9) goto L38
                r6 = r8[r3]
            L38:
                boolean r6 = defpackage.im7.a(r6, r0)
                if (r6 == 0) goto L3f
                goto L40
            L3f:
                r9 = 0
            L40:
                if (r9 == 0) goto L44
                r6 = r7
                goto L47
            L44:
                int r4 = r4 + 1
                goto Le
            L47:
                zk7.a.a = r6
                int r0 = r1.length
            L4a:
                if (r3 >= r0) goto L61
                r2 = r1[r3]
                defpackage.im7.d(r2, r5)
                java.lang.String r2 = r2.getName()
                java.lang.String r4 = "getSuppressed"
                boolean r2 = defpackage.im7.a(r2, r4)
                if (r2 == 0) goto L5e
                goto L61
            L5e:
                int r3 = r3 + 1
                goto L4a
            L61:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: zk7.a.<clinit>():void");
        }
    }

    public void a(Throwable th, Throwable th2) {
        im7.e(th, "cause");
        im7.e(th2, "exception");
        Method method = a.a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public zm7 b() {
        return new ym7();
    }
}
