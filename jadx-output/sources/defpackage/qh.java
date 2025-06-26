package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class qh implements Cloneable {
    public ArrayList<yh> o;
    public ArrayList<yh> p;
    public c w;
    public static final int[] y = {2, 1, 3, 4};
    public static final nh z = new a();
    public static ThreadLocal<f4<Animator, b>> A = new ThreadLocal<>();
    public String e = getClass().getName();
    public long f = -1;
    public long g = -1;
    public TimeInterpolator h = null;
    public ArrayList<Integer> i = new ArrayList<>();
    public ArrayList<View> j = new ArrayList<>();
    public zh k = new zh();
    public zh l = new zh();
    public wh m = null;
    public int[] n = y;
    public ArrayList<Animator> q = new ArrayList<>();
    public int r = 0;
    public boolean s = false;
    public boolean t = false;
    public ArrayList<d> u = null;
    public ArrayList<Animator> v = new ArrayList<>();
    public nh x = z;

    public static class a extends nh {
        @Override // defpackage.nh
        public Path a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    public static class b {
        public View a;
        public String b;
        public yh c;
        public mi d;
        public qh e;

        public b(View view, String str, qh qhVar, mi miVar, yh yhVar) {
            this.a = view;
            this.b = str;
            this.c = yhVar;
            this.d = miVar;
            this.e = qhVar;
        }
    }

    public static abstract class c {
    }

    public interface d {
        void a(qh qhVar);

        void b(qh qhVar);

        void c(qh qhVar);

        void d(qh qhVar);

        void e(qh qhVar);
    }

    public static void d(zh zhVar, View view, yh yhVar) {
        zhVar.a.put(view, yhVar);
        int id = view.getId();
        if (id >= 0) {
            if (zhVar.b.indexOfKey(id) >= 0) {
                zhVar.b.put(id, null);
            } else {
                zhVar.b.put(id, view);
            }
        }
        AtomicInteger atomicInteger = ha.a;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            if (zhVar.d.e(transitionName) >= 0) {
                zhVar.d.put(transitionName, null);
            } else {
                zhVar.d.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (zhVar.c.h(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    zhVar.c.i(itemIdAtPosition, view);
                    return;
                }
                View viewF = zhVar.c.f(itemIdAtPosition);
                if (viewF != null) {
                    viewF.setHasTransientState(false);
                    zhVar.c.i(itemIdAtPosition, null);
                }
            }
        }
    }

    public static f4<Animator, b> q() {
        f4<Animator, b> f4Var = A.get();
        if (f4Var != null) {
            return f4Var;
        }
        f4<Animator, b> f4Var2 = new f4<>();
        A.set(f4Var2);
        return f4Var2;
    }

    public static boolean v(yh yhVar, yh yhVar2, String str) {
        Object obj = yhVar.a.get(str);
        Object obj2 = yhVar2.a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    public void A() {
        I();
        f4<Animator, b> f4VarQ = q();
        Iterator<Animator> it = this.v.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (f4VarQ.containsKey(next)) {
                I();
                if (next != null) {
                    next.addListener(new rh(this, f4VarQ));
                    long j = this.g;
                    if (j >= 0) {
                        next.setDuration(j);
                    }
                    long j2 = this.f;
                    if (j2 >= 0) {
                        next.setStartDelay(next.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.h;
                    if (timeInterpolator != null) {
                        next.setInterpolator(timeInterpolator);
                    }
                    next.addListener(new sh(this));
                    next.start();
                }
            }
        }
        this.v.clear();
        o();
    }

    public qh B(long j) {
        this.g = j;
        return this;
    }

    public void D(c cVar) {
        this.w = cVar;
    }

    public qh E(TimeInterpolator timeInterpolator) {
        this.h = timeInterpolator;
        return this;
    }

    public void F(nh nhVar) {
        if (nhVar == null) {
            this.x = z;
        } else {
            this.x = nhVar;
        }
    }

    public void G(vh vhVar) {
    }

    public qh H(long j) {
        this.f = j;
        return this;
    }

    public void I() {
        if (this.r == 0) {
            ArrayList<d> arrayList = this.u;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.u.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((d) arrayList2.get(i)).a(this);
                }
            }
            this.t = false;
        }
        this.r++;
    }

    public String J(String str) {
        StringBuilder sbZ = jo.z(str);
        sbZ.append(getClass().getSimpleName());
        sbZ.append("@");
        sbZ.append(Integer.toHexString(hashCode()));
        sbZ.append(": ");
        String string = sbZ.toString();
        if (this.g != -1) {
            string = jo.r(jo.B(string, "dur("), this.g, ") ");
        }
        if (this.f != -1) {
            string = jo.r(jo.B(string, "dly("), this.f, ") ");
        }
        if (this.h != null) {
            StringBuilder sbB = jo.B(string, "interp(");
            sbB.append(this.h);
            sbB.append(") ");
            string = sbB.toString();
        }
        if (this.i.size() <= 0 && this.j.size() <= 0) {
            return string;
        }
        String strN = jo.n(string, "tgts(");
        if (this.i.size() > 0) {
            for (int i = 0; i < this.i.size(); i++) {
                if (i > 0) {
                    strN = jo.n(strN, ", ");
                }
                StringBuilder sbZ2 = jo.z(strN);
                sbZ2.append(this.i.get(i));
                strN = sbZ2.toString();
            }
        }
        if (this.j.size() > 0) {
            for (int i2 = 0; i2 < this.j.size(); i2++) {
                if (i2 > 0) {
                    strN = jo.n(strN, ", ");
                }
                StringBuilder sbZ3 = jo.z(strN);
                sbZ3.append(this.j.get(i2));
                strN = sbZ3.toString();
            }
        }
        return jo.n(strN, ")");
    }

    public qh b(d dVar) {
        if (this.u == null) {
            this.u = new ArrayList<>();
        }
        this.u.add(dVar);
        return this;
    }

    public qh c(View view) {
        this.j.add(view);
        return this;
    }

    public abstract void e(yh yhVar);

    public final void f(View view, boolean z2) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            yh yhVar = new yh(view);
            if (z2) {
                h(yhVar);
            } else {
                e(yhVar);
            }
            yhVar.c.add(this);
            g(yhVar);
            if (z2) {
                d(this.k, view, yhVar);
            } else {
                d(this.l, view, yhVar);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                f(viewGroup.getChildAt(i), z2);
            }
        }
    }

    public void g(yh yhVar) {
    }

    public abstract void h(yh yhVar);

    public void i(ViewGroup viewGroup, boolean z2) {
        j(z2);
        if (this.i.size() <= 0 && this.j.size() <= 0) {
            f(viewGroup, z2);
            return;
        }
        for (int i = 0; i < this.i.size(); i++) {
            View viewFindViewById = viewGroup.findViewById(this.i.get(i).intValue());
            if (viewFindViewById != null) {
                yh yhVar = new yh(viewFindViewById);
                if (z2) {
                    h(yhVar);
                } else {
                    e(yhVar);
                }
                yhVar.c.add(this);
                g(yhVar);
                if (z2) {
                    d(this.k, viewFindViewById, yhVar);
                } else {
                    d(this.l, viewFindViewById, yhVar);
                }
            }
        }
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            View view = this.j.get(i2);
            yh yhVar2 = new yh(view);
            if (z2) {
                h(yhVar2);
            } else {
                e(yhVar2);
            }
            yhVar2.c.add(this);
            g(yhVar2);
            if (z2) {
                d(this.k, view, yhVar2);
            } else {
                d(this.l, view, yhVar2);
            }
        }
    }

    public void j(boolean z2) {
        if (z2) {
            this.k.a.clear();
            this.k.b.clear();
            this.k.c.c();
        } else {
            this.l.a.clear();
            this.l.b.clear();
            this.l.c.c();
        }
    }

    @Override // 
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public qh clone() {
        try {
            qh qhVar = (qh) super.clone();
            qhVar.v = new ArrayList<>();
            qhVar.k = new zh();
            qhVar.l = new zh();
            qhVar.o = null;
            qhVar.p = null;
            return qhVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator l(ViewGroup viewGroup, yh yhVar, yh yhVar2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m(android.view.ViewGroup r20, defpackage.zh r21, defpackage.zh r22, java.util.ArrayList<defpackage.yh> r23, java.util.ArrayList<defpackage.yh> r24) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qh.m(android.view.ViewGroup, zh, zh, java.util.ArrayList, java.util.ArrayList):void");
    }

    public void o() {
        int i = this.r - 1;
        this.r = i;
        if (i == 0) {
            ArrayList<d> arrayList = this.u;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.u.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((d) arrayList2.get(i2)).c(this);
                }
            }
            for (int i3 = 0; i3 < this.k.c.k(); i3++) {
                View viewL = this.k.c.l(i3);
                if (viewL != null) {
                    AtomicInteger atomicInteger = ha.a;
                    viewL.setHasTransientState(false);
                }
            }
            for (int i4 = 0; i4 < this.l.c.k(); i4++) {
                View viewL2 = this.l.c.l(i4);
                if (viewL2 != null) {
                    AtomicInteger atomicInteger2 = ha.a;
                    viewL2.setHasTransientState(false);
                }
            }
            this.t = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if (r3 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        if (r8 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        r7 = r6.p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        r7 = r6.o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003e, code lost:
    
        return r7.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.yh p(android.view.View r7, boolean r8) {
        /*
            r6 = this;
            wh r0 = r6.m
            if (r0 == 0) goto L9
            yh r7 = r0.p(r7, r8)
            return r7
        L9:
            if (r8 == 0) goto Le
            java.util.ArrayList<yh> r0 = r6.o
            goto L10
        Le:
            java.util.ArrayList<yh> r0 = r6.p
        L10:
            r1 = 0
            if (r0 != 0) goto L14
            return r1
        L14:
            int r2 = r0.size()
            r3 = -1
            r4 = 0
        L1a:
            if (r4 >= r2) goto L2e
            java.lang.Object r5 = r0.get(r4)
            yh r5 = (defpackage.yh) r5
            if (r5 != 0) goto L25
            return r1
        L25:
            android.view.View r5 = r5.b
            if (r5 != r7) goto L2b
            r3 = r4
            goto L2e
        L2b:
            int r4 = r4 + 1
            goto L1a
        L2e:
            if (r3 < 0) goto L3e
            if (r8 == 0) goto L35
            java.util.ArrayList<yh> r7 = r6.p
            goto L37
        L35:
            java.util.ArrayList<yh> r7 = r6.o
        L37:
            java.lang.Object r7 = r7.get(r3)
            r1 = r7
            yh r1 = (defpackage.yh) r1
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qh.p(android.view.View, boolean):yh");
    }

    public String[] r() {
        return null;
    }

    public yh s(View view, boolean z2) {
        wh whVar = this.m;
        if (whVar != null) {
            return whVar.s(view, z2);
        }
        return (z2 ? this.k : this.l).a.getOrDefault(view, null);
    }

    public boolean t(yh yhVar, yh yhVar2) {
        if (yhVar == null || yhVar2 == null) {
            return false;
        }
        String[] strArrR = r();
        if (strArrR == null) {
            Iterator<String> it = yhVar.a.keySet().iterator();
            while (it.hasNext()) {
                if (v(yhVar, yhVar2, it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrR) {
            if (!v(yhVar, yhVar2, str)) {
            }
        }
        return false;
        return true;
    }

    public String toString() {
        return J("");
    }

    public boolean u(View view) {
        return (this.i.size() == 0 && this.j.size() == 0) || this.i.contains(Integer.valueOf(view.getId())) || this.j.contains(view);
    }

    public void w(View view) {
        if (this.t) {
            return;
        }
        f4<Animator, b> f4VarQ = q();
        int i = f4VarQ.g;
        ii iiVar = ci.a;
        li liVar = new li(view);
        for (int i2 = i - 1; i2 >= 0; i2--) {
            b bVarK = f4VarQ.k(i2);
            if (bVarK.a != null && liVar.equals(bVarK.d)) {
                f4VarQ.h(i2).pause();
            }
        }
        ArrayList<d> arrayList = this.u;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.u.clone();
            int size = arrayList2.size();
            for (int i3 = 0; i3 < size; i3++) {
                ((d) arrayList2.get(i3)).b(this);
            }
        }
        this.s = true;
    }

    public qh x(d dVar) {
        ArrayList<d> arrayList = this.u;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(dVar);
        if (this.u.size() == 0) {
            this.u = null;
        }
        return this;
    }

    public qh y(View view) {
        this.j.remove(view);
        return this;
    }

    public void z(View view) {
        if (this.s) {
            if (!this.t) {
                f4<Animator, b> f4VarQ = q();
                int i = f4VarQ.g;
                ii iiVar = ci.a;
                li liVar = new li(view);
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    b bVarK = f4VarQ.k(i2);
                    if (bVarK.a != null && liVar.equals(bVarK.d)) {
                        f4VarQ.h(i2).resume();
                    }
                }
                ArrayList<d> arrayList = this.u;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.u.clone();
                    int size = arrayList2.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        ((d) arrayList2.get(i3)).e(this);
                    }
                }
            }
            this.s = false;
        }
    }
}
