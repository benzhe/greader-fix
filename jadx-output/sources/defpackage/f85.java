package defpackage;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;

/* loaded from: classes.dex */
public class f85 implements TypeEvaluator<Float> {
    public FloatEvaluator a = new FloatEvaluator();

    public f85(e85 e85Var) {
    }

    @Override // android.animation.TypeEvaluator
    public Float evaluate(float f, Float f2, Float f3) {
        float fFloatValue = this.a.evaluate(f, (Number) f2, (Number) f3).floatValue();
        if (fFloatValue < 0.1f) {
            fFloatValue = 0.0f;
        }
        return Float.valueOf(fFloatValue);
    }
}
