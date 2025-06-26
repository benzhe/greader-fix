package defpackage;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import defpackage.qh;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class mh extends nc {

    public class a extends qh.c {
        public a(mh mhVar, Rect rect) {
        }
    }

    public class b implements qh.d {
        public final /* synthetic */ View a;
        public final /* synthetic */ ArrayList b;

        public b(mh mhVar, View view, ArrayList arrayList) {
            this.a = view;
            this.b = arrayList;
        }

        @Override // qh.d
        public void a(qh qhVar) {
        }

        @Override // qh.d
        public void b(qh qhVar) {
        }

        @Override // qh.d
        public void c(qh qhVar) {
            qhVar.x(this);
            this.a.setVisibility(8);
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.b.get(i)).setVisibility(0);
            }
        }

        @Override // qh.d
        public void d(qh qhVar) {
        }

        @Override // qh.d
        public void e(qh qhVar) {
        }
    }

    public class c extends th {
        public final /* synthetic */ Object a;
        public final /* synthetic */ ArrayList b;
        public final /* synthetic */ Object c;
        public final /* synthetic */ ArrayList d;
        public final /* synthetic */ Object e;
        public final /* synthetic */ ArrayList f;

        public c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.a = obj;
            this.b = arrayList;
            this.c = obj2;
            this.d = arrayList2;
            this.e = obj3;
            this.f = arrayList3;
        }

        @Override // defpackage.th, qh.d
        public void a(qh qhVar) {
            Object obj = this.a;
            if (obj != null) {
                mh.this.o(obj, this.b, null);
            }
            Object obj2 = this.c;
            if (obj2 != null) {
                mh.this.o(obj2, this.d, null);
            }
            Object obj3 = this.e;
            if (obj3 != null) {
                mh.this.o(obj3, this.f, null);
            }
        }

        @Override // qh.d
        public void c(qh qhVar) {
            qhVar.x(this);
        }
    }

    public class d extends qh.c {
        public d(mh mhVar, Rect rect) {
        }
    }

    public static boolean w(qh qhVar) {
        return (nc.k(qhVar.i) && nc.k(null) && nc.k(null)) ? false : true;
    }

    @Override // defpackage.nc
    public void a(Object obj, View view) {
        if (obj != null) {
            ((qh) obj).c(view);
        }
    }

    @Override // defpackage.nc
    public void b(Object obj, ArrayList<View> arrayList) {
        qh qhVar = (qh) obj;
        if (qhVar == null) {
            return;
        }
        int i = 0;
        if (qhVar instanceof wh) {
            wh whVar = (wh) qhVar;
            int size = whVar.B.size();
            while (i < size) {
                b(whVar.L(i), arrayList);
                i++;
            }
            return;
        }
        if (w(qhVar) || !nc.k(qhVar.j)) {
            return;
        }
        int size2 = arrayList.size();
        while (i < size2) {
            qhVar.c(arrayList.get(i));
            i++;
        }
    }

    @Override // defpackage.nc
    public void c(ViewGroup viewGroup, Object obj) {
        uh.a(viewGroup, (qh) obj);
    }

    @Override // defpackage.nc
    public boolean e(Object obj) {
        return obj instanceof qh;
    }

    @Override // defpackage.nc
    public Object g(Object obj) {
        if (obj != null) {
            return ((qh) obj).clone();
        }
        return null;
    }

    @Override // defpackage.nc
    public Object l(Object obj, Object obj2, Object obj3) {
        qh qhVar = (qh) obj;
        qh qhVar2 = (qh) obj2;
        qh qhVar3 = (qh) obj3;
        if (qhVar != null && qhVar2 != null) {
            wh whVar = new wh();
            whVar.K(qhVar);
            whVar.K(qhVar2);
            whVar.O(1);
            qhVar = whVar;
        } else if (qhVar == null) {
            qhVar = qhVar2 != null ? qhVar2 : null;
        }
        if (qhVar3 == null) {
            return qhVar;
        }
        wh whVar2 = new wh();
        if (qhVar != null) {
            whVar2.K(qhVar);
        }
        whVar2.K(qhVar3);
        return whVar2;
    }

    @Override // defpackage.nc
    public Object m(Object obj, Object obj2, Object obj3) {
        wh whVar = new wh();
        if (obj != null) {
            whVar.K((qh) obj);
        }
        if (obj2 != null) {
            whVar.K((qh) obj2);
        }
        if (obj3 != null) {
            whVar.K((qh) obj3);
        }
        return whVar;
    }

    @Override // defpackage.nc
    public void n(Object obj, View view) {
        if (obj != null) {
            ((qh) obj).y(view);
        }
    }

    @Override // defpackage.nc
    public void o(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        qh qhVar = (qh) obj;
        int i = 0;
        if (qhVar instanceof wh) {
            wh whVar = (wh) qhVar;
            int size = whVar.B.size();
            while (i < size) {
                o(whVar.L(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (w(qhVar)) {
            return;
        }
        ArrayList<View> arrayList3 = qhVar.j;
        if (arrayList3.size() != arrayList.size() || !arrayList3.containsAll(arrayList)) {
            return;
        }
        int size2 = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size2) {
            qhVar.c(arrayList2.get(i));
            i++;
        }
        int size3 = arrayList.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                return;
            } else {
                qhVar.y(arrayList.get(size3));
            }
        }
    }

    @Override // defpackage.nc
    public void p(Object obj, View view, ArrayList<View> arrayList) {
        ((qh) obj).b(new b(this, view, arrayList));
    }

    @Override // defpackage.nc
    public void q(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((qh) obj).b(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // defpackage.nc
    public void r(Object obj, Rect rect) {
        if (obj != null) {
            ((qh) obj).D(new d(this, rect));
        }
    }

    @Override // defpackage.nc
    public void s(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            j(view, rect);
            ((qh) obj).D(new a(this, rect));
        }
    }

    @Override // defpackage.nc
    public void t(Object obj, View view, ArrayList<View> arrayList) {
        wh whVar = (wh) obj;
        ArrayList<View> arrayList2 = whVar.j;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            nc.d(arrayList2, arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(whVar, arrayList);
    }

    @Override // defpackage.nc
    public void u(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        wh whVar = (wh) obj;
        if (whVar != null) {
            whVar.j.clear();
            whVar.j.addAll(arrayList2);
            o(whVar, arrayList, arrayList2);
        }
    }

    @Override // defpackage.nc
    public Object v(Object obj) {
        if (obj == null) {
            return null;
        }
        wh whVar = new wh();
        whVar.K((qh) obj);
        return whVar;
    }
}
