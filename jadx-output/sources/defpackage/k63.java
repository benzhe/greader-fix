package defpackage;

import defpackage.m63;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class k63<T extends m63<T>> {
    public static final k63 d = new k63(true);
    public final b93<T, Object> a;
    public boolean b;
    public boolean c;

    public k63(boolean z) {
        int i = b93.k;
        this.a = new a93(0);
        j();
        j();
    }

    public static int c(ba3 ba3Var, int i, Object obj) {
        int iG = b63.G(i);
        if (ba3Var == ba3.p) {
            e83 e83Var = (e83) obj;
            if (e83Var instanceof d53) {
            }
            iG <<= 1;
        }
        return d(ba3Var, obj) + iG;
    }

    public static int d(ba3 ba3Var, Object obj) {
        int iG;
        int I;
        switch (j63.b[ba3Var.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                Logger logger = b63.b;
                return 8;
            case 2:
                ((Float) obj).floatValue();
                Logger logger2 = b63.b;
                return 4;
            case 3:
                return b63.z(((Long) obj).longValue());
            case 4:
                return b63.z(((Long) obj).longValue());
            case 5:
                return b63.H(((Integer) obj).intValue());
            case 6:
                ((Long) obj).longValue();
                Logger logger3 = b63.b;
                return 8;
            case 7:
                ((Integer) obj).intValue();
                Logger logger4 = b63.b;
                return 4;
            case 8:
                ((Boolean) obj).booleanValue();
                Logger logger5 = b63.b;
                return 1;
            case 9:
                Logger logger6 = b63.b;
                return ((e83) obj).g();
            case 10:
                if (!(obj instanceof f73)) {
                    Logger logger7 = b63.b;
                    iG = ((e83) obj).g();
                    I = b63.I(iG);
                    break;
                } else {
                    Logger logger8 = b63.b;
                    iG = ((f73) obj).b();
                    I = b63.I(iG);
                    break;
                }
            case 11:
                return obj instanceof k53 ? b63.l((k53) obj) : b63.O((String) obj);
            case 12:
                if (!(obj instanceof k53)) {
                    Logger logger9 = b63.b;
                    iG = ((byte[]) obj).length;
                    I = b63.I(iG);
                    break;
                } else {
                    return b63.l((k53) obj);
                }
            case 13:
                return b63.I(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger10 = b63.b;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger11 = b63.b;
                return 8;
            case 16:
                return b63.J(((Integer) obj).intValue());
            case 17:
                return b63.A(((Long) obj).longValue());
            case 18:
                return obj instanceof w63 ? b63.H(((w63) obj).f()) : b63.H(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return I + iG;
    }

    public static Object g(Object obj) {
        if (obj instanceof h83) {
            return ((h83) obj).C();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void h(T r5, java.lang.Object r6) {
        /*
            ba3 r0 = r5.J()
            java.nio.charset.Charset r1 = defpackage.u63.a
            java.util.Objects.requireNonNull(r6)
            int[] r1 = defpackage.j63.a
            ea3 r0 = r0.e
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 0
            r2 = 1
            switch(r0) {
                case 1: goto L44;
                case 2: goto L41;
                case 3: goto L3e;
                case 4: goto L3b;
                case 5: goto L38;
                case 6: goto L35;
                case 7: goto L2b;
                case 8: goto L22;
                case 9: goto L19;
                default: goto L18;
            }
        L18:
            goto L47
        L19:
            boolean r0 = r6 instanceof defpackage.e83
            if (r0 != 0) goto L33
            boolean r0 = r6 instanceof defpackage.f73
            if (r0 == 0) goto L47
            goto L33
        L22:
            boolean r0 = r6 instanceof java.lang.Integer
            if (r0 != 0) goto L33
            boolean r0 = r6 instanceof defpackage.w63
            if (r0 == 0) goto L47
            goto L33
        L2b:
            boolean r0 = r6 instanceof defpackage.k53
            if (r0 != 0) goto L33
            boolean r0 = r6 instanceof byte[]
            if (r0 == 0) goto L47
        L33:
            r0 = 1
            goto L48
        L35:
            boolean r0 = r6 instanceof java.lang.String
            goto L48
        L38:
            boolean r0 = r6 instanceof java.lang.Boolean
            goto L48
        L3b:
            boolean r0 = r6 instanceof java.lang.Double
            goto L48
        L3e:
            boolean r0 = r6 instanceof java.lang.Float
            goto L48
        L41:
            boolean r0 = r6 instanceof java.lang.Long
            goto L48
        L44:
            boolean r0 = r6 instanceof java.lang.Integer
            goto L48
        L47:
            r0 = 0
        L48:
            if (r0 == 0) goto L4b
            return
        L4b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            int r4 = r5.f()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r1] = r4
            ba3 r5 = r5.J()
            ea3 r5 = r5.e
            r3[r2] = r5
            r5 = 2
            java.lang.Class r6 = r6.getClass()
            java.lang.String r6 = r6.getName()
            r3[r5] = r6
            java.lang.String r5 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r5 = java.lang.String.format(r5, r3)
            r0.<init>(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k63.h(m63, java.lang.Object):void");
    }

    public static <T extends m63<T>> boolean i(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.E() == ea3.MESSAGE) {
            if (key.n()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((e83) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof e83)) {
                    if (value instanceof f73) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((e83) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int k(m63<?> m63Var, Object obj) {
        ba3 ba3VarJ = m63Var.J();
        int iF = m63Var.f();
        if (!m63Var.n()) {
            return c(ba3VarJ, iF, obj);
        }
        int iC = 0;
        if (m63Var.r()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iC += d(ba3VarJ, it.next());
            }
            return b63.G(iF) + iC + b63.I(iC);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iC += c(ba3VarJ, iF, it2.next());
        }
        return iC;
    }

    public static int m(Map.Entry<T, Object> entry) {
        int iK;
        int I;
        int iG;
        int I2;
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.E() != ea3.MESSAGE || key.n() || key.r()) {
            return k(key, value);
        }
        if (value instanceof f73) {
            int iF = entry.getKey().f();
            iK = b63.k(2, iF) + (b63.I(8) << 1);
            I = b63.I(24);
            iG = ((f73) value).b();
            I2 = b63.I(iG);
        } else {
            int iF2 = entry.getKey().f();
            iK = b63.k(2, iF2) + (b63.I(8) << 1);
            I = b63.I(24);
            iG = ((e83) value).g();
            I2 = b63.I(iG);
        }
        return I2 + iG + I + iK;
    }

    public final boolean a() {
        for (int i = 0; i < this.a.d(); i++) {
            if (!i(this.a.h(i))) {
                return false;
            }
        }
        Iterator it = this.a.e().iterator();
        while (it.hasNext()) {
            if (!i((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<T, Object>> b() {
        return this.c ? new k73(this.a.entrySet().iterator()) : this.a.entrySet().iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        k63 k63Var = new k63();
        for (int i = 0; i < this.a.d(); i++) {
            Map.Entry<K, Object> entryH = this.a.h(i);
            k63Var.f((m63) entryH.getKey(), entryH.getValue());
        }
        Iterator it = this.a.e().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            k63Var.f((m63) entry.getKey(), entry.getValue());
        }
        k63Var.c = this.c;
        return k63Var;
    }

    public final Object e(T t) {
        Object obj = this.a.get(t);
        if (!(obj instanceof f73)) {
            return obj;
        }
        int i = f73.c;
        throw new NoSuchMethodError();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k63) {
            return this.a.equals(((k63) obj).a);
        }
        return false;
    }

    public final void f(T t, Object obj) {
        if (!t.n()) {
            h(t, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                h(t, obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof f73) {
            this.c = true;
        }
        this.a.put(t, obj);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final void j() {
        if (this.b) {
            return;
        }
        this.a.c();
        this.b = true;
    }

    public final void l(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof f73) {
            int i = f73.c;
            throw new NoSuchMethodError();
        }
        if (key.n()) {
            Object objE = e(key);
            if (objE == null) {
                objE = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objE).add(g(it.next()));
            }
            this.a.put(key, objE);
            return;
        }
        if (key.E() != ea3.MESSAGE) {
            this.a.put(key, g(value));
            return;
        }
        Object objE2 = e(key);
        if (objE2 == null) {
            this.a.put(key, g(value));
        } else {
            this.a.put(key, objE2 instanceof h83 ? key.H((h83) objE2, (h83) value) : key.B(((e83) objE2).c(), (e83) value).j());
        }
    }

    public k63() {
        int i = b93.k;
        this.a = new a93(16);
    }
}
