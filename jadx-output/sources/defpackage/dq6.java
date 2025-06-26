package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.os.Bundle;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;

/* loaded from: classes2.dex */
public class dq6 extends AnimatorListenerAdapter {
    public final /* synthetic */ Bundle a;
    public final /* synthetic */ HomeTabletActivity b;

    public dq6(HomeTabletActivity homeTabletActivity, Bundle bundle) {
        this.b = homeTabletActivity;
        this.a = bundle;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        AnimatorSet animatorSet = this.b.f0;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
        }
        this.b.X(this.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAnimationStart(android.animation.Animator r4) {
        /*
            r3 = this;
            com.noinnion.android.greader.ui.home.HomeTabletActivity r4 = r3.b
            android.content.Context r4 = r4.getApplicationContext()
            boolean r4 = defpackage.n56.n1(r4)
            com.noinnion.android.greader.ui.home.HomeTabletActivity r0 = r3.b
            int r1 = r0.j0
            r2 = 0
            if (r1 <= 0) goto L17
            android.view.View r0 = r0.b0
            r0.setVisibility(r2)
            goto L20
        L17:
            int r1 = r0.k0
            if (r1 <= 0) goto L20
            android.view.View r0 = r0.c0
            r0.setVisibility(r2)
        L20:
            com.noinnion.android.greader.ui.home.HomeTabletActivity r0 = r3.b
            android.view.View r0 = r0.d0
            r1 = 8
            r0.setVisibility(r1)
            if (r4 != 0) goto L3b
            com.noinnion.android.greader.ui.home.HomeTabletActivity r0 = r3.b
            boolean r1 = r0.Z
            if (r1 == 0) goto L3b
            int r4 = r0.i0
            int r1 = r0.j0
            int r4 = r4 - r1
            int r0 = r0.k0
            int r2 = r4 - r0
            goto L4e
        L3b:
            if (r4 == 0) goto L4e
            com.noinnion.android.greader.ui.home.HomeTabletActivity r4 = r3.b
            android.view.View r4 = r4.Y
            android.view.ViewGroup$LayoutParams r4 = r4.getLayoutParams()
            com.noinnion.android.greader.ui.home.HomeTabletActivity r0 = r3.b
            int r1 = r0.h0
            int r0 = r0.j0
            int r1 = r1 - r0
            r4.width = r1
        L4e:
            com.noinnion.android.greader.ui.home.HomeTabletActivity r4 = r3.b
            android.view.View r4 = r4.X
            android.view.ViewGroup$LayoutParams r4 = r4.getLayoutParams()
            r4.width = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dq6.onAnimationStart(android.animation.Animator):void");
    }
}
