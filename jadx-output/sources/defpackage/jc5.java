package defpackage;

import android.animation.ValueAnimator;
import android.view.View;
import com.google.android.material.transformation.FabTransformationBehavior;

/* loaded from: classes.dex */
public class jc5 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ View a;

    public jc5(FabTransformationBehavior fabTransformationBehavior, View view) {
        this.a = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.invalidate();
    }
}
