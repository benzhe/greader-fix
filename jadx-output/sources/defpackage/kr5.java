package defpackage;

import defpackage.ln5;
import defpackage.mr5;
import defpackage.rq5;
import defpackage.yq5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class kr5 {
    public final yq5 a;
    public mr5.a b = mr5.a.NONE;
    public boolean c;
    public du5 d;
    public ln5<bu5> e;
    public ln5<bu5> f;
    public ln5<bu5> g;

    public static class b {
        public final du5 a;
        public final cq5 b;
        public final boolean c;
        public final ln5<bu5> d;

        public b(du5 du5Var, cq5 cq5Var, ln5 ln5Var, boolean z, a aVar) {
            this.a = du5Var;
            this.b = cq5Var;
            this.d = ln5Var;
            this.c = z;
        }
    }

    public kr5(yq5 yq5Var, ln5<bu5> ln5Var) {
        this.a = yq5Var;
        this.d = new du5(zt5.a, new ln5(Collections.emptyList(), new cu5(yq5Var.b())));
        this.e = ln5Var;
        ln5<bu5> ln5Var2 = bu5.f;
        this.f = ln5Var2;
        this.g = ln5Var2;
    }

    public static int b(bq5 bq5Var) {
        int iOrdinal = bq5Var.a.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        int i = 1;
        if (iOrdinal != 1) {
            i = 2;
            if (iOrdinal != 2) {
                if (iOrdinal == 3) {
                    return 2;
                }
                StringBuilder sbZ = jo.z("Unknown change type: ");
                sbZ.append(bq5Var.a);
                throw new IllegalArgumentException(sbZ.toString());
            }
        }
        return i;
    }

    public lr5 a(b bVar, vw5 vw5Var) {
        List listEmptyList;
        yt5 yt5VarH;
        mr5.a aVar = mr5.a.LOCAL;
        bx5.c(!bVar.c, "Cannot apply changes that need a refill", new Object[0]);
        du5 du5Var = this.d;
        this.d = bVar.a;
        this.g = bVar.d;
        cq5 cq5Var = bVar.b;
        Objects.requireNonNull(cq5Var);
        ArrayList arrayList = new ArrayList(cq5Var.a.values());
        Collections.sort(arrayList, new Comparator(this) { // from class: jr5
            public final kr5 e;

            {
                this.e = this;
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                kr5 kr5Var = this.e;
                bq5 bq5Var = (bq5) obj;
                bq5 bq5Var2 = (bq5) obj2;
                int iB = vx5.b(kr5.b(bq5Var), kr5.b(bq5Var2));
                bq5Var.a.compareTo(bq5Var2.a);
                if (iB != 0) {
                    return iB;
                }
                return ((yq5.b) kr5Var.a.b()).compare(bq5Var.b, bq5Var2.b);
            }
        });
        if (vw5Var != null) {
            Iterator<bu5> it = vw5Var.c.iterator();
            while (true) {
                ln5.a aVar2 = (ln5.a) it;
                if (!aVar2.hasNext()) {
                    break;
                }
                this.e = this.e.d((bu5) aVar2.next());
            }
            Iterator<bu5> it2 = vw5Var.d.iterator();
            while (true) {
                ln5.a aVar3 = (ln5.a) it2;
                if (!aVar3.hasNext()) {
                    break;
                }
                bu5 bu5Var = (bu5) aVar3.next();
                bx5.c(this.e.contains(bu5Var), "Modified document %s not found in view.", bu5Var);
            }
            Iterator<bu5> it3 = vw5Var.e.iterator();
            while (true) {
                ln5.a aVar4 = (ln5.a) it3;
                if (!aVar4.hasNext()) {
                    break;
                }
                this.e = this.e.h((bu5) aVar4.next());
            }
            this.c = vw5Var.b;
        }
        if (this.c) {
            ln5<bu5> ln5Var = this.f;
            this.f = bu5.f;
            Iterator<yt5> it4 = this.d.iterator();
            while (true) {
                ln5.a aVar5 = (ln5.a) it4;
                if (!aVar5.hasNext()) {
                    break;
                }
                yt5 yt5Var = (yt5) aVar5.next();
                bu5 bu5Var2 = yt5Var.a;
                if ((this.e.e.d(bu5Var2) || (yt5VarH = this.d.e.h(bu5Var2)) == null || yt5VarH.d()) ? false : true) {
                    this.f = this.f.d(yt5Var.a);
                }
            }
            ArrayList arrayList2 = new ArrayList(this.f.size() + ln5Var.size());
            Iterator<bu5> it5 = ln5Var.iterator();
            while (true) {
                ln5.a aVar6 = (ln5.a) it5;
                if (!aVar6.hasNext()) {
                    break;
                }
                bu5 bu5Var3 = (bu5) aVar6.next();
                if (!this.f.contains(bu5Var3)) {
                    arrayList2.add(new rq5(rq5.a.REMOVED, bu5Var3));
                }
            }
            Iterator<bu5> it6 = this.f.iterator();
            while (true) {
                ln5.a aVar7 = (ln5.a) it6;
                if (!aVar7.hasNext()) {
                    break;
                }
                bu5 bu5Var4 = (bu5) aVar7.next();
                if (!ln5Var.contains(bu5Var4)) {
                    arrayList2.add(new rq5(rq5.a.ADDED, bu5Var4));
                }
            }
            listEmptyList = arrayList2;
        } else {
            listEmptyList = Collections.emptyList();
        }
        mr5.a aVar8 = this.f.size() == 0 && this.c ? mr5.a.SYNCED : aVar;
        boolean z = aVar8 != this.b;
        this.b = aVar8;
        mr5 mr5Var = null;
        if (arrayList.size() != 0 || z) {
            mr5Var = new mr5(this.a, bVar.a, du5Var, arrayList, aVar8 == aVar, bVar.d, z, false);
        }
        return new lr5(mr5Var, listEmptyList);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <D extends defpackage.fu5> kr5.b c(defpackage.jn5<defpackage.bu5, D> r21, kr5.b r22) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kr5.c(jn5, kr5$b):kr5$b");
    }
}
