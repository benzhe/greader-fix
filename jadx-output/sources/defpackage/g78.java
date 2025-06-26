package defpackage;

import defpackage.j78;
import defpackage.k78;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class g78 extends k78 implements Serializable {
    public final long[] e;
    public final a58[] f;
    public final long[] g;
    public final q48[] h;
    public final a58[] i;
    public final j78[] j;
    public final ConcurrentMap<Integer, i78[]> k = new ConcurrentHashMap();

    public g78(long[] jArr, a58[] a58VarArr, long[] jArr2, a58[] a58VarArr2, j78[] j78VarArr) {
        this.e = jArr;
        this.f = a58VarArr;
        this.g = jArr2;
        this.i = a58VarArr2;
        this.j = j78VarArr;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < jArr2.length) {
            int i2 = i + 1;
            i78 i78Var = new i78(jArr2[i], a58VarArr2[i], a58VarArr2[i2]);
            if (i78Var.l()) {
                arrayList.add(i78Var.e);
                arrayList.add(i78Var.i());
            } else {
                arrayList.add(i78Var.i());
                arrayList.add(i78Var.e);
            }
            i = i2;
        }
        this.h = (q48[]) arrayList.toArray(new q48[arrayList.size()]);
    }

    private Object writeReplace() {
        return new f78((byte) 1, this);
    }

    @Override // defpackage.k78
    public a58 a(o48 o48Var) {
        long j = o48Var.e;
        if (this.j.length > 0) {
            if (j > this.g[r8.length - 1]) {
                a58[] a58VarArr = this.i;
                i78[] i78VarArrG = g(p48.e0(kt7.f(a58VarArr[a58VarArr.length - 1].f + j, 86400L)).e);
                i78 i78Var = null;
                for (int i = 0; i < i78VarArrG.length; i++) {
                    i78Var = i78VarArrG[i];
                    if (j < i78Var.e.P(i78Var.f)) {
                        return i78Var.f;
                    }
                }
                return i78Var.g;
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.g, j);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return this.i[iBinarySearch + 1];
    }

    @Override // defpackage.k78
    public i78 b(q48 q48Var) {
        Object objH = h(q48Var);
        if (objH instanceof i78) {
            return (i78) objH;
        }
        return null;
    }

    @Override // defpackage.k78
    public List<a58> c(q48 q48Var) {
        Object objH = h(q48Var);
        if (!(objH instanceof i78)) {
            return Collections.singletonList((a58) objH);
        }
        i78 i78Var = (i78) objH;
        return i78Var.l() ? Collections.emptyList() : Arrays.asList(i78Var.f, i78Var.g);
    }

    @Override // defpackage.k78
    public boolean d(o48 o48Var) {
        int iBinarySearch = Arrays.binarySearch(this.e, o48Var.e);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return !this.f[iBinarySearch + 1].equals(a(o48Var));
    }

    @Override // defpackage.k78
    public boolean e() {
        return this.g.length == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g78)) {
            return (obj instanceof k78.a) && e() && a(o48.g).equals(((k78.a) obj).e);
        }
        g78 g78Var = (g78) obj;
        return Arrays.equals(this.e, g78Var.e) && Arrays.equals(this.f, g78Var.f) && Arrays.equals(this.g, g78Var.g) && Arrays.equals(this.i, g78Var.i) && Arrays.equals(this.j, g78Var.j);
    }

    @Override // defpackage.k78
    public boolean f(q48 q48Var, a58 a58Var) {
        return c(q48Var).contains(a58Var);
    }

    public final i78[] g(int i) {
        p48 p48VarD0;
        Integer numValueOf = Integer.valueOf(i);
        i78[] i78VarArr = this.k.get(numValueOf);
        if (i78VarArr != null) {
            return i78VarArr;
        }
        j78[] j78VarArr = this.j;
        i78[] i78VarArr2 = new i78[j78VarArr.length];
        for (int i2 = 0; i2 < j78VarArr.length; i2++) {
            j78 j78Var = j78VarArr[i2];
            byte b = j78Var.f;
            if (b < 0) {
                s48 s48Var = j78Var.e;
                p48VarD0 = p48.d0(i, s48Var, s48Var.M(o58.g.M(i)) + 1 + j78Var.f);
                m48 m48Var = j78Var.g;
                if (m48Var != null) {
                    p48VarD0 = p48VarD0.R(new x68(1, m48Var, null));
                }
            } else {
                p48VarD0 = p48.d0(i, j78Var.e, b);
                m48 m48Var2 = j78Var.g;
                if (m48Var2 != null) {
                    p48VarD0 = p48VarD0.R(new x68(0, m48Var2, null));
                }
            }
            q48 q48VarY = q48.Y(p48VarD0.g0(j78Var.i), j78Var.h);
            j78.a aVar = j78Var.j;
            a58 a58Var = j78Var.k;
            a58 a58Var2 = j78Var.l;
            int iOrdinal = aVar.ordinal();
            if (iOrdinal == 0) {
                q48VarY = q48VarY.d0(a58Var2.f - a58.j.f);
            } else if (iOrdinal == 2) {
                q48VarY = q48VarY.d0(a58Var2.f - a58Var.f);
            }
            i78VarArr2[i2] = new i78(q48VarY, j78Var.l, j78Var.m);
        }
        if (i < 2100) {
            this.k.putIfAbsent(numValueOf, i78VarArr2);
        }
        return i78VarArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(defpackage.q48 r9) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g78.h(q48):java.lang.Object");
    }

    public int hashCode() {
        return (((Arrays.hashCode(this.e) ^ Arrays.hashCode(this.f)) ^ Arrays.hashCode(this.g)) ^ Arrays.hashCode(this.i)) ^ Arrays.hashCode(this.j);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("StandardZoneRules[currentStandardOffset=");
        sbZ.append(this.f[r1.length - 1]);
        sbZ.append("]");
        return sbZ.toString();
    }
}
