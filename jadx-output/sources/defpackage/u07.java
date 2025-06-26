package defpackage;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import defpackage.t07;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class u07 extends TimerTask {
    public final /* synthetic */ View e;
    public final /* synthetic */ t07.e f;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            u07 u07Var = u07.this;
            t07.e eVar = u07Var.f;
            if (eVar.g) {
                t07 t07Var = t07.this;
                View view = u07Var.e;
                int i = eVar.e;
                t07.d dVar = t07Var.m;
                if (dVar != null) {
                    dr6 dr6Var = (dr6) dVar;
                    Object tag = view.getTag();
                    if (tag != null) {
                        ap6 ap6Var = new ap6(dr6Var.e.getItem(((Integer) tag).intValue()));
                        String strD = ap6Var.d();
                        if (strD == null) {
                            strD = ap6Var.n();
                        }
                        if (!TextUtils.isEmpty(strD)) {
                            hz6 hz6VarJ = hz6.j();
                            tx6 tx6Var = new tx6(strD);
                            dr6Var.a = tx6Var;
                            hz6VarJ.b(tx6Var);
                            hz6VarJ.l(strD, null, null, new cr6(dr6Var));
                        }
                    }
                }
                t07Var.d.setVisibility(0);
                MotionEvent motionEventObtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
                if (t07Var.f) {
                    t07Var.d.setBackground(null);
                    t07Var.d.setBackground(new BitmapDrawable(t07Var.a.a.getResources(), n56.n(t07Var.c)));
                }
                v07 v07Var = t07Var.e;
                v07Var.b.setAlpha(1.0f);
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(v07Var.a, "alpha", 1.0f);
                objectAnimatorOfFloat.setInterpolator(new OvershootInterpolator(1.2f));
                long j = 275;
                objectAnimatorOfFloat.setDuration(j);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(v07Var.b, "scaleX", 1.0f);
                objectAnimatorOfFloat2.setDuration(j);
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(v07Var.b, "scaleY", 1.0f);
                objectAnimatorOfFloat3.setDuration(j);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setInterpolator(new OvershootInterpolator(1.2f));
                animatorSet.play(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3);
                animatorSet.start();
                objectAnimatorOfFloat.start();
                ViewGroup viewGroup = t07Var.a.c;
                if (viewGroup != null) {
                    viewGroup.requestDisallowInterceptTouchEvent(true);
                }
                t07Var.t = 0;
                t07Var.u = 0;
                t07.c cVar = t07Var.n;
                cVar.b = view;
                cVar.a = i;
                u07.this.f.f = null;
            }
        }
    }

    public u07(t07.e eVar, View view) {
        this.f = eVar;
        this.e = view;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        t07.e eVar = this.f;
        eVar.g = true;
        a aVar = new a();
        eVar.f = aVar;
        t07.this.a.a.runOnUiThread(aVar);
    }
}
