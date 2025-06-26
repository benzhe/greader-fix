package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class fb extends v9 {
    public static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    public static final gb<sa> o = new a();
    public static final hb<n4<sa>, sa> p = new b();
    public final AccessibilityManager h;
    public final View i;
    public c j;
    public final Rect d = new Rect();
    public final Rect e = new Rect();
    public final Rect f = new Rect();
    public final int[] g = new int[2];
    public int k = Integer.MIN_VALUE;
    public int l = Integer.MIN_VALUE;
    private int m = Integer.MIN_VALUE;

    public static class a implements gb<sa> {
        public void a(Object obj, Rect rect) {
            ((sa) obj).a.getBoundsInParent(rect);
        }
    }

    public static class b implements hb<n4<sa>, sa> {
    }

    public class c extends ta {
        public c() {
        }

        @Override // defpackage.ta
        public sa a(int i) {
            return new sa(AccessibilityNodeInfo.obtain(fb.this.s(i).a));
        }

        @Override // defpackage.ta
        public sa b(int i) {
            int i2 = i == 2 ? fb.this.k : fb.this.l;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return new sa(AccessibilityNodeInfo.obtain(fb.this.s(i2).a));
        }

        @Override // defpackage.ta
        public boolean c(int i, int i2, Bundle bundle) {
            int i3;
            fb fbVar = fb.this;
            if (i == -1) {
                View view = fbVar.i;
                AtomicInteger atomicInteger = ha.a;
                return view.performAccessibilityAction(i2, bundle);
            }
            boolean z = true;
            if (i2 == 1) {
                return fbVar.x(i);
            }
            if (i2 == 2) {
                return fbVar.k(i);
            }
            if (i2 != 64) {
                return i2 != 128 ? fbVar.t(i, i2, bundle) : fbVar.j(i);
            }
            if (fbVar.h.isEnabled() && fbVar.h.isTouchExplorationEnabled() && (i3 = fbVar.k) != i) {
                if (i3 != Integer.MIN_VALUE) {
                    fbVar.j(i3);
                }
                fbVar.k = i;
                fbVar.i.invalidate();
                fbVar.y(i, 32768);
            } else {
                z = false;
            }
            return z;
        }
    }

    public fb(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.i = view;
        this.h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        AtomicInteger atomicInteger = ha.a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    @Override // defpackage.v9
    public ta b(View view) {
        if (this.j == null) {
            this.j = new c();
        }
        return this.j;
    }

    @Override // defpackage.v9
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // defpackage.v9
    public void d(View view, sa saVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
        u(saVar);
    }

    public final boolean j(int i) {
        if (this.k != i) {
            return false;
        }
        this.k = Integer.MIN_VALUE;
        this.i.invalidate();
        y(i, 65536);
        return true;
    }

    public final boolean k(int i) {
        if (this.l != i) {
            return false;
        }
        this.l = Integer.MIN_VALUE;
        w(i, false);
        y(i, 8);
        return true;
    }

    public final AccessibilityEvent l(int i, int i2) {
        if (i == -1) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
            this.i.onInitializeAccessibilityEvent(accessibilityEventObtain);
            return accessibilityEventObtain;
        }
        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i2);
        sa saVarS = s(i);
        accessibilityEventObtain2.getText().add(saVarS.j());
        accessibilityEventObtain2.setContentDescription(saVarS.g());
        accessibilityEventObtain2.setScrollable(saVarS.a.isScrollable());
        accessibilityEventObtain2.setPassword(saVarS.a.isPassword());
        accessibilityEventObtain2.setEnabled(saVarS.l());
        accessibilityEventObtain2.setChecked(saVarS.a.isChecked());
        if (accessibilityEventObtain2.getText().isEmpty() && accessibilityEventObtain2.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain2.setClassName(saVarS.e());
        accessibilityEventObtain2.setSource(this.i, i);
        accessibilityEventObtain2.setPackageName(this.i.getContext().getPackageName());
        return accessibilityEventObtain2;
    }

    public final sa m(int i) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        sa saVar = new sa(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        saVar.a.setFocusable(true);
        saVar.a.setClassName("android.view.View");
        Rect rect = n;
        saVar.a.setBoundsInParent(rect);
        saVar.a.setBoundsInScreen(rect);
        saVar.v(this.i);
        v(i, saVar);
        if (saVar.j() == null && saVar.g() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        saVar.a.getBoundsInParent(this.e);
        if (this.e.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int iD = saVar.d();
        if ((iD & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((iD & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        saVar.a.setPackageName(this.i.getContext().getPackageName());
        View view = this.i;
        saVar.c = i;
        saVar.a.setSource(view, i);
        boolean z = false;
        if (this.k == i) {
            saVar.a.setAccessibilityFocused(true);
            saVar.a.addAction(128);
        } else {
            saVar.a.setAccessibilityFocused(false);
            saVar.a.addAction(64);
        }
        boolean z2 = this.l == i;
        if (z2) {
            saVar.a.addAction(2);
        } else if (saVar.m()) {
            saVar.a.addAction(1);
        }
        saVar.a.setFocused(z2);
        this.i.getLocationOnScreen(this.g);
        saVar.a.getBoundsInScreen(this.d);
        if (this.d.equals(rect)) {
            saVar.a.getBoundsInParent(this.d);
            if (saVar.b != -1) {
                sa saVar2 = new sa(AccessibilityNodeInfo.obtain());
                for (int i2 = saVar.b; i2 != -1; i2 = saVar2.b) {
                    View view2 = this.i;
                    saVar2.b = -1;
                    saVar2.a.setParent(view2, -1);
                    saVar2.a.setBoundsInParent(n);
                    v(i2, saVar2);
                    saVar2.a.getBoundsInParent(this.e);
                    Rect rect2 = this.d;
                    Rect rect3 = this.e;
                    rect2.offset(rect3.left, rect3.top);
                }
                saVar2.a.recycle();
            }
            this.d.offset(this.g[0] - this.i.getScrollX(), this.g[1] - this.i.getScrollY());
        }
        if (this.i.getLocalVisibleRect(this.f)) {
            this.f.offset(this.g[0] - this.i.getScrollX(), this.g[1] - this.i.getScrollY());
            if (this.d.intersect(this.f)) {
                saVar.a.setBoundsInScreen(this.d);
                Rect rect4 = this.d;
                if (rect4 != null && !rect4.isEmpty() && this.i.getWindowVisibility() == 0) {
                    Object parent = this.i.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view3 = (View) parent;
                            if (view3.getAlpha() <= 0.0f || view3.getVisibility() != 0) {
                                break;
                            }
                            parent = view3.getParent();
                        } else if (parent != null) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    saVar.a.setVisibleToUser(true);
                }
            }
        }
        return saVar;
    }

    public final boolean n(MotionEvent motionEvent) {
        int i;
        if (this.h.isEnabled() && this.h.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action != 7 && action != 9) {
                if (action != 10 || (i = this.m) == Integer.MIN_VALUE) {
                    return false;
                }
                if (i != Integer.MIN_VALUE) {
                    this.m = Integer.MIN_VALUE;
                    y(Integer.MIN_VALUE, 128);
                    y(i, RecyclerView.a0.FLAG_TMP_DETACHED);
                }
                return true;
            }
            int iO = o(motionEvent.getX(), motionEvent.getY());
            int i2 = this.m;
            if (i2 != iO) {
                this.m = iO;
                y(iO, 128);
                y(i2, RecyclerView.a0.FLAG_TMP_DETACHED);
            }
            if (iO != Integer.MIN_VALUE) {
                return true;
            }
        }
        return false;
    }

    public abstract int o(float f, float f2);

    public abstract void p(List<Integer> list);

    public final void q(int i) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.h.isEnabled() || (parent = this.i.getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventL = l(i, RecyclerView.a0.FLAG_MOVED);
        accessibilityEventL.setContentChangeTypes(0);
        parent.requestSendAccessibilityEvent(this.i, accessibilityEventL);
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(int r20, android.graphics.Rect r21) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fb.r(int, android.graphics.Rect):boolean");
    }

    public sa s(int i) {
        if (i != -1) {
            return m(i);
        }
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(this.i);
        sa saVar = new sa(accessibilityNodeInfoObtain);
        View view = this.i;
        AtomicInteger atomicInteger = ha.a;
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        p(arrayList);
        if (saVar.a.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            saVar.a.addChild(this.i, ((Integer) arrayList.get(i2)).intValue());
        }
        return saVar;
    }

    public abstract boolean t(int i, int i2, Bundle bundle);

    public void u(sa saVar) {
    }

    public abstract void v(int i, sa saVar);

    public void w(int i, boolean z) {
    }

    public final boolean x(int i) {
        int i2;
        if ((!this.i.isFocused() && !this.i.requestFocus()) || (i2 = this.l) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            k(i2);
        }
        this.l = i;
        w(i, true);
        y(i, 8);
        return true;
    }

    public final boolean y(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.h.isEnabled() || (parent = this.i.getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.i, l(i, i2));
    }

    public final void z(int i) {
        int i2 = this.m;
        if (i2 == i) {
            return;
        }
        this.m = i;
        y(i, 128);
        y(i2, RecyclerView.a0.FLAG_TMP_DETACHED);
    }
}
