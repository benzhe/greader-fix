package defpackage;

import defpackage.mx3;
import defpackage.sx3;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class jx3<FieldDescriptorType extends mx3<FieldDescriptorType>> {
    public static final jx3 d = new jx3(true);
    public final qz3<FieldDescriptorType, Object> a;
    public boolean b;
    public boolean c = false;

    public jx3() {
        int i = qz3.k;
        this.a = new rz3(16);
    }

    public static int d(p04 p04Var, int i, Object obj) {
        int iX = zw3.X(i);
        if (p04Var == p04.p) {
            Charset charset = ux3.a;
            iX <<= 1;
        }
        return h(p04Var, obj) + iX;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0011. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void f(defpackage.p04 r2, java.lang.Object r3) {
        /*
            java.nio.charset.Charset r0 = defpackage.ux3.a
            java.util.Objects.requireNonNull(r3)
            int[] r0 = defpackage.kx3.a
            u04 r2 = r2.e
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L41;
                case 2: goto L3e;
                case 3: goto L3b;
                case 4: goto L38;
                case 5: goto L35;
                case 6: goto L32;
                case 7: goto L29;
                case 8: goto L20;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L44
        L15:
            boolean r2 = r3 instanceof defpackage.xy3
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof defpackage.by3
            if (r2 == 0) goto L1e
            goto L43
        L1e:
            r0 = 0
            goto L43
        L20:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof defpackage.vx3
            if (r2 == 0) goto L1e
            goto L43
        L29:
            boolean r2 = r3 instanceof defpackage.sw3
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L1e
            goto L43
        L32:
            boolean r0 = r3 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r3 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r3 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r3 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r3 instanceof java.lang.Integer
        L43:
            r1 = r0
        L44:
            if (r1 == 0) goto L47
            return
        L47:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jx3.f(p04, java.lang.Object):void");
    }

    public static int g(mx3<?> mx3Var, Object obj) {
        p04 p04VarM = mx3Var.m();
        int iC = mx3Var.c();
        if (!mx3Var.j()) {
            return d(p04VarM, iC, obj);
        }
        int iD = 0;
        List list = (List) obj;
        if (mx3Var.e()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iD += h(p04VarM, it.next());
            }
            return zw3.X(iC) + iD + zw3.Z(iD);
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            iD += d(p04VarM, iC, it2.next());
        }
        return iD;
    }

    public static int h(p04 p04Var, Object obj) {
        int iO;
        int iZ;
        switch (kx3.b[p04Var.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                Logger logger = zw3.b;
                return 8;
            case 2:
                ((Float) obj).floatValue();
                Logger logger2 = zw3.b;
                return 4;
            case 3:
                return zw3.H(((Long) obj).longValue());
            case 4:
                return zw3.H(((Long) obj).longValue());
            case 5:
                return zw3.Y(((Integer) obj).intValue());
            case 6:
            case 15:
                ((Long) obj).longValue();
                Logger logger3 = zw3.b;
                return 8;
            case 7:
            case 14:
                ((Integer) obj).intValue();
                Logger logger22 = zw3.b;
                return 4;
            case 8:
                ((Boolean) obj).booleanValue();
                Logger logger4 = zw3.b;
                return 1;
            case 9:
                Logger logger5 = zw3.b;
                return ((xy3) obj).o();
            case 10:
                if (obj instanceof by3) {
                    Logger logger6 = zw3.b;
                    iO = ((by3) obj).a();
                    iZ = zw3.Z(iO);
                } else {
                    Logger logger7 = zw3.b;
                    iO = ((xy3) obj).o();
                    iZ = zw3.Z(iO);
                }
                return iZ + iO;
            case 11:
                return obj instanceof sw3 ? zw3.o((sw3) obj) : zw3.O((String) obj);
            case 12:
                if (obj instanceof sw3) {
                    return zw3.o((sw3) obj);
                }
                Logger logger8 = zw3.b;
                iO = ((byte[]) obj).length;
                iZ = zw3.Z(iO);
                return iZ + iO;
            case 13:
                return zw3.Z(((Integer) obj).intValue());
            case 16:
                return zw3.a0(((Integer) obj).intValue());
            case 17:
                return zw3.L(((Long) obj).longValue());
            case 18:
                return obj instanceof vx3 ? zw3.Y(((vx3) obj).c()) : zw3.Y(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static boolean i(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.v() == u04.MESSAGE) {
            boolean zJ = key.j();
            Object value = entry.getValue();
            if (zJ) {
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    if (!((xy3) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                if (!(value instanceof xy3)) {
                    if (value instanceof by3) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((xy3) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int k(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.v() != u04.MESSAGE || key.j() || key.e()) {
            return g(key, value);
        }
        boolean z = value instanceof by3;
        int iC = entry.getKey().c();
        if (!z) {
            return zw3.y(3, (xy3) value) + zw3.N(2, iC) + (zw3.X(1) << 1);
        }
        int iN = zw3.N(2, iC) + (zw3.X(1) << 1);
        int iX = zw3.X(3);
        int iA = ((by3) value).a();
        return zw3.Z(iA) + iA + iX + iN;
    }

    public static Object l(Object obj) {
        if (obj instanceof cz3) {
            return ((cz3) obj).d0();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public final boolean a() {
        return this.a.isEmpty();
    }

    public final boolean b() {
        for (int i = 0; i < this.a.e(); i++) {
            if (!i(this.a.c(i))) {
                return false;
            }
        }
        Iterator it = this.a.f().iterator();
        while (it.hasNext()) {
            if (!i((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> c() {
        return this.c ? new ey3(this.a.entrySet().iterator()) : this.a.entrySet().iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        jx3 jx3Var = new jx3();
        for (int i = 0; i < this.a.e(); i++) {
            Map.Entry<K, Object> entryC = this.a.c(i);
            jx3Var.e((mx3) entryC.getKey(), entryC.getValue());
        }
        Iterator it = this.a.f().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            jx3Var.e((mx3) entry.getKey(), entry.getValue());
        }
        jx3Var.c = this.c;
        return jx3Var;
    }

    public final void e(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.j()) {
            f(fielddescriptortype.m(), obj);
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
                f(fielddescriptortype.m(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof by3) {
            this.c = true;
        }
        this.a.put(fielddescriptortype, obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof jx3) {
            return this.a.equals(((jx3) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object, sx3] */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v15, types: [cz3] */
    public final void j(Map.Entry<FieldDescriptorType, Object> entry) {
        ?? Z;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof by3) {
            int i = by3.c;
            throw new NoSuchMethodError();
        }
        if (key.j()) {
            Object arrayList = this.a.get(key);
            if (arrayList instanceof by3) {
                int i2 = by3.c;
                throw new NoSuchMethodError();
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) arrayList).add(l(it.next()));
            }
            this.a.put(key, arrayList);
            return;
        }
        if (key.v() != u04.MESSAGE) {
            this.a.put(key, l(value));
            return;
        }
        Object obj = this.a.get(key);
        if (obj instanceof by3) {
            int i3 = by3.c;
            throw new NoSuchMethodError();
        }
        if (obj == null) {
            this.a.put(key, l(value));
            return;
        }
        if (obj instanceof cz3) {
            Z = key.z((cz3) obj, (cz3) value);
        } else {
            Z = (sx3) ((sx3.a) key.p(((xy3) obj).p(), (xy3) value)).e();
            boolean zE = true;
            byte bByteValue = ((Byte) Z.d(1, null, null)).byteValue();
            if (bByteValue != 1) {
                if (bByteValue == 0) {
                    zE = false;
                } else {
                    zE = iz3.c.b(Z).e(Z);
                    Z.d(2, zE ? Z : null, null);
                }
            }
            if (!zE) {
                throw new a04();
            }
        }
        this.a.put(key, Z);
    }

    public jx3(boolean z) {
        int i = qz3.k;
        rz3 rz3Var = new rz3(0);
        this.a = rz3Var;
        if (this.b) {
            return;
        }
        rz3Var.i();
        this.b = true;
    }
}
