package defpackage;

import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ic {
    public static final int[] a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};
    public static final nc b = new jc();
    public static final nc c;

    public static class a {
        public Fragment a;
        public boolean b;
        public qb c;
        public Fragment d;
        public boolean e;
        public qb f;
    }

    static {
        nc ncVar;
        try {
            ncVar = (nc) Class.forName("mh").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            ncVar = null;
        }
        c = ncVar;
    }

    public static void a(ArrayList<View> arrayList, f4<String, View> f4Var, Collection<String> collection) {
        for (int i = f4Var.g - 1; i >= 0; i--) {
            View viewK = f4Var.k(i);
            AtomicInteger atomicInteger = ha.a;
            if (collection.contains(viewK.getTransitionName())) {
                arrayList.add(viewK);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(defpackage.qb r11, dc.a r12, android.util.SparseArray<ic.a> r13, boolean r14, boolean r15) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ic.b(qb, dc$a, android.util.SparseArray, boolean, boolean):void");
    }

    public static void c(Fragment fragment, Fragment fragment2, boolean z, f4<String, View> f4Var, boolean z2) {
        if ((z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = f4Var == null ? 0 : f4Var.g;
            for (int i2 = 0; i2 < i; i2++) {
                arrayList2.add(f4Var.h(i2));
                arrayList.add(f4Var.k(i2));
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public static boolean d(nc ncVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!ncVar.e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static f4<String, View> e(nc ncVar, f4<String, String> f4Var, Object obj, a aVar) {
        t7 enterTransitionCallback;
        ArrayList<String> arrayList;
        Fragment fragment = aVar.a;
        View view = fragment.getView();
        if (f4Var.isEmpty() || obj == null || view == null) {
            f4Var.clear();
            return null;
        }
        f4<String, View> f4Var2 = new f4<>();
        ncVar.i(f4Var2, view);
        qb qbVar = aVar.c;
        if (aVar.b) {
            enterTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = qbVar.o;
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = qbVar.p;
        }
        if (arrayList != null) {
            l4.k(f4Var2, arrayList);
            l4.k(f4Var2, f4Var.values());
        }
        if (enterTransitionCallback != null) {
            throw null;
        }
        int i = f4Var.g;
        while (true) {
            i--;
            if (i < 0) {
                return f4Var2;
            }
            if (!f4Var2.containsKey(f4Var.k(i))) {
                f4Var.i(i);
            }
        }
    }

    public static f4<String, View> f(nc ncVar, f4<String, String> f4Var, Object obj, a aVar) {
        t7 exitTransitionCallback;
        ArrayList<String> arrayList;
        if (f4Var.isEmpty() || obj == null) {
            f4Var.clear();
            return null;
        }
        Fragment fragment = aVar.d;
        f4<String, View> f4Var2 = new f4<>();
        ncVar.i(f4Var2, fragment.requireView());
        qb qbVar = aVar.f;
        if (aVar.e) {
            exitTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = qbVar.p;
        } else {
            exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = qbVar.o;
        }
        l4.k(f4Var2, arrayList);
        if (exitTransitionCallback != null) {
            throw null;
        }
        l4.k(f4Var, f4Var2.keySet());
        return f4Var2;
    }

    public static nc g(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        nc ncVar = b;
        if (d(ncVar, arrayList)) {
            return ncVar;
        }
        nc ncVar2 = c;
        if (ncVar2 == null || !d(ncVar2, arrayList)) {
            throw new IllegalArgumentException("Invalid Transition types");
        }
        return ncVar2;
    }

    public static ArrayList<View> h(nc ncVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.getView();
        if (view2 != null) {
            ncVar.f(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        ncVar.b(obj, arrayList2);
        return arrayList2;
    }

    public static Object i(nc ncVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return ncVar.g(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    public static Object j(nc ncVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return ncVar.g(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    public static View k(f4<String, View> f4Var, a aVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        qb qbVar = aVar.c;
        if (obj == null || f4Var == null || (arrayList = qbVar.o) == null || arrayList.isEmpty()) {
            return null;
        }
        return f4Var.get(z ? qbVar.o.get(0) : qbVar.p.get(0));
    }

    public static Object l(nc ncVar, Fragment fragment, Fragment fragment2, boolean z) {
        return ncVar.v(ncVar.g(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    public static Object m(nc ncVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? ncVar.m(obj2, obj, obj3) : ncVar.l(obj2, obj, obj3);
    }

    public static void n(nc ncVar, Object obj, Object obj2, f4<String, View> f4Var, boolean z, qb qbVar) {
        ArrayList<String> arrayList = qbVar.o;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = f4Var.get(z ? qbVar.p.get(0) : qbVar.o.get(0));
        ncVar.s(obj, view);
        if (obj2 != null) {
            ncVar.s(obj2, view);
        }
    }

    public static void o(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0454 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0224  */
    /* JADX WARN: Type inference failed for: r13v3, types: [m4] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void p(defpackage.xb r39, java.util.ArrayList<defpackage.qb> r40, java.util.ArrayList<java.lang.Boolean> r41, int r42, int r43, boolean r44) {
        /*
            Method dump skipped, instructions count: 1129
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ic.p(xb, java.util.ArrayList, java.util.ArrayList, int, int, boolean):void");
    }
}
