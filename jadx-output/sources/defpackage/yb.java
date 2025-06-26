package defpackage;

import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public class yb implements Animation.AnimationListener {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ Fragment b;
    public final /* synthetic */ xb c;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            if (yb.this.b.getAnimatingAway() != null) {
                yb.this.b.setAnimatingAway(null);
                yb ybVar = yb.this;
                xb xbVar = ybVar.c;
                Fragment fragment = ybVar.b;
                xbVar.i0(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
            }
        }
    }

    public yb(xb xbVar, ViewGroup viewGroup, Fragment fragment) {
        this.c = xbVar;
        this.a = viewGroup;
        this.b = fragment;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.a.post(new a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
