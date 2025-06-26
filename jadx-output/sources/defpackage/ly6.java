package defpackage;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* loaded from: classes2.dex */
public final class ly6 extends Animation {
    public final /* synthetic */ View e;
    public final /* synthetic */ int f;

    public ly6(View view, int i) {
        this.e = view;
        this.f = i;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.e.getLayoutParams().height = f == 1.0f ? -1 : (int) (this.f * f);
        this.e.requestLayout();
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return true;
    }
}
