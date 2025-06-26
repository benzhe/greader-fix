package defpackage;

import android.text.TextUtils;
import defpackage.bf5;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class ye5 {
    public final bf5 a;
    public final String b;
    public Integer c = null;

    public ye5(bf5 bf5Var, String str) {
        this.a = bf5Var;
        this.b = str;
    }

    public final void a(List<xe5> list) {
        String str;
        ArrayDeque arrayDeque = new ArrayDeque(b());
        if (this.c == null) {
            this.c = Integer.valueOf(this.a.c(this.b));
        }
        int iIntValue = this.c.intValue();
        for (xe5 xe5Var : list) {
            while (true) {
                str = null;
                if (arrayDeque.size() < iIntValue) {
                    break;
                }
                this.a.clearConditionalUserProperty(((bf5.c) arrayDeque.pollFirst()).b, null, null);
            }
            String str2 = this.b;
            Objects.requireNonNull(xe5Var);
            bf5.c cVar = new bf5.c();
            cVar.a = str2;
            cVar.m = xe5Var.d.getTime();
            cVar.b = xe5Var.a;
            cVar.c = xe5Var.b;
            if (!TextUtils.isEmpty(xe5Var.c)) {
                str = xe5Var.c;
            }
            cVar.d = str;
            cVar.e = xe5Var.e;
            cVar.j = xe5Var.f;
            this.a.b(cVar);
            arrayDeque.offer(cVar);
        }
    }

    public final List<bf5.c> b() {
        return this.a.d(this.b, "");
    }

    public final void c(Collection<bf5.c> collection) {
        Iterator<bf5.c> it = collection.iterator();
        while (it.hasNext()) {
            this.a.clearConditionalUserProperty(it.next().b, null, null);
        }
    }

    public void d(List<Map<String, String>> list) throws we5 {
        e();
        ArrayList arrayList = new ArrayList();
        Iterator<Map<String, String>> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(xe5.a(it.next()));
        }
        if (arrayList.isEmpty()) {
            e();
            c(b());
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            hashSet.add(((xe5) it2.next()).a);
        }
        List<bf5.c> listB = b();
        HashSet hashSet2 = new HashSet();
        Iterator<bf5.c> it3 = listB.iterator();
        while (it3.hasNext()) {
            hashSet2.add(it3.next().b);
        }
        ArrayList arrayList2 = new ArrayList();
        for (bf5.c cVar : listB) {
            if (!hashSet.contains(cVar.b)) {
                arrayList2.add(cVar);
            }
        }
        c(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            xe5 xe5Var = (xe5) it4.next();
            if (!hashSet2.contains(xe5Var.a)) {
                arrayList3.add(xe5Var);
            }
        }
        a(arrayList3);
    }

    public final void e() throws we5 {
        if (this.a == null) {
            throw new we5("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }
}
