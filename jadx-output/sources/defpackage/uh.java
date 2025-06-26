package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.transition.R$id;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class uh {
    public static qh a = new jh();
    public static ThreadLocal<WeakReference<f4<ViewGroup, ArrayList<qh>>>> b = new ThreadLocal<>();
    public static ArrayList<ViewGroup> c = new ArrayList<>();

    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        public qh e;
        public ViewGroup f;

        /* renamed from: uh$a$a, reason: collision with other inner class name */
        public class C0051a extends th {
            public final /* synthetic */ f4 a;

            public C0051a(f4 f4Var) {
                this.a = f4Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // qh.d
            public void c(qh qhVar) {
                ((ArrayList) this.a.get(a.this.f)).remove(qhVar);
                qhVar.x(this);
            }
        }

        public a(qh qhVar, ViewGroup viewGroup) {
            this.e = qhVar;
            this.f = viewGroup;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:103:0x021a  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0247  */
        /* JADX WARN: Removed duplicated region for block: B:139:0x01f4 A[EDGE_INSN: B:139:0x01f4->B:93:0x01f4 BREAK  A[LOOP:1: B:19:0x009a->B:92:0x01ea], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01f9  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 697
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: uh.a.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.f.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f.removeOnAttachStateChangeListener(this);
            uh.c.remove(this.f);
            ArrayList<qh> arrayList = uh.b().get(this.f);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<qh> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().z(this.f);
                }
            }
            this.e.j(true);
        }
    }

    public static void a(ViewGroup viewGroup, qh qhVar) {
        if (c.contains(viewGroup)) {
            return;
        }
        AtomicInteger atomicInteger = ha.a;
        if (viewGroup.isLaidOut()) {
            c.add(viewGroup);
            if (qhVar == null) {
                qhVar = a;
            }
            qh qhVarClone = qhVar.clone();
            ArrayList<qh> orDefault = b().getOrDefault(viewGroup, null);
            if (orDefault != null && orDefault.size() > 0) {
                Iterator<qh> it = orDefault.iterator();
                while (it.hasNext()) {
                    it.next().w(viewGroup);
                }
            }
            if (qhVarClone != null) {
                qhVarClone.i(viewGroup, true);
            }
            int i = R$id.transition_current_scene;
            if (((ph) viewGroup.getTag(i)) != null) {
                throw null;
            }
            viewGroup.setTag(i, null);
            if (qhVarClone != null) {
                a aVar = new a(qhVarClone, viewGroup);
                viewGroup.addOnAttachStateChangeListener(aVar);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
            }
        }
    }

    public static f4<ViewGroup, ArrayList<qh>> b() {
        f4<ViewGroup, ArrayList<qh>> f4Var;
        WeakReference<f4<ViewGroup, ArrayList<qh>>> weakReference = b.get();
        if (weakReference != null && (f4Var = weakReference.get()) != null) {
            return f4Var;
        }
        f4<ViewGroup, ArrayList<qh>> f4Var2 = new f4<>();
        b.set(new WeakReference<>(f4Var2));
        return f4Var2;
    }
}
