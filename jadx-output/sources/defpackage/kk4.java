package defpackage;

import defpackage.mk4;
import defpackage.pk4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class kk4<T extends mk4<T>> {
    public static final kk4 d = new kk4(true);
    public final pm4<T, Object> a;
    public boolean b;
    public boolean c;

    public kk4(boolean z) {
        int i = pm4.k;
        this.a = new rm4(0);
        h();
        h();
    }

    public static int a(mk4<?> mk4Var, Object obj) {
        qn4 qn4VarB = mk4Var.b();
        int iA = mk4Var.a();
        if (!mk4Var.d()) {
            return b(qn4VarB, iA, obj);
        }
        int iB = 0;
        if (mk4Var.h()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iB += g(qn4VarB, it.next());
            }
            return ck4.C(iA) + iB + ck4.K(iB);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iB += b(qn4VarB, iA, it2.next());
        }
        return iB;
    }

    public static int b(qn4 qn4Var, int i, Object obj) {
        int iC = ck4.C(i);
        if (qn4Var == qn4.p) {
            am4 am4Var = (am4) obj;
            if (am4Var instanceof oj4) {
            }
            iC <<= 1;
        }
        return g(qn4Var, obj) + iC;
    }

    public static Object d(Object obj) {
        if (obj instanceof fm4) {
            return ((fm4) obj).a();
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
    /* JADX WARN: Removed duplicated region for block: B:19:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(defpackage.qn4 r1, java.lang.Object r2) {
        /*
            java.nio.charset.Charset r0 = defpackage.rk4.a
            java.util.Objects.requireNonNull(r2)
            int[] r0 = defpackage.jk4.a
            tn4 r1 = r1.e
            int r1 = r1.ordinal()
            r1 = r0[r1]
            switch(r1) {
                case 1: goto L3e;
                case 2: goto L3b;
                case 3: goto L38;
                case 4: goto L35;
                case 5: goto L32;
                case 6: goto L2f;
                case 7: goto L25;
                case 8: goto L1c;
                case 9: goto L13;
                default: goto L12;
            }
        L12:
            goto L41
        L13:
            boolean r1 = r2 instanceof defpackage.am4
            if (r1 != 0) goto L2d
            boolean r1 = r2 instanceof defpackage.bl4
            if (r1 == 0) goto L41
            goto L2d
        L1c:
            boolean r1 = r2 instanceof java.lang.Integer
            if (r1 != 0) goto L2d
            boolean r1 = r2 instanceof defpackage.tk4
            if (r1 == 0) goto L41
            goto L2d
        L25:
            boolean r1 = r2 instanceof defpackage.vj4
            if (r1 != 0) goto L2d
            boolean r1 = r2 instanceof byte[]
            if (r1 == 0) goto L41
        L2d:
            r1 = 1
            goto L42
        L2f:
            boolean r1 = r2 instanceof java.lang.String
            goto L42
        L32:
            boolean r1 = r2 instanceof java.lang.Boolean
            goto L42
        L35:
            boolean r1 = r2 instanceof java.lang.Double
            goto L42
        L38:
            boolean r1 = r2 instanceof java.lang.Float
            goto L42
        L3b:
            boolean r1 = r2 instanceof java.lang.Long
            goto L42
        L3e:
            boolean r1 = r2 instanceof java.lang.Integer
            goto L42
        L41:
            r1 = 0
        L42:
            if (r1 == 0) goto L45
            return
        L45:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "Wrong object type used with protocol message reflection."
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kk4.e(qn4, java.lang.Object):void");
    }

    public static <T extends mk4<T>> boolean f(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.c() == tn4.MESSAGE) {
            if (key.d()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((am4) it.next()).e()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof am4)) {
                    if (value instanceof bl4) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((am4) value).e()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int g(qn4 qn4Var, Object obj) {
        int i;
        int iK;
        switch (jk4.b[qn4Var.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                Logger logger = ck4.b;
                return 8;
            case 2:
                ((Float) obj).floatValue();
                Logger logger2 = ck4.b;
                return 4;
            case 3:
                return ck4.E(((Long) obj).longValue());
            case 4:
                return ck4.E(((Long) obj).longValue());
            case 5:
                return ck4.G(((Integer) obj).intValue());
            case 6:
                ((Long) obj).longValue();
                Logger logger3 = ck4.b;
                return 8;
            case 7:
                ((Integer) obj).intValue();
                Logger logger4 = ck4.b;
                return 4;
            case 8:
                ((Boolean) obj).booleanValue();
                Logger logger5 = ck4.b;
                return 1;
            case 9:
                Logger logger6 = ck4.b;
                return ((am4) obj).i();
            case 10:
                if (!(obj instanceof bl4)) {
                    Logger logger7 = ck4.b;
                    i = ((am4) obj).i();
                    iK = ck4.K(i);
                    break;
                } else {
                    Logger logger8 = ck4.b;
                    i = ((bl4) obj).a();
                    iK = ck4.K(i);
                    break;
                }
            case 11:
                return obj instanceof vj4 ? ck4.o((vj4) obj) : ck4.p((String) obj);
            case 12:
                if (!(obj instanceof vj4)) {
                    Logger logger9 = ck4.b;
                    i = ((byte[]) obj).length;
                    iK = ck4.K(i);
                    break;
                } else {
                    return ck4.o((vj4) obj);
                }
            case 13:
                return ck4.K(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger10 = ck4.b;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger11 = ck4.b;
                return 8;
            case 16:
                return ck4.N(((Integer) obj).intValue());
            case 17:
                return ck4.J(((Long) obj).longValue());
            case 18:
                return obj instanceof tk4 ? ck4.G(((tk4) obj).a()) : ck4.G(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return iK + i;
    }

    public static int k(Map.Entry<T, Object> entry) {
        int iL;
        int iK;
        int i;
        int iK2;
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.c() != tn4.MESSAGE || key.d() || key.h()) {
            return a(key, value);
        }
        if (value instanceof bl4) {
            int iA = entry.getKey().a();
            iL = ck4.L(2, iA) + (ck4.K(8) << 1);
            iK = ck4.K(24);
            i = ((bl4) value).a();
            iK2 = ck4.K(i);
        } else {
            int iA2 = entry.getKey().a();
            iL = ck4.L(2, iA2) + (ck4.K(8) << 1);
            iK = ck4.K(24);
            i = ((am4) value).i();
            iK2 = ck4.K(i);
        }
        return iK2 + i + iK + iL;
    }

    public final Object c(T t) {
        Object obj = this.a.get(t);
        if (!(obj instanceof bl4)) {
            return obj;
        }
        int i = bl4.c;
        throw new NoSuchMethodError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        kk4 kk4Var = new kk4();
        for (int i = 0; i < this.a.e(); i++) {
            Map.Entry<K, Object> entryD = this.a.d(i);
            kk4Var.i((mk4) entryD.getKey(), entryD.getValue());
        }
        Iterator it = this.a.g().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            kk4Var.i((mk4) entry.getKey(), entry.getValue());
        }
        kk4Var.c = this.c;
        return kk4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof kk4) {
            return this.a.equals(((kk4) obj).a);
        }
        return false;
    }

    public final void h() {
        if (this.b) {
            return;
        }
        this.a.c();
        this.b = true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final void i(T t, Object obj) {
        if (!t.d()) {
            e(t.b(), obj);
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
                e(t.b(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof bl4) {
            this.c = true;
        }
        this.a.put(t, obj);
    }

    public final void j(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof bl4) {
            int i = bl4.c;
            throw new NoSuchMethodError();
        }
        if (key.d()) {
            Object objC = c(key);
            if (objC == null) {
                objC = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objC).add(d(it.next()));
            }
            this.a.put(key, objC);
            return;
        }
        if (key.c() != tn4.MESSAGE) {
            this.a.put(key, d(value));
            return;
        }
        Object objC2 = c(key);
        if (objC2 == null) {
            this.a.put(key, d(value));
        } else {
            this.a.put(key, objC2 instanceof fm4 ? key.A((fm4) objC2, (fm4) value) : ((pk4.b) key.s(((am4) objC2).r(), (am4) value)).j());
        }
    }

    public final Iterator<Map.Entry<T, Object>> l() {
        return this.c ? new gl4(this.a.entrySet().iterator()) : this.a.entrySet().iterator();
    }

    public final boolean m() {
        for (int i = 0; i < this.a.e(); i++) {
            if (!f(this.a.d(i))) {
                return false;
            }
        }
        Iterator it = this.a.g().iterator();
        while (it.hasNext()) {
            if (!f((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public kk4() {
        int i = pm4.k;
        this.a = new rm4(16);
    }
}
