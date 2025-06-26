package defpackage;

import defpackage.t84;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class u84<T extends t84<T>> {
    public static final u84 d = new u84(true);
    public final xa4<T, Object> a;
    public boolean b;
    public boolean c;

    public u84() {
        this.a = new qa4(16);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(T r4, java.lang.Object r5) {
        /*
            rb4 r0 = r4.b()
            java.nio.charset.Charset r1 = defpackage.j94.a
            java.util.Objects.requireNonNull(r5)
            rb4 r1 = defpackage.rb4.f
            sb4 r1 = defpackage.sb4.INT
            sb4 r0 = r0.e
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L3d;
                case 1: goto L3a;
                case 2: goto L37;
                case 3: goto L34;
                case 4: goto L31;
                case 5: goto L2e;
                case 6: goto L25;
                case 7: goto L1c;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L42
        L17:
            boolean r0 = r5 instanceof defpackage.da4
            if (r0 == 0) goto L42
            goto L41
        L1c:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L41
            boolean r0 = r5 instanceof defpackage.e94
            if (r0 == 0) goto L42
            goto L41
        L25:
            boolean r0 = r5 instanceof defpackage.g84
            if (r0 != 0) goto L41
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L42
            goto L41
        L2e:
            boolean r0 = r5 instanceof java.lang.String
            goto L3f
        L31:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L3f
        L34:
            boolean r0 = r5 instanceof java.lang.Double
            goto L3f
        L37:
            boolean r0 = r5 instanceof java.lang.Float
            goto L3f
        L3a:
            boolean r0 = r5 instanceof java.lang.Long
            goto L3f
        L3d:
            boolean r0 = r5 instanceof java.lang.Integer
        L3f:
            if (r0 == 0) goto L42
        L41:
            return
        L42:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            int r3 = r4.a()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            r2 = 1
            rb4 r4 = r4.b()
            sb4 r4 = r4.e
            r1[r2] = r4
            r4 = 2
            java.lang.Class r5 = r5.getClass()
            java.lang.String r5 = r5.getName()
            r1[r4] = r5
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r4 = java.lang.String.format(r4, r1)
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u84.b(t84, java.lang.Object):void");
    }

    public final void a(T t, Object obj) {
        if (!t.c()) {
            b(t, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                b(t, arrayList.get(i));
            }
            obj = arrayList;
        }
        this.a.put(t, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object clone() throws CloneNotSupportedException {
        u84 u84Var = new u84();
        for (int i = 0; i < this.a.b(); i++) {
            Map.Entry<K, Object> entryC = this.a.c(i);
            u84Var.a((t84) entryC.getKey(), entryC.getValue());
        }
        xa4<T, Object> xa4Var = this.a;
        for (Map.Entry entry : xa4Var.g.isEmpty() ? ta4.b : xa4Var.g.entrySet()) {
            u84Var.a((t84) entry.getKey(), entry.getValue());
        }
        u84Var.c = this.c;
        return u84Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof u84) {
            return this.a.equals(((u84) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public u84(boolean z) {
        qa4 qa4Var = new qa4(0);
        this.a = qa4Var;
        if (!this.b) {
            qa4Var.a();
            this.b = true;
        }
        if (this.b) {
            return;
        }
        qa4Var.a();
        this.b = true;
    }
}
