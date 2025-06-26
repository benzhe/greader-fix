package defpackage;

import android.animation.ValueAnimator;
import android.os.Handler;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* loaded from: classes.dex */
public class db5 implements ValueAnimator.AnimatorUpdateListener {
    public int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ BaseTransientBottomBar c;

    public db5(BaseTransientBottomBar baseTransientBottomBar, int i) {
        this.c = baseTransientBottomBar;
        this.b = i;
        this.a = i;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        Handler handler = BaseTransientBottomBar.o;
        this.c.c.setTranslationY(iIntValue);
        this.a = iIntValue;
    }
}
