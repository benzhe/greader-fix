package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.R$id;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.sa;
import defpackage.v9;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ha {
    public static Field c;
    public static ThreadLocal<Rect> e;
    public static final AtomicInteger a = new AtomicInteger(1);
    public static WeakHashMap<View, ma> b = null;
    public static boolean d = false;
    public static final int[] f = {R$id.accessibility_custom_action_0, R$id.accessibility_custom_action_1, R$id.accessibility_custom_action_2, R$id.accessibility_custom_action_3, R$id.accessibility_custom_action_4, R$id.accessibility_custom_action_5, R$id.accessibility_custom_action_6, R$id.accessibility_custom_action_7, R$id.accessibility_custom_action_8, R$id.accessibility_custom_action_9, R$id.accessibility_custom_action_10, R$id.accessibility_custom_action_11, R$id.accessibility_custom_action_12, R$id.accessibility_custom_action_13, R$id.accessibility_custom_action_14, R$id.accessibility_custom_action_15, R$id.accessibility_custom_action_16, R$id.accessibility_custom_action_17, R$id.accessibility_custom_action_18, R$id.accessibility_custom_action_19, R$id.accessibility_custom_action_20, R$id.accessibility_custom_action_21, R$id.accessibility_custom_action_22, R$id.accessibility_custom_action_23, R$id.accessibility_custom_action_24, R$id.accessibility_custom_action_25, R$id.accessibility_custom_action_26, R$id.accessibility_custom_action_27, R$id.accessibility_custom_action_28, R$id.accessibility_custom_action_29, R$id.accessibility_custom_action_30, R$id.accessibility_custom_action_31};

    public class a implements View.OnApplyWindowInsetsListener {
        public final /* synthetic */ ea a;

        public a(ea eaVar) {
            this.a = eaVar;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            Objects.requireNonNull(windowInsets);
            return this.a.a(view, new qa(windowInsets)).j();
        }
    }

    public interface c {
        boolean a(View view, KeyEvent keyEvent);
    }

    public static class d {
        public static final ArrayList<WeakReference<View>> d = new ArrayList<>();
        public WeakHashMap<View, Boolean> a = null;
        public SparseArray<WeakReference<View>> b = null;
        public WeakReference<KeyEvent> c = null;

        public final View a(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View viewA = a(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewA != null) {
                            return viewA;
                        }
                    }
                }
                if (b(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        public final boolean b(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((c) arrayList.get(size)).a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        new WeakHashMap();
    }

    public static void a(View view, sa.a aVar) {
        v9 v9VarG = g(view);
        if (v9VarG == null) {
            v9VarG = new v9();
        }
        s(view, v9VarG);
        p(aVar.a(), view);
        i(view).add(aVar);
        k(view, 0);
    }

    public static ma b(View view) {
        if (b == null) {
            b = new WeakHashMap<>();
        }
        ma maVar = b.get(view);
        if (maVar != null) {
            return maVar;
        }
        ma maVar2 = new ma(view);
        b.put(view, maVar2);
        return maVar2;
    }

    public static void c(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            Object parent = view.getParent();
            if (parent instanceof View) {
                v((View) parent);
            }
        }
    }

    public static void d(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            Object parent = view.getParent();
            if (parent instanceof View) {
                v((View) parent);
            }
        }
    }

    public static qa e(View view, qa qaVar) {
        WindowInsets windowInsetsJ = qaVar.j();
        return (windowInsetsJ == null || view.dispatchApplyWindowInsets(windowInsetsJ).equals(windowInsetsJ)) ? qaVar : new qa(windowInsetsJ);
    }

    public static boolean f(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList<WeakReference<View>> arrayList = d.d;
        int i = R$id.tag_unhandled_key_event_manager;
        d dVar = (d) view.getTag(i);
        if (dVar == null) {
            dVar = new d();
            view.setTag(i, dVar);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap<View, Boolean> weakHashMap = dVar.a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList2 = d.d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    if (dVar.a == null) {
                        dVar.a = new WeakHashMap<>();
                    }
                    int size = arrayList2.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        ArrayList<WeakReference<View>> arrayList3 = d.d;
                        View view2 = arrayList3.get(size).get();
                        if (view2 == null) {
                            arrayList3.remove(size);
                        } else {
                            dVar.a.put(view2, Boolean.TRUE);
                            for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                dVar.a.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
        View viewA = dVar.a(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewA != null && !KeyEvent.isModifierKey(keyCode)) {
                if (dVar.b == null) {
                    dVar.b = new SparseArray<>();
                }
                dVar.b.put(keyCode, new WeakReference<>(viewA));
            }
        }
        return viewA != null;
    }

    public static v9 g(View view) {
        View.AccessibilityDelegate accessibilityDelegateH = h(view);
        if (accessibilityDelegateH == null) {
            return null;
        }
        return accessibilityDelegateH instanceof v9.a ? ((v9.a) accessibilityDelegateH).a : new v9(accessibilityDelegateH);
    }

    public static View.AccessibilityDelegate h(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        if (d) {
            return null;
        }
        if (c == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                c = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                d = true;
                return null;
            }
        }
        try {
            Object obj = c.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            d = true;
            return null;
        }
    }

    public static List<sa.a> i(View view) {
        int i = R$id.tag_accessibility_actions;
        ArrayList arrayList = (ArrayList) view.getTag(i);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(i, arrayList2);
        return arrayList2;
    }

    public static Rect j() {
        if (e == null) {
            e = new ThreadLocal<>();
        }
        Rect rect = e.get();
        if (rect == null) {
            rect = new Rect();
            e.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static void k(View view, int i) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = new ja(R$id.tag_accessibility_pane_title, CharSequence.class, 8, 28).c(view) != null;
            if (view.getAccessibilityLiveRegion() != 0 || (z && view.getVisibility() == 0)) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z ? 32 : RecyclerView.a0.FLAG_MOVED);
                accessibilityEventObtain.setContentChangeTypes(i);
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                }
            }
        }
    }

    public static void l(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
            return;
        }
        Rect rectJ = j();
        boolean z = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectJ.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectJ.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        c(view, i);
        if (z && rectJ.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectJ);
        }
    }

    public static void m(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
            return;
        }
        Rect rectJ = j();
        boolean z = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectJ.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectJ.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        d(view, i);
        if (z && rectJ.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectJ);
        }
    }

    public static qa n(View view, qa qaVar) {
        WindowInsets windowInsetsJ = qaVar.j();
        if (windowInsetsJ == null) {
            return qaVar;
        }
        WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsetsJ);
        return !windowInsetsOnApplyWindowInsets.equals(windowInsetsJ) ? new qa(windowInsetsOnApplyWindowInsets) : qaVar;
    }

    public static void o(View view, int i) {
        p(i, view);
        k(view, 0);
    }

    public static void p(int i, View view) {
        List<sa.a> listI = i(view);
        for (int i2 = 0; i2 < listI.size(); i2++) {
            if (listI.get(i2).a() == i) {
                listI.remove(i2);
                return;
            }
        }
    }

    public static void q(View view, sa.a aVar, CharSequence charSequence, ua uaVar) {
        if (uaVar != null) {
            a(view, new sa.a(null, aVar.b, null, uaVar, aVar.c));
        } else {
            p(aVar.a(), view);
            k(view, 0);
        }
    }

    public static void r(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    public static void s(View view, v9 v9Var) {
        if (v9Var == null && (h(view) instanceof v9.a)) {
            v9Var = new v9();
        }
        view.setAccessibilityDelegate(v9Var == null ? null : v9Var.b);
    }

    public static void t(View view, ea eaVar) {
        if (eaVar == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new a(eaVar));
        }
    }

    public static void u(View view, ga gaVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (gaVar != null ? gaVar.a : null));
        }
    }

    public static void v(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static abstract class b<T> {
        public final int a;
        public final Class<T> b;
        public final int c;

        public b(int i, Class<T> cls, int i2) {
            this.a = i;
            this.b = cls;
            this.c = i2;
        }

        public boolean a(Boolean bool, Boolean bool2) {
            return (bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue());
        }

        public abstract T b(View view);

        public T c(View view) {
            if (Build.VERSION.SDK_INT >= this.c) {
                return b(view);
            }
            T t = (T) view.getTag(this.a);
            if (this.b.isInstance(t)) {
                return t;
            }
            return null;
        }

        public b(int i, Class<T> cls, int i2, int i3) {
            this.a = i;
            this.b = cls;
            this.c = i3;
        }
    }
}
