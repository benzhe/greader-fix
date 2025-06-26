package defpackage;

import android.R;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import com.peekandpop.shalskar.peekandpop.R$id;
import com.peekandpop.shalskar.peekandpop.R$layout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.Timer;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: classes2.dex */
public class t07 {
    public b a;
    public View b;
    public ViewGroup c;
    public ViewGroup d;
    public v07 e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public ArrayList<x07> j;
    public ArrayList<w07> k;
    public w07 l;
    public d m;
    public c n;
    public GestureDetector o;
    public Timer p = new Timer();
    public int q;
    public float[] r;
    public int s;
    public int t;
    public int u;
    public long v;

    public class a implements Animator.AnimatorListener {
        public a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            t07.this.c();
            animator.cancel();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static class b {
        public final Activity a;
        public ViewGroup c;
        public int b = -1;
        public boolean e = true;
        public ArrayList<View> d = new ArrayList<>();

        public b(Activity activity) {
            this.a = activity;
        }
    }

    public class c extends GestureDetector.SimpleOnGestureListener {
        public int a;
        public View b;

        public c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            Objects.requireNonNull(t07.this);
            return true;
        }
    }

    public interface d {
    }

    public class e implements View.OnTouchListener {
        public int e;
        public Runnable f;
        public boolean g;

        public class a implements Runnable {
            public final /* synthetic */ View e;

            public a(View view) {
                this.e = view;
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                eVar.g = false;
                t07.this.b(this.e, eVar.e);
                e.this.f = null;
            }
        }

        public e(int i) {
            this.e = i;
        }

        public final void a(View view) {
            t07.this.p.cancel();
            if (this.f != null) {
                a aVar = new a(view);
                this.f = aVar;
                t07.this.a.a.runOnUiThread(aVar);
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            Objects.requireNonNull(t07.this);
            if (motionEvent.getAction() == 0) {
                this.g = false;
                a(view);
                t07.this.p = new Timer();
                t07.this.p.schedule(new u07(this, view), 200L);
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                a(view);
            }
            if (this.g) {
                t07 t07Var = t07.this;
                int i = this.e;
                Objects.requireNonNull(t07Var);
                if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                    t07Var.b(view, i);
                } else if (motionEvent.getAction() == 2) {
                    t07Var.t = (int) motionEvent.getRawX();
                    t07Var.u = (int) motionEvent.getRawY();
                }
                GestureDetector gestureDetector = t07Var.o;
                if (gestureDetector != null) {
                    gestureDetector.onTouchEvent(motionEvent);
                }
            }
            return this.g;
        }
    }

    public t07(b bVar) {
        this.a = bVar;
        Objects.requireNonNull(bVar);
        this.m = null;
        Objects.requireNonNull(this.a);
        Objects.requireNonNull(this.a);
        this.n = new c();
        this.o = new GestureDetector(this.a.a, this.n);
        for (int i = 0; i < this.a.d.size(); i++) {
            View view = this.a.d.get(i);
            view.setOnTouchListener(new e(-1));
            if (!view.hasOnClickListeners()) {
                view.setOnClickListener(new s07(this));
            }
        }
        this.o.setIsLongpressEnabled(false);
        this.j = new ArrayList<>();
        this.k = new ArrayList<>();
        b bVar2 = this.a;
        this.f = bVar2.e;
        this.g = true;
        this.h = true;
        Objects.requireNonNull(bVar2);
        this.i = true;
        this.q = this.a.a.getResources().getConfiguration().orientation;
        this.s = (int) TypedValue.applyDimension(1, 12, this.a.a.getApplicationContext().getResources().getDisplayMetrics());
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.a.a);
        ViewGroup viewGroup = (ViewGroup) this.a.a.findViewById(R.id.content).getRootView();
        this.c = viewGroup;
        FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R$layout.peek_background, viewGroup, false);
        this.d = frameLayout;
        View viewInflate = layoutInflaterFrom.inflate(this.a.b, (ViewGroup) frameLayout, false);
        this.b = viewInflate;
        viewInflate.setId(R$id.peek_view);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
        layoutParams.gravity = 17;
        if (this.q == 2) {
            layoutParams.topMargin = this.s;
        }
        this.d.addView(this.b, layoutParams);
        this.c.addView(this.d);
        this.d.setVisibility(8);
        this.d.setAlpha(0.0f);
        this.d.requestLayout();
        Context applicationContext = this.a.a.getApplicationContext();
        ViewGroup viewGroup2 = this.d;
        this.e = new v07(applicationContext, viewGroup2, this.b);
        viewGroup2.setElevation(10.0f);
        this.b.setElevation(10.0f);
        this.b.getViewTreeObserver().addOnGlobalLayoutListener(new r07(this));
        c();
    }

    public void a(View view, int i) {
        view.setOnTouchListener(new e(i));
        if (view.hasOnClickListeners()) {
            return;
        }
        view.setOnClickListener(new s07(this));
    }

    public void b(View view, int i) {
        d dVar = this.m;
        if (dVar != null) {
            dr6 dr6Var = (dr6) dVar;
            GifImageView gifImageView = dr6Var.c;
            if (gifImageView != null) {
                gifImageView.setImageDrawable(null);
            }
            r78 r78Var = dr6Var.b;
            if (r78Var != null && !r78Var.a()) {
                r78 r78Var2 = dr6Var.b;
                r78Var2.f = false;
                r78Var2.q.removeMessages(-1);
                r78Var2.k.e();
                r78Var2.j.recycle();
            }
            if (dr6Var.a != null) {
                ux6.n().b(dr6Var.a);
                dr6Var.a = null;
            }
        }
        this.l = null;
        Iterator<w07> it = this.k.iterator();
        while (it.hasNext()) {
            Timer timer = it.next().a;
            if (timer != null) {
                timer.cancel();
            }
        }
        Iterator<x07> it2 = this.j.iterator();
        while (it2.hasNext()) {
            Timer timer2 = it2.next().a;
            if (timer2 != null) {
                timer2.cancel();
            }
        }
        v07 v07Var = this.e;
        a aVar = new a();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(v07Var.a, "alpha", 0.0f);
        long j = 250;
        objectAnimatorOfFloat.setDuration(j);
        objectAnimatorOfFloat.addListener(aVar);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator(1.5f));
        objectAnimatorOfFloat.start();
        ObjectAnimator objectAnimatorOfFloat2 = v07Var.c.getResources().getConfiguration().orientation == 1 ? ObjectAnimator.ofFloat(v07Var.b, "translationY", 0.0f) : ObjectAnimator.ofFloat(v07Var.b, "translationX", 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(v07Var.b, "scaleY", 0.75f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(v07Var.b, "scaleX", 0.75f);
        objectAnimatorOfFloat4.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat4.setDuration(j);
        objectAnimatorOfFloat3.setDuration(j);
        objectAnimatorOfFloat2.setDuration(j);
        objectAnimatorOfFloat4.start();
        objectAnimatorOfFloat3.start();
        objectAnimatorOfFloat2.start();
        this.v = System.currentTimeMillis();
    }

    public final void c() {
        this.d.setVisibility(8);
        this.t = 0;
        this.u = 0;
        for (int i = 0; i < this.j.size(); i++) {
            Timer timer = this.j.get(i).a;
            if (timer != null) {
                timer.cancel();
                this.j.get(i).a = null;
            }
        }
        float[] fArr = this.r;
        if (fArr != null) {
            this.b.setX(fArr[0]);
            this.b.setY(this.r[1]);
        }
        this.b.setScaleX(0.85f);
        this.b.setScaleY(0.85f);
    }
}
