package defpackage;

import defpackage.fq5;
import defpackage.xq5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class yq5 {
    public static final xq5 k;
    public static final xq5 l;
    public final List<xq5> a;
    public List<xq5> b;
    public dr5 c;
    public final List<fq5> d;
    public final iu5 e;
    public final String f;
    public final long g;
    public final a h;
    public final yp5 i;
    public final yp5 j;

    public enum a {
        LIMIT_TO_FIRST,
        LIMIT_TO_LAST
    }

    public static class b implements Comparator<yt5> {
        public final List<xq5> e;

        public b(List<xq5> list) {
            boolean z;
            Iterator<xq5> it = list.iterator();
            loop0: while (true) {
                while (it.hasNext()) {
                    z = z || it.next().b.equals(eu5.f);
                }
            }
            if (!z) {
                throw new IllegalArgumentException("QueryComparator needs to have a key ordering");
            }
            this.e = list;
        }

        @Override // java.util.Comparator
        public int compare(yt5 yt5Var, yt5 yt5Var2) {
            int i;
            int i2;
            int iB;
            yt5 yt5Var3 = yt5Var;
            yt5 yt5Var4 = yt5Var2;
            Iterator<xq5> it = this.e.iterator();
            do {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                xq5 next = it.next();
                if (next.b.equals(eu5.f)) {
                    i2 = next.a.e;
                    iB = yt5Var3.a.compareTo(yt5Var4.a);
                } else {
                    bd6 bd6VarB = yt5Var3.b(next.b);
                    bd6 bd6VarB2 = yt5Var4.b(next.b);
                    bx5.c((bd6VarB == null || bd6VarB2 == null) ? false : true, "Trying to compare documents on fields that don't exist.", new Object[0]);
                    i2 = next.a.e;
                    iB = lu5.b(bd6VarB, bd6VarB2);
                }
                i = iB * i2;
            } while (i == 0);
            return i;
        }
    }

    static {
        xq5.a aVar = xq5.a.ASCENDING;
        eu5 eu5Var = eu5.f;
        k = new xq5(aVar, eu5Var);
        l = new xq5(xq5.a.DESCENDING, eu5Var);
    }

    public yq5(iu5 iu5Var, String str, List<fq5> list, List<xq5> list2, long j, a aVar, yp5 yp5Var, yp5 yp5Var2) {
        this.e = iu5Var;
        this.f = str;
        this.a = list2;
        this.d = list;
        this.g = j;
        this.h = aVar;
        this.i = yp5Var;
        this.j = yp5Var2;
    }

    public static yq5 a(iu5 iu5Var) {
        return new yq5(iu5Var, null, Collections.emptyList(), Collections.emptyList(), -1L, a.LIMIT_TO_FIRST, null, null);
    }

    public Comparator<yt5> b() {
        return new b(d());
    }

    public eu5 c() {
        if (this.a.isEmpty()) {
            return null;
        }
        return this.a.get(0).b;
    }

    public List<xq5> d() {
        boolean z;
        eu5 eu5Var;
        xq5.a aVar;
        xq5.a aVar2 = xq5.a.ASCENDING;
        if (this.b == null) {
            Iterator<fq5> it = this.d.iterator();
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    eu5Var = null;
                    break;
                }
                fq5 next = it.next();
                if (next instanceof eq5) {
                    eq5 eq5Var = (eq5) next;
                    Objects.requireNonNull(eq5Var);
                    if (Arrays.asList(fq5.a.LESS_THAN, fq5.a.LESS_THAN_OR_EQUAL, fq5.a.GREATER_THAN, fq5.a.GREATER_THAN_OR_EQUAL, fq5.a.NOT_EQUAL, fq5.a.NOT_IN).contains(eq5Var.a)) {
                        eu5Var = eq5Var.c;
                        break;
                    }
                }
            }
            eu5 eu5VarC = c();
            if (eu5Var == null || eu5VarC != null) {
                ArrayList arrayList = new ArrayList();
                for (xq5 xq5Var : this.a) {
                    arrayList.add(xq5Var);
                    if (xq5Var.b.equals(eu5.f)) {
                        z = true;
                    }
                }
                if (!z) {
                    if (this.a.size() > 0) {
                        List<xq5> list = this.a;
                        aVar = list.get(list.size() - 1).a;
                    } else {
                        aVar = aVar2;
                    }
                    arrayList.add(aVar.equals(aVar2) ? k : l);
                }
                this.b = arrayList;
            } else if (eu5Var.N()) {
                this.b = Collections.singletonList(k);
            } else {
                this.b = Arrays.asList(new xq5(aVar2, eu5Var), k);
            }
        }
        return this.b;
    }

    public boolean e() {
        return this.h == a.LIMIT_TO_FIRST && this.g != -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yq5.class != obj.getClass()) {
            return false;
        }
        yq5 yq5Var = (yq5) obj;
        if (this.h != yq5Var.h) {
            return false;
        }
        return i().equals(yq5Var.i());
    }

    public boolean f() {
        return this.h == a.LIMIT_TO_LAST && this.g != -1;
    }

    public boolean g() {
        return this.f != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h(defpackage.yt5 r8) {
        /*
            r7 = this;
            bu5 r0 = r8.a
            iu5 r1 = r0.e
            java.lang.String r2 = r7.f
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L37
            int r5 = r1.I()
            r6 = 2
            if (r5 < r6) goto L28
            iu5 r0 = r0.e
            java.util.List<java.lang.String> r5 = r0.e
            int r0 = r0.I()
            int r0 = r0 - r6
            java.lang.Object r0 = r5.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L28
            r0 = 1
            goto L29
        L28:
            r0 = 0
        L29:
            if (r0 == 0) goto L35
            iu5 r0 = r7.e
            boolean r0 = r0.D(r1)
            if (r0 == 0) goto L35
        L33:
            r0 = 1
            goto L5c
        L35:
            r0 = 0
            goto L5c
        L37:
            iu5 r0 = r7.e
            boolean r0 = defpackage.bu5.l(r0)
            if (r0 == 0) goto L46
            iu5 r0 = r7.e
            boolean r0 = r0.equals(r1)
            goto L5c
        L46:
            iu5 r0 = r7.e
            boolean r0 = r0.D(r1)
            if (r0 == 0) goto L35
            iu5 r0 = r7.e
            int r0 = r0.I()
            int r1 = r1.I()
            int r1 = r1 - r4
            if (r0 != r1) goto L35
            goto L33
        L5c:
            if (r0 == 0) goto Lc7
            java.util.List<xq5> r0 = r7.a
            java.util.Iterator r0 = r0.iterator()
        L64:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L84
            java.lang.Object r1 = r0.next()
            xq5 r1 = (defpackage.xq5) r1
            eu5 r2 = r1.b
            eu5 r5 = defpackage.eu5.f
            boolean r2 = r2.equals(r5)
            if (r2 != 0) goto L64
            eu5 r1 = r1.b
            bd6 r1 = r8.b(r1)
            if (r1 != 0) goto L64
            r0 = 0
            goto L85
        L84:
            r0 = 1
        L85:
            if (r0 == 0) goto Lc7
            java.util.List<fq5> r0 = r7.d
            java.util.Iterator r0 = r0.iterator()
        L8d:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto La1
            java.lang.Object r1 = r0.next()
            fq5 r1 = (defpackage.fq5) r1
            boolean r1 = r1.b(r8)
            if (r1 != 0) goto L8d
            r0 = 0
            goto La2
        La1:
            r0 = 1
        La2:
            if (r0 == 0) goto Lc7
            yp5 r0 = r7.i
            if (r0 == 0) goto Lb4
            java.util.List r1 = r7.d()
            boolean r0 = r0.b(r1, r8)
            if (r0 != 0) goto Lb4
        Lb2:
            r8 = 0
            goto Lc4
        Lb4:
            yp5 r0 = r7.j
            if (r0 == 0) goto Lc3
            java.util.List r1 = r7.d()
            boolean r8 = r0.b(r1, r8)
            if (r8 == 0) goto Lc3
            goto Lb2
        Lc3:
            r8 = 1
        Lc4:
            if (r8 == 0) goto Lc7
            r3 = 1
        Lc7:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yq5.h(yt5):boolean");
    }

    public int hashCode() {
        return this.h.hashCode() + (i().hashCode() * 31);
    }

    public dr5 i() {
        if (this.c == null) {
            if (this.h == a.LIMIT_TO_FIRST) {
                this.c = new dr5(this.e, this.f, this.d, d(), this.g, this.i, this.j);
            } else {
                ArrayList arrayList = new ArrayList();
                for (xq5 xq5Var : d()) {
                    xq5.a aVar = xq5Var.a;
                    xq5.a aVar2 = xq5.a.DESCENDING;
                    if (aVar == aVar2) {
                        aVar2 = xq5.a.ASCENDING;
                    }
                    arrayList.add(new xq5(aVar2, xq5Var.b));
                }
                yp5 yp5Var = this.j;
                yp5 yp5Var2 = yp5Var != null ? new yp5(yp5Var.b, !yp5Var.a) : null;
                yp5 yp5Var3 = this.i;
                this.c = new dr5(this.e, this.f, this.d, arrayList, this.g, yp5Var2, yp5Var3 != null ? new yp5(yp5Var3.b, !yp5Var3.a) : null);
            }
        }
        return this.c;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Query(target=");
        sbZ.append(i().toString());
        sbZ.append(";limitType=");
        sbZ.append(this.h.toString());
        sbZ.append(")");
        return sbZ.toString();
    }
}
