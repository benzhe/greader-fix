package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewGroup;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;

/* loaded from: classes2.dex */
public class eq6 extends AnimatorListenerAdapter {
    public final /* synthetic */ HomeTabletActivity a;

    public eq6(HomeTabletActivity homeTabletActivity) {
        this.a = homeTabletActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        HomeTabletActivity homeTabletActivity = this.a;
        int i = HomeTabletActivity.m0;
        homeTabletActivity.T();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.a.d0.setVisibility(0);
        ViewGroup.LayoutParams layoutParams = this.a.X.getLayoutParams();
        HomeTabletActivity homeTabletActivity = this.a;
        layoutParams.width = homeTabletActivity.h0 - homeTabletActivity.i0;
    }
}
