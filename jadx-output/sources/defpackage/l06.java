package defpackage;

import android.R;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.Objects;

/* loaded from: classes.dex */
public class l06 implements View.OnTouchListener {
    public int e;
    public int f;
    public int g;
    public long h;
    public View i;
    public b j;
    public int k = 1;
    public float l;
    public float m;
    public boolean n;
    public int o;
    public Object p;
    public VelocityTracker q;
    public float r;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ float a;
        public final /* synthetic */ float b;
        public final /* synthetic */ float c;
        public final /* synthetic */ float d;

        public a(float f, float f2, float f3, float f4) {
            this.a = f;
            this.b = f2;
            this.c = f3;
            this.d = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = (valueAnimator.getAnimatedFraction() * this.b) + this.a;
            float animatedFraction2 = (valueAnimator.getAnimatedFraction() * this.d) + this.c;
            l06.this.c(animatedFraction);
            l06.this.i.setAlpha(animatedFraction2);
        }
    }

    public interface b {
    }

    public l06(View view, Object obj, b bVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.e = viewConfiguration.getScaledTouchSlop();
        this.f = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.g = viewConfiguration.getScaledMaximumFlingVelocity();
        this.h = view.getContext().getResources().getInteger(R.integer.config_shortAnimTime);
        this.i = view;
        this.p = obj;
        this.j = bVar;
    }

    public final void a(float f, float f2, AnimatorListenerAdapter animatorListenerAdapter) {
        float fB = b();
        float f3 = f - fB;
        float alpha = this.i.getAlpha();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(this.h);
        valueAnimatorOfFloat.addUpdateListener(new a(fB, f3, alpha, f2 - alpha));
        if (animatorListenerAdapter != null) {
            valueAnimatorOfFloat.addListener(animatorListenerAdapter);
        }
        valueAnimatorOfFloat.start();
    }

    public float b() {
        return this.i.getTranslationX();
    }

    public void c(float f) {
        this.i.setTranslationX(f);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        motionEvent.offsetLocation(this.r, 0.0f);
        if (this.k < 2) {
            this.k = this.i.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.l = motionEvent.getRawX();
            this.m = motionEvent.getRawY();
            Objects.requireNonNull(this.j);
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.q = velocityTrackerObtain;
            velocityTrackerObtain.addMovement(motionEvent);
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                VelocityTracker velocityTracker = this.q;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    float rawX = motionEvent.getRawX() - this.l;
                    float rawY = motionEvent.getRawY() - this.m;
                    if (Math.abs(rawX) > this.e && Math.abs(rawY) < Math.abs(rawX) / 2.0f) {
                        this.n = true;
                        this.o = rawX > 0.0f ? this.e : -this.e;
                        this.i.getParent().requestDisallowInterceptTouchEvent(true);
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        motionEventObtain.setAction((motionEvent.getActionIndex() << 8) | 3);
                        this.i.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (this.n) {
                        this.r = rawX;
                        c(rawX - this.o);
                        this.i.setAlpha(Math.max(0.0f, Math.min(1.0f, 1.0f - ((Math.abs(rawX) * 2.0f) / this.k))));
                        return true;
                    }
                }
            } else if (actionMasked == 3 && this.q != null) {
                a(0.0f, 1.0f, null);
                this.q.recycle();
                this.q = null;
                this.r = 0.0f;
                this.l = 0.0f;
                this.m = 0.0f;
                this.n = false;
            }
        } else if (this.q != null) {
            float rawX2 = motionEvent.getRawX() - this.l;
            this.q.addMovement(motionEvent);
            this.q.computeCurrentVelocity(1000);
            float xVelocity = this.q.getXVelocity();
            float fAbs = Math.abs(xVelocity);
            float fAbs2 = Math.abs(this.q.getYVelocity());
            if (Math.abs(rawX2) > this.k / 2 && this.n) {
                z = rawX2 > 0.0f;
            } else if (this.f > fAbs || fAbs > this.g || fAbs2 >= fAbs || fAbs2 >= fAbs || !this.n) {
                z = false;
                z = false;
            } else {
                z = ((xVelocity > 0.0f ? 1 : (xVelocity == 0.0f ? 0 : -1)) < 0) == ((rawX2 > 0.0f ? 1 : (rawX2 == 0.0f ? 0 : -1)) < 0);
                z = this.q.getXVelocity() > 0.0f;
            }
            if (z) {
                a(z ? this.k : -this.k, 0.0f, new k06(this));
            } else if (this.n) {
                a(0.0f, 1.0f, null);
            }
            VelocityTracker velocityTracker2 = this.q;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
            }
            this.q = null;
            this.r = 0.0f;
            this.l = 0.0f;
            this.m = 0.0f;
            this.n = false;
        }
        return false;
    }
}
