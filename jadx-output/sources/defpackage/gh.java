package defpackage;

import android.animation.ValueAnimator;
import defpackage.ih;

/* loaded from: classes.dex */
public class gh implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ ih.a a;
    public final /* synthetic */ ih b;

    public gh(ih ihVar, ih.a aVar) {
        this.b = ihVar;
        this.a = aVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.b.d(fFloatValue, this.a);
        this.b.a(fFloatValue, this.a, false);
        this.b.invalidateSelf();
    }
}
