package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class lh extends ki {

    public class a extends th {
        public final /* synthetic */ View a;

        public a(lh lhVar, View view) {
            this.a = view;
        }

        @Override // qh.d
        public void c(qh qhVar) {
            View view = this.a;
            ii iiVar = ci.a;
            iiVar.e(view, 1.0f);
            iiVar.a(this.a);
            qhVar.x(this);
        }
    }

    public static class b extends AnimatorListenerAdapter {
        public final View a;
        public boolean b = false;

        public b(View view) {
            this.a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ci.a.e(this.a, 1.0f);
            if (this.b) {
                this.a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = this.a;
            AtomicInteger atomicInteger = ha.a;
            if (view.hasOverlappingRendering() && this.a.getLayerType() == 0) {
                this.b = true;
                this.a.setLayerType(2, null);
            }
        }
    }

    public lh(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.B = i;
    }

    @Override // defpackage.ki
    public Animator M(ViewGroup viewGroup, View view, yh yhVar, yh yhVar2) {
        ci.a.c(view);
        Float f = (Float) yhVar.a.get("android:fade:transitionAlpha");
        return N(view, f != null ? f.floatValue() : 1.0f, 0.0f);
    }

    public final Animator N(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ci.a.e(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, ci.b, f2);
        objectAnimatorOfFloat.addListener(new b(view));
        b(new a(this, view));
        return objectAnimatorOfFloat;
    }

    @Override // defpackage.qh
    public void h(yh yhVar) {
        K(yhVar);
        yhVar.a.put("android:fade:transitionAlpha", Float.valueOf(ci.a(yhVar.b)));
    }
}
