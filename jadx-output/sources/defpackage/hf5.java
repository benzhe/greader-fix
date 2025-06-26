package defpackage;

import defpackage.bf5;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class hf5 implements df5 {
    public final Set<String> a;
    public final bf5.b b;
    public final xr4 c;
    public final gf5 d;

    public hf5(xr4 xr4Var, bf5.b bVar) {
        this.b = bVar;
        this.c = xr4Var;
        gf5 gf5Var = new gf5(this);
        this.d = gf5Var;
        xr4Var.a(gf5Var);
        this.a = new HashSet();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059 A[EDGE_INSN: B:24:0x0059->B:27:0x0062 BREAK  A[LOOP:1: B:18:0x004a->B:25:0x005b]] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0090 A[EDGE_INSN: B:43:0x0090->B:45:0x0098 BREAK  A[LOOP:2: B:37:0x0081->B:44:0x0092]] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0010 A[SYNTHETIC] */
    @Override // defpackage.df5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.Set<java.lang.String> r11) {
        /*
            r10 = this;
            java.util.Set<java.lang.String> r0 = r10.a
            r0.clear()
            java.util.Set<java.lang.String> r0 = r10.a
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r11 = r11.iterator()
        L10:
            boolean r2 = r11.hasNext()
            if (r2 == 0) goto La6
            java.lang.Object r2 = r11.next()
            java.lang.String r2 = (java.lang.String) r2
            int r3 = r1.size()
            r4 = 50
            if (r3 < r4) goto L26
            goto La6
        L26:
            java.util.Set<java.lang.String> r3 = defpackage.ff5.a
            r3 = 95
            r4 = 1
            r5 = 0
            if (r2 != 0) goto L2f
            goto L59
        L2f:
            int r6 = r2.length()
            if (r6 != 0) goto L36
            goto L59
        L36:
            int r6 = r2.codePointAt(r5)
            boolean r7 = java.lang.Character.isLetter(r6)
            if (r7 != 0) goto L42
            if (r6 != r3) goto L59
        L42:
            int r7 = r2.length()
            int r6 = java.lang.Character.charCount(r6)
        L4a:
            if (r6 >= r7) goto L61
            int r8 = r2.codePointAt(r6)
            if (r8 == r3) goto L5b
            boolean r9 = java.lang.Character.isLetterOrDigit(r8)
            if (r9 == 0) goto L59
            goto L5b
        L59:
            r6 = 0
            goto L62
        L5b:
            int r8 = java.lang.Character.charCount(r8)
            int r6 = r6 + r8
            goto L4a
        L61:
            r6 = 1
        L62:
            if (r6 == 0) goto L10
            if (r2 != 0) goto L67
            goto L90
        L67:
            int r6 = r2.length()
            if (r6 != 0) goto L6e
            goto L90
        L6e:
            int r6 = r2.codePointAt(r5)
            boolean r7 = java.lang.Character.isLetter(r6)
            if (r7 != 0) goto L79
            goto L90
        L79:
            int r7 = r2.length()
            int r6 = java.lang.Character.charCount(r6)
        L81:
            if (r6 >= r7) goto L98
            int r8 = r2.codePointAt(r6)
            if (r8 == r3) goto L92
            boolean r9 = java.lang.Character.isLetterOrDigit(r8)
            if (r9 == 0) goto L90
            goto L92
        L90:
            r4 = 0
            goto L98
        L92:
            int r8 = java.lang.Character.charCount(r8)
            int r6 = r6 + r8
            goto L81
        L98:
            if (r4 == 0) goto L10
            java.lang.String r3 = defpackage.oy4.b(r2)
            if (r3 == 0) goto La1
            r2 = r3
        La1:
            r1.add(r2)
            goto L10
        La6:
            r0.addAll(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hf5.a(java.util.Set):void");
    }
}
