package defpackage;

import defpackage.bd6;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class lu5 {
    public static final bd6 a;
    public static final bd6 b;

    static {
        bd6.b bVarZ = bd6.Z();
        bVarZ.s(Double.NaN);
        a = bVarZ.l();
        bd6.b bVarZ2 = bd6.Z();
        hk6 hk6Var = hk6.NULL_VALUE;
        bVarZ2.o();
        bd6.J((bd6) bVarZ2.f, hk6Var);
        b = bVarZ2.l();
    }

    public static void a(StringBuilder sb, bd6 bd6Var) {
        boolean z = true;
        switch (bd6Var.Y()) {
            case NULL_VALUE:
                sb.append("null");
                return;
            case BOOLEAN_VALUE:
                sb.append(bd6Var.O());
                return;
            case INTEGER_VALUE:
                sb.append(bd6Var.T());
                return;
            case DOUBLE_VALUE:
                sb.append(bd6Var.R());
                return;
            case TIMESTAMP_VALUE:
                wk6 wk6VarX = bd6Var.X();
                sb.append(String.format("time(%s,%s)", Long.valueOf(wk6VarX.G()), Integer.valueOf(wk6VarX.F())));
                return;
            case STRING_VALUE:
                sb.append(bd6Var.W());
                return;
            case BYTES_VALUE:
                sb.append(vx5.e(bd6Var.P()));
                return;
            case REFERENCE_VALUE:
                bx5.c(k(bd6Var), "Value should be a ReferenceValue", new Object[0]);
                sb.append(bu5.k(bd6Var.V()));
                return;
            case GEO_POINT_VALUE:
                jl6 jl6VarS = bd6Var.S();
                sb.append(String.format("geo(%s,%s)", Double.valueOf(jl6VarS.F()), Double.valueOf(jl6VarS.G())));
                return;
            case ARRAY_VALUE:
                jc6 jc6VarN = bd6Var.N();
                sb.append("[");
                for (int i = 0; i < jc6VarN.I(); i++) {
                    a(sb, jc6VarN.H(i));
                    if (i != jc6VarN.I() - 1) {
                        sb.append(",");
                    }
                }
                sb.append("]");
                return;
            case MAP_VALUE:
                wc6 wc6VarU = bd6Var.U();
                ArrayList arrayList = new ArrayList(wc6VarU.F().keySet());
                Collections.sort(arrayList);
                sb.append("{");
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (z) {
                        z = false;
                    } else {
                        sb.append(",");
                    }
                    sb.append(str);
                    sb.append(":");
                    a(sb, wc6VarU.H(str));
                }
                sb.append(StringSubstitutor.DEFAULT_VAR_END);
                return;
            default:
                StringBuilder sbZ = jo.z("Invalid value type: ");
                sbZ.append(bd6Var.Y());
                bx5.a(sbZ.toString(), new Object[0]);
                throw null;
        }
    }

    public static int b(bd6 bd6Var, bd6 bd6Var2) {
        int iL = l(bd6Var);
        int iL2 = l(bd6Var2);
        if (iL != iL2) {
            return vx5.b(iL, iL2);
        }
        int i = 1;
        int i2 = 0;
        switch (iL) {
            case 0:
                return 0;
            case 1:
                boolean zO = bd6Var.O();
                boolean zO2 = bd6Var2.O();
                Comparator comparator = vx5.a;
                if (zO == zO2) {
                    return 0;
                }
                return zO ? 1 : -1;
            case 2:
                bd6.c cVar = bd6.c.INTEGER_VALUE;
                bd6.c cVarY = bd6Var.Y();
                bd6.c cVar2 = bd6.c.DOUBLE_VALUE;
                if (cVarY == cVar2) {
                    double dR = bd6Var.R();
                    if (bd6Var2.Y() == cVar2) {
                        double dR2 = bd6Var2.R();
                        Comparator comparator2 = vx5.a;
                        return c50.V(dR, dR2);
                    }
                    if (bd6Var2.Y() == cVar) {
                        return vx5.c(dR, bd6Var2.T());
                    }
                } else if (bd6Var.Y() == cVar) {
                    long jT = bd6Var.T();
                    if (bd6Var2.Y() == cVar) {
                        long jT2 = bd6Var2.T();
                        Comparator comparator3 = vx5.a;
                        if (jT < jT2) {
                            i = -1;
                        } else if (jT <= jT2) {
                            i = 0;
                        }
                        return i;
                    }
                    if (bd6Var2.Y() == cVar2) {
                        return vx5.c(bd6Var2.R(), jT) * (-1);
                    }
                }
                bx5.a("Unexpected values: %s vs %s", bd6Var, bd6Var2);
                throw null;
            case 3:
                return c(bd6Var.X(), bd6Var2.X());
            case 4:
                return c(c50.g0(bd6Var), c50.g0(bd6Var2));
            case 5:
                return bd6Var.W().compareTo(bd6Var2.W());
            case 6:
                return vx5.a(bd6Var.P(), bd6Var2.P());
            case 7:
                String strV = bd6Var.V();
                String strV2 = bd6Var2.V();
                String[] strArrSplit = strV.split("/", -1);
                String[] strArrSplit2 = strV2.split("/", -1);
                int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
                while (i2 < iMin) {
                    int iCompareTo = strArrSplit[i2].compareTo(strArrSplit2[i2]);
                    if (iCompareTo != 0) {
                        return iCompareTo;
                    }
                    i2++;
                }
                return vx5.b(strArrSplit.length, strArrSplit2.length);
            case 8:
                jl6 jl6VarS = bd6Var.S();
                jl6 jl6VarS2 = bd6Var2.S();
                double dF = jl6VarS.F();
                double dF2 = jl6VarS2.F();
                Comparator comparator4 = vx5.a;
                int iV = c50.V(dF, dF2);
                return iV == 0 ? c50.V(jl6VarS.G(), jl6VarS2.G()) : iV;
            case 9:
                jc6 jc6VarN = bd6Var.N();
                jc6 jc6VarN2 = bd6Var2.N();
                int iMin2 = Math.min(jc6VarN.I(), jc6VarN2.I());
                while (i2 < iMin2) {
                    int iB = b(jc6VarN.H(i2), jc6VarN2.H(i2));
                    if (iB != 0) {
                        return iB;
                    }
                    i2++;
                }
                return vx5.b(jc6VarN.I(), jc6VarN2.I());
            case 10:
                wc6 wc6VarU = bd6Var.U();
                wc6 wc6VarU2 = bd6Var2.U();
                Iterator it = new TreeMap(wc6VarU.F()).entrySet().iterator();
                Iterator it2 = new TreeMap(wc6VarU2.F()).entrySet().iterator();
                while (it.hasNext() && it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    Map.Entry entry2 = (Map.Entry) it2.next();
                    int iCompareTo2 = ((String) entry.getKey()).compareTo((String) entry2.getKey());
                    if (iCompareTo2 != 0) {
                        return iCompareTo2;
                    }
                    int iB2 = b((bd6) entry.getValue(), (bd6) entry2.getValue());
                    if (iB2 != 0) {
                        return iB2;
                    }
                }
                boolean zHasNext = it.hasNext();
                boolean zHasNext2 = it2.hasNext();
                Comparator comparator5 = vx5.a;
                if (zHasNext == zHasNext2) {
                    i = 0;
                } else if (!zHasNext) {
                    i = -1;
                }
                return i;
            default:
                bx5.a(jo.g("Invalid value type: ", iL), new Object[0]);
                throw null;
        }
    }

    public static int c(wk6 wk6Var, wk6 wk6Var2) {
        long jG = wk6Var.G();
        long jG2 = wk6Var2.G();
        Comparator comparator = vx5.a;
        int i = jG < jG2 ? -1 : jG > jG2 ? 1 : 0;
        return i != 0 ? i : vx5.b(wk6Var.F(), wk6Var2.F());
    }

    public static boolean d(kc6 kc6Var, bd6 bd6Var) {
        Iterator<bd6> it = kc6Var.i().iterator();
        while (it.hasNext()) {
            if (e(it.next(), bd6Var)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e(defpackage.bd6 r5, defpackage.bd6 r6) {
        /*
            r0 = 1
            if (r5 != 0) goto L6
            if (r6 != 0) goto L6
            return r0
        L6:
            r1 = 0
            if (r5 == 0) goto Lef
            if (r6 != 0) goto Ld
            goto Lef
        Ld:
            int r2 = l(r5)
            int r3 = l(r6)
            if (r2 == r3) goto L18
            return r1
        L18:
            r3 = 2
            if (r2 == r3) goto Lae
            r3 = 4
            if (r2 == r3) goto La1
            r3 = 9
            if (r2 == r3) goto L73
            r3 = 10
            if (r2 == r3) goto L2b
            boolean r5 = r5.equals(r6)
            return r5
        L2b:
            wc6 r5 = r5.U()
            wc6 r6 = r6.U()
            int r2 = r5.E()
            int r3 = r6.E()
            if (r2 == r3) goto L3f
        L3d:
            r0 = 0
            goto L72
        L3f:
            java.util.Map r5 = r5.F()
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L4b:
            boolean r2 = r5.hasNext()
            if (r2 == 0) goto L72
            java.lang.Object r2 = r5.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.util.Map r3 = r6.F()
            java.lang.Object r4 = r2.getKey()
            java.lang.Object r3 = r3.get(r4)
            bd6 r3 = (defpackage.bd6) r3
            java.lang.Object r2 = r2.getValue()
            bd6 r2 = (defpackage.bd6) r2
            boolean r2 = e(r2, r3)
            if (r2 != 0) goto L4b
            goto L3d
        L72:
            return r0
        L73:
            jc6 r5 = r5.N()
            jc6 r6 = r6.N()
            int r2 = r5.I()
            int r3 = r6.I()
            if (r2 == r3) goto L87
        L85:
            r0 = 0
            goto La0
        L87:
            r2 = 0
        L88:
            int r3 = r5.I()
            if (r2 >= r3) goto La0
            bd6 r3 = r5.H(r2)
            bd6 r4 = r6.H(r2)
            boolean r3 = e(r3, r4)
            if (r3 != 0) goto L9d
            goto L85
        L9d:
            int r2 = r2 + 1
            goto L88
        La0:
            return r0
        La1:
            wk6 r5 = defpackage.c50.g0(r5)
            wk6 r6 = defpackage.c50.g0(r6)
            boolean r5 = r5.equals(r6)
            return r5
        Lae:
            bd6$c r2 = r5.Y()
            bd6$c r3 = bd6.c.INTEGER_VALUE
            if (r2 != r3) goto Lcc
            bd6$c r2 = r6.Y()
            if (r2 != r3) goto Lcc
            long r2 = r5.T()
            long r5 = r6.T()
            int r4 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r4 != 0) goto Lc9
            goto Lca
        Lc9:
            r0 = 0
        Lca:
            r1 = r0
            goto Lef
        Lcc:
            bd6$c r2 = r5.Y()
            bd6$c r3 = bd6.c.DOUBLE_VALUE
            if (r2 != r3) goto Lef
            bd6$c r2 = r6.Y()
            if (r2 != r3) goto Lef
            double r2 = r5.R()
            long r2 = java.lang.Double.doubleToLongBits(r2)
            double r5 = r6.R()
            long r5 = java.lang.Double.doubleToLongBits(r5)
            int r4 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r4 != 0) goto Lc9
            goto Lca
        Lef:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lu5.e(bd6, bd6):boolean");
    }

    public static boolean f(bd6 bd6Var) {
        return bd6Var != null && bd6Var.Y() == bd6.c.ARRAY_VALUE;
    }

    public static boolean g(bd6 bd6Var) {
        return bd6Var != null && bd6Var.Y() == bd6.c.DOUBLE_VALUE;
    }

    public static boolean h(bd6 bd6Var) {
        return bd6Var != null && bd6Var.Y() == bd6.c.INTEGER_VALUE;
    }

    public static boolean i(bd6 bd6Var) {
        return bd6Var != null && bd6Var.Y() == bd6.c.MAP_VALUE;
    }

    public static boolean j(bd6 bd6Var) {
        return h(bd6Var) || g(bd6Var);
    }

    public static boolean k(bd6 bd6Var) {
        return bd6Var != null && bd6Var.Y() == bd6.c.REFERENCE_VALUE;
    }

    public static int l(bd6 bd6Var) {
        switch (bd6Var.Y()) {
            case NULL_VALUE:
                return 0;
            case BOOLEAN_VALUE:
                return 1;
            case INTEGER_VALUE:
            case DOUBLE_VALUE:
                return 2;
            case TIMESTAMP_VALUE:
                return 3;
            case STRING_VALUE:
                return 5;
            case BYTES_VALUE:
                return 6;
            case REFERENCE_VALUE:
                return 7;
            case GEO_POINT_VALUE:
                return 8;
            case ARRAY_VALUE:
                return 9;
            case MAP_VALUE:
                return c50.o0(bd6Var) ? 4 : 10;
            default:
                StringBuilder sbZ = jo.z("Invalid value type: ");
                sbZ.append(bd6Var.Y());
                bx5.a(sbZ.toString(), new Object[0]);
                throw null;
        }
    }
}
