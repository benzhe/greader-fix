package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class ft0 {
    public static void a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        et0 et0Var = new et0(view, onGlobalLayoutListener);
        ViewTreeObserver viewTreeObserverA = et0Var.a();
        if (viewTreeObserverA != null) {
            viewTreeObserverA.addOnGlobalLayoutListener(et0Var);
        }
    }

    public static void b(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        ht0 ht0Var = new ht0(view, onScrollChangedListener);
        ViewTreeObserver viewTreeObserverA = ht0Var.a();
        if (viewTreeObserverA != null) {
            viewTreeObserverA.addOnScrollChangedListener(ht0Var);
        }
    }
}
