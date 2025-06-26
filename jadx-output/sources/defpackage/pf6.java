package defpackage;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final class pf6 implements ee6 {
    public final ne6 e;
    public final jd6 f;
    public final ve6 g;
    public final jf6 h;
    public final bg6 i = bg6.a;

    public static final class a<T> extends de6<T> {
        public final af6<T> a;
        public final Map<String, b> b;

        public a(af6<T> af6Var, Map<String, b> map) {
            this.a = af6Var;
            this.b = map;
        }

        @Override // defpackage.de6
        public T a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            T tA = this.a.a();
            try {
                eg6Var.b();
                while (eg6Var.m()) {
                    b bVar = this.b.get(eg6Var.C());
                    if (bVar == null || !bVar.c) {
                        eg6Var.g0();
                    } else {
                        bVar.a(eg6Var, tA);
                    }
                }
                eg6Var.g();
                return tA;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new be6(e2);
            }
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, T t) throws IOException {
            if (t == null) {
                gg6Var.m();
                return;
            }
            gg6Var.c();
            try {
                for (b bVar : this.b.values()) {
                    if (bVar.c(t)) {
                        gg6Var.i(bVar.a);
                        bVar.b(gg6Var, t);
                    }
                }
                gg6Var.g();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    public static abstract class b {
        public final String a;
        public final boolean b;
        public final boolean c;

        public b(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.c = z2;
        }

        public abstract void a(eg6 eg6Var, Object obj) throws IllegalAccessException, IOException;

        public abstract void b(gg6 gg6Var, Object obj) throws IllegalAccessException, IOException;

        public abstract boolean c(Object obj) throws IllegalAccessException, IOException;
    }

    public pf6(ne6 ne6Var, jd6 jd6Var, ve6 ve6Var, jf6 jf6Var) {
        this.e = ne6Var;
        this.f = jd6Var;
        this.g = ve6Var;
        this.h = jf6Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.reflect.Field r6, boolean r7) {
        /*
            r5 = this;
            ve6 r0 = r5.g
            java.lang.Class r1 = r6.getType()
            boolean r2 = r0.d(r1)
            r3 = 1
            r4 = 0
            if (r2 != 0) goto L17
            boolean r1 = r0.c(r1, r7)
            if (r1 == 0) goto L15
            goto L17
        L15:
            r1 = 0
            goto L18
        L17:
            r1 = 1
        L18:
            if (r1 != 0) goto L63
            int r1 = r6.getModifiers()
            r1 = r1 & 136(0x88, float:1.9E-43)
            if (r1 == 0) goto L23
            goto L5d
        L23:
            boolean r1 = r6.isSynthetic()
            if (r1 == 0) goto L2a
            goto L5d
        L2a:
            java.lang.Class r1 = r6.getType()
            boolean r1 = r0.d(r1)
            if (r1 == 0) goto L35
            goto L5d
        L35:
            if (r7 == 0) goto L3a
            java.util.List<gd6> r7 = r0.e
            goto L3c
        L3a:
            java.util.List<gd6> r7 = r0.f
        L3c:
            boolean r0 = r7.isEmpty()
            if (r0 != 0) goto L5f
            hd6 r0 = new hd6
            r0.<init>(r6)
            java.util.Iterator r6 = r7.iterator()
        L4b:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L5f
            java.lang.Object r7 = r6.next()
            gd6 r7 = (defpackage.gd6) r7
            boolean r7 = r7.a(r0)
            if (r7 == 0) goto L4b
        L5d:
            r6 = 1
            goto L60
        L5f:
            r6 = 0
        L60:
            if (r6 != 0) goto L63
            goto L64
        L63:
            r3 = 0
        L64:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pf6.a(java.lang.reflect.Field, boolean):boolean");
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    @Override // defpackage.ee6
    public <T> defpackage.de6<T> b(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r35v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:405)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */
}
