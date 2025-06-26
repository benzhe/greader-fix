package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* loaded from: classes2.dex */
public final class my6 extends Animation {
    public final /* synthetic */ View e;
    public final /* synthetic */ int f;

    public my6(View view, int i) {
        this.e = view;
        this.f = i;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        if (f == 1.0f) {
            this.e.setVisibility(8);
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.e.getLayoutParams();
        int i = this.f;
        layoutParams.height = i - ((int) (i * f));
        this.e.requestLayout();
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return true;
    }
}
