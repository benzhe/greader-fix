package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class kk extends zj {
    public static final String j = vj.e("WorkContinuationImpl");
    public final nk a;
    public final String b;
    public final tj c;
    public final List<? extends ck> d;
    public final List<String> e;
    public final List<String> f;
    public final List<kk> g;
    public boolean h;
    public yj i;

    public kk(nk nkVar, List<? extends ck> list) {
        tj tjVar = tj.KEEP;
        this.a = nkVar;
        this.b = null;
        this.c = tjVar;
        this.d = list;
        this.g = null;
        this.e = new ArrayList(list.size());
        this.f = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String strA = list.get(i).a();
            this.e.add(strA);
            this.f.add(strA);
        }
    }

    public static boolean a(kk kkVar, Set<String> set) {
        set.addAll(kkVar.e);
        Set<String> setB = b(kkVar);
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            if (((HashSet) setB).contains(it.next())) {
                return true;
            }
        }
        List<kk> list = kkVar.g;
        if (list != null && !list.isEmpty()) {
            Iterator<kk> it2 = list.iterator();
            while (it2.hasNext()) {
                if (a(it2.next(), set)) {
                    return true;
                }
            }
        }
        set.removeAll(kkVar.e);
        return false;
    }

    public static Set<String> b(kk kkVar) {
        HashSet hashSet = new HashSet();
        List<kk> list = kkVar.g;
        if (list != null && !list.isEmpty()) {
            Iterator<kk> it = list.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().e);
            }
        }
        return hashSet;
    }
}
