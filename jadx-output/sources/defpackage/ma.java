package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ma {
    public WeakReference<View> a;
    public int b = -1;

    public class a extends AnimatorListenerAdapter {
        public final /* synthetic */ na a;
        public final /* synthetic */ View b;

        public a(ma maVar, na naVar, View view) {
            this.a = naVar;
            this.b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a.a(this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.b(this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.a.c(this.b);
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ pa a;
        public final /* synthetic */ View b;

        public b(ma maVar, pa paVar, View view) {
            this.a = paVar;
            this.b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((View) o0.this.d.getParent()).invalidate();
        }
    }

    public ma(View view) {
        this.a = new WeakReference<>(view);
    }

    public ma a(float f) {
        View view = this.a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public void b() {
        View view = this.a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public ma c(long j) {
        View view = this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public ma d(na naVar) {
        View view = this.a.get();
        if (view != null) {
            e(view, naVar);
        }
        return this;
    }

    public final void e(View view, na naVar) {
        if (naVar != null) {
            view.animate().setListener(new a(this, naVar, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public ma f(pa paVar) {
        View view = this.a.get();
        if (view != null) {
            view.animate().setUpdateListener(paVar != null ? new b(this, paVar, view) : null);
        }
        return this;
    }

    public ma g(float f) {
        View view = this.a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
