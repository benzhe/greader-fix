package defpackage;

import cj6.a;
import defpackage.ak6;
import defpackage.gj6;
import defpackage.jj6;
import defpackage.mj6;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class cj6<T extends a<T>> {
    public static final cj6 d = new cj6(true);
    public final uk6<T, Object> a;
    public boolean b;
    public boolean c;

    public interface a<T extends a<T>> extends Comparable<T> {
        gl6 F();

        boolean G();

        int g();

        boolean o();

        fl6 q();

        ak6.a u(ak6.a aVar, ak6 ak6Var);
    }

    public cj6(boolean z) {
        int i = uk6.k;
        this.a = new tk6(0);
        l();
        l();
    }

    public static Object b(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int c(fl6 fl6Var, int i, Object obj) {
        int iY = ti6.y(i);
        if (fl6Var == fl6.p) {
            iY *= 2;
        }
        return d(fl6Var, obj) + iY;
    }

    public static int d(fl6 fl6Var, Object obj) {
        switch (fl6Var.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                Logger logger = ti6.b;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                Logger logger2 = ti6.b;
                return 4;
            case 2:
                return ti6.C(((Long) obj).longValue());
            case 3:
                return ti6.C(((Long) obj).longValue());
            case 4:
                return ti6.m(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                Logger logger3 = ti6.b;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                Logger logger4 = ti6.b;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                Logger logger5 = ti6.b;
                return 1;
            case 8:
                return obj instanceof qi6 ? ti6.e((qi6) obj) : ti6.x((String) obj);
            case 9:
                Logger logger6 = ti6.b;
                return ((ak6) obj).h();
            case 10:
                if (obj instanceof mj6) {
                    return ti6.o((mj6) obj);
                }
                Logger logger7 = ti6.b;
                return ti6.p(((ak6) obj).h());
            case 11:
                if (obj instanceof qi6) {
                    return ti6.e((qi6) obj);
                }
                Logger logger8 = ti6.b;
                return ti6.p(((byte[]) obj).length);
            case 12:
                return ti6.A(((Integer) obj).intValue());
            case 13:
                return obj instanceof jj6.a ? ti6.m(((jj6.a) obj).g()) : ti6.m(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger9 = ti6.b;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger10 = ti6.b;
                return 8;
            case 16:
                return ti6.t(((Integer) obj).intValue());
            case 17:
                return ti6.v(((Long) obj).longValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int e(a<?> aVar, Object obj) {
        fl6 fl6VarQ = aVar.q();
        int iG = aVar.g();
        if (!aVar.o()) {
            return c(fl6VarQ, iG, obj);
        }
        int iC = 0;
        if (aVar.G()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iC += d(fl6VarQ, it.next());
            }
            return ti6.y(iG) + iC + ti6.A(iC);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iC += c(fl6VarQ, iG, it2.next());
        }
        return iC;
    }

    public static <T extends a<T>> boolean j(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.F() == gl6.MESSAGE) {
            if (key.o()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((ak6) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof ak6)) {
                    if (value instanceof mj6) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((ak6) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void p(ti6 ti6Var, fl6 fl6Var, int i, Object obj) throws IOException {
        if (fl6Var == fl6.p) {
            ti6Var.Y(i, 3);
            ((ak6) obj).f(ti6Var);
            ti6Var.Y(i, 4);
            return;
        }
        ti6Var.Y(i, fl6Var.f);
        switch (fl6Var.ordinal()) {
            case 0:
                ti6Var.P(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                ti6Var.N(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                ti6Var.c0(((Long) obj).longValue());
                break;
            case 3:
                ti6Var.c0(((Long) obj).longValue());
                break;
            case 4:
                ti6Var.R(((Integer) obj).intValue());
                break;
            case 5:
                ti6Var.P(((Long) obj).longValue());
                break;
            case 6:
                ti6Var.N(((Integer) obj).intValue());
                break;
            case 7:
                ti6Var.H(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof qi6)) {
                    ti6Var.X((String) obj);
                    break;
                } else {
                    ti6Var.L((qi6) obj);
                    break;
                }
            case 9:
                ((ak6) obj).f(ti6Var);
                break;
            case 10:
                ti6Var.T((ak6) obj);
                break;
            case 11:
                if (!(obj instanceof qi6)) {
                    byte[] bArr = (byte[]) obj;
                    ti6Var.J(bArr, 0, bArr.length);
                    break;
                } else {
                    ti6Var.L((qi6) obj);
                    break;
                }
            case 12:
                ti6Var.a0(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof jj6.a)) {
                    ti6Var.R(((Integer) obj).intValue());
                    break;
                } else {
                    ti6Var.R(((jj6.a) obj).g());
                    break;
                }
            case 14:
                ti6Var.N(((Integer) obj).intValue());
                break;
            case 15:
                ti6Var.P(((Long) obj).longValue());
                break;
            case 16:
                ti6Var.a0(ti6.D(((Integer) obj).intValue()));
                break;
            case 17:
                ti6Var.c0(ti6.E(((Long) obj).longValue()));
                break;
        }
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public cj6<T> clone() {
        cj6<T> cj6Var = new cj6<>();
        for (int i = 0; i < this.a.d(); i++) {
            Map.Entry<K, Object> entryC = this.a.c(i);
            cj6Var.n((a) entryC.getKey(), entryC.getValue());
        }
        Iterator it = this.a.e().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            cj6Var.n((a) entry.getKey(), entry.getValue());
        }
        cj6Var.c = this.c;
        return cj6Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cj6) {
            return this.a.equals(((cj6) obj).a);
        }
        return false;
    }

    public Object f(T t) {
        Object obj = this.a.get(t);
        return obj instanceof mj6 ? ((mj6) obj).c() : obj;
    }

    public final int g(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.F() != gl6.MESSAGE || key.o() || key.G()) {
            return e(key, value);
        }
        if (value instanceof mj6) {
            int iG = entry.getKey().g();
            return ti6.o((mj6) value) + ti6.y(3) + ti6.z(2, iG) + (ti6.y(1) * 2);
        }
        int iG2 = entry.getKey().g();
        return ti6.p(((ak6) value).h()) + ti6.y(3) + ti6.z(2, iG2) + (ti6.y(1) * 2);
    }

    public boolean h() {
        return this.a.isEmpty();
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean i() {
        for (int i = 0; i < this.a.d(); i++) {
            if (!j(this.a.c(i))) {
                return false;
            }
        }
        Iterator it = this.a.e().iterator();
        while (it.hasNext()) {
            if (!j((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public Iterator<Map.Entry<T, Object>> k() {
        return this.c ? new mj6.c(this.a.entrySet().iterator()) : this.a.entrySet().iterator();
    }

    public void l() {
        if (this.b) {
            return;
        }
        this.a.g();
        this.b = true;
    }

    public final void m(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof mj6) {
            value = ((mj6) value).c();
        }
        if (key.o()) {
            Object objF = f(key);
            if (objF == null) {
                objF = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objF).add(b(it.next()));
            }
            this.a.put(key, objF);
            return;
        }
        if (key.F() != gl6.MESSAGE) {
            this.a.put(key, b(value));
            return;
        }
        Object objF2 = f(key);
        if (objF2 == null) {
            this.a.put(key, b(value));
        } else {
            this.a.put(key, ((gj6.a) key.u(((ak6) objF2).d(), (ak6) value)).l());
        }
    }

    public void n(T t, Object obj) {
        if (!t.o()) {
            o(t.q(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                o(t.q(), it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof mj6) {
            this.c = true;
        }
        this.a.put(t, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o(defpackage.fl6 r3, java.lang.Object r4) {
        /*
            r2 = this;
            java.nio.charset.Charset r0 = defpackage.jj6.a
            java.util.Objects.requireNonNull(r4)
            gl6 r3 = r3.e
            int r3 = r3.ordinal()
            r0 = 1
            r1 = 0
            switch(r3) {
                case 0: goto L3e;
                case 1: goto L3b;
                case 2: goto L38;
                case 3: goto L35;
                case 4: goto L32;
                case 5: goto L2f;
                case 6: goto L23;
                case 7: goto L1a;
                case 8: goto L11;
                default: goto L10;
            }
        L10:
            goto L40
        L11:
            boolean r3 = r4 instanceof defpackage.ak6
            if (r3 != 0) goto L2d
            boolean r3 = r4 instanceof defpackage.mj6
            if (r3 == 0) goto L2c
            goto L2d
        L1a:
            boolean r3 = r4 instanceof java.lang.Integer
            if (r3 != 0) goto L2d
            boolean r3 = r4 instanceof jj6.a
            if (r3 == 0) goto L2c
            goto L2d
        L23:
            boolean r3 = r4 instanceof defpackage.qi6
            if (r3 != 0) goto L2d
            boolean r3 = r4 instanceof byte[]
            if (r3 == 0) goto L2c
            goto L2d
        L2c:
            r0 = 0
        L2d:
            r1 = r0
            goto L40
        L2f:
            boolean r1 = r4 instanceof java.lang.String
            goto L40
        L32:
            boolean r1 = r4 instanceof java.lang.Boolean
            goto L40
        L35:
            boolean r1 = r4 instanceof java.lang.Double
            goto L40
        L38:
            boolean r1 = r4 instanceof java.lang.Float
            goto L40
        L3b:
            boolean r1 = r4 instanceof java.lang.Long
            goto L40
        L3e:
            boolean r1 = r4 instanceof java.lang.Integer
        L40:
            if (r1 == 0) goto L43
            return
        L43:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "Wrong object type used with protocol message reflection."
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cj6.o(fl6, java.lang.Object):void");
    }

    public cj6() {
        int i = uk6.k;
        this.a = new tk6(16);
    }
}
