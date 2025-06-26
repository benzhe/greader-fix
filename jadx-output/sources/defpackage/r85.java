package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Map;

/* loaded from: classes.dex */
public class r85 extends qh {

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ TextView a;

        public a(r85 r85Var, TextView textView) {
            this.a = textView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.a.setScaleX(fFloatValue);
            this.a.setScaleY(fFloatValue);
        }
    }

    public final void K(yh yhVar) {
        View view = yhVar.b;
        if (view instanceof TextView) {
            yhVar.a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // defpackage.qh
    public void e(yh yhVar) {
        K(yhVar);
    }

    @Override // defpackage.qh
    public void h(yh yhVar) {
        K(yhVar);
    }

    @Override // defpackage.qh
    public Animator l(ViewGroup viewGroup, yh yhVar, yh yhVar2) {
        if (yhVar == null || yhVar2 == null || !(yhVar.b instanceof TextView)) {
            return null;
        }
        View view = yhVar2.b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        Map<String, Object> map = yhVar.a;
        Map<String, Object> map2 = yhVar2.a;
        float fFloatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        float fFloatValue2 = map2.get("android:textscale:scale") != null ? ((Float) map2.get("android:textscale:scale")).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new a(this, textView));
        return valueAnimatorOfFloat;
    }
}
