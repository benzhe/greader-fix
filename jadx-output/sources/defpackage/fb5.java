package defpackage;

import android.animation.ValueAnimator;
import android.os.Handler;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* loaded from: classes.dex */
public class fb5 implements ValueAnimator.AnimatorUpdateListener {
    public int a = 0;
    public final /* synthetic */ BaseTransientBottomBar b;

    public fb5(BaseTransientBottomBar baseTransientBottomBar) {
        this.b = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        Handler handler = BaseTransientBottomBar.o;
        this.b.c.setTranslationY(iIntValue);
        this.a = iIntValue;
    }
}
