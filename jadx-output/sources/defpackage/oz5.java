package defpackage;

import android.app.Activity;
import android.app.Application;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import defpackage.i06;
import defpackage.uy5;
import java.util.Objects;

/* loaded from: classes.dex */
public class oz5 implements p17 {
    public final /* synthetic */ q06 a;
    public final /* synthetic */ Activity b;
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener c;
    public final /* synthetic */ lz5 d;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 4) {
                return false;
            }
            uy5 uy5Var = oz5.this.d.o;
            if (uy5Var != null) {
                ((j36) uy5Var).e(uy5.a.UNKNOWN_DISMISS_TYPE);
            }
            oz5 oz5Var = oz5.this;
            lz5.a(oz5Var.d, oz5Var.b);
            return true;
        }
    }

    public class b implements i06.b {
        public b() {
        }

        @Override // i06.b
        public void a() {
            lz5 lz5Var = oz5.this.d;
            if (lz5Var.n == null || lz5Var.o == null) {
                return;
            }
            StringBuilder sbZ = jo.z("Impression timer onFinish for: ");
            sbZ.append(oz5.this.d.n.b.a);
            c50.w0(sbZ.toString());
            ((j36) oz5.this.d.o).a();
        }
    }

    public class c implements i06.b {
        public c() {
        }

        @Override // i06.b
        public void a() {
            uy5 uy5Var;
            lz5 lz5Var = oz5.this.d;
            if (lz5Var.n != null && (uy5Var = lz5Var.o) != null) {
                ((j36) uy5Var).e(uy5.a.AUTO);
            }
            oz5 oz5Var = oz5.this;
            lz5.a(oz5Var.d, oz5Var.b);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oz5 oz5Var = oz5.this;
            c06 c06Var = oz5Var.d.j;
            q06 q06Var = oz5Var.a;
            Activity activity = oz5Var.b;
            if (c06Var.c()) {
                Log.e("FIAM.Display", "Fiam already active. Cannot show new Fiam.");
            } else {
                f06 f06VarB = q06Var.b();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(f06VarB.g.intValue(), f06VarB.h.intValue(), 1003, f06VarB.e.intValue(), -3);
                Rect rectA = c06Var.a(activity);
                if ((f06VarB.f.intValue() & 48) == 48) {
                    layoutParams.y = rectA.top;
                }
                layoutParams.dimAmount = 0.3f;
                layoutParams.gravity = f06VarB.f.intValue();
                layoutParams.windowAnimations = 0;
                WindowManager windowManagerB = c06Var.b(activity);
                windowManagerB.addView(q06Var.f(), layoutParams);
                Rect rectA2 = c06Var.a(activity);
                c50.v0("Inset (top, bottom)", rectA2.top, rectA2.bottom);
                c50.v0("Inset (left, right)", rectA2.left, rectA2.right);
                if (q06Var.a()) {
                    a06 a06Var = new a06(c06Var, q06Var);
                    q06Var.c().setOnTouchListener(f06VarB.g.intValue() == -1 ? new l06(q06Var.c(), null, a06Var) : new b06(c06Var, q06Var.c(), null, a06Var, layoutParams, windowManagerB, q06Var));
                }
                c06Var.a = q06Var;
            }
            if (oz5.this.a.b().j.booleanValue()) {
                oz5 oz5Var2 = oz5.this;
                lz5 lz5Var = oz5Var2.d;
                wz5 wz5Var = lz5Var.m;
                Application application = lz5Var.l;
                ViewGroup viewGroupF = oz5Var2.a.f();
                Objects.requireNonNull(wz5Var);
                viewGroupF.setAlpha(0.0f);
                viewGroupF.measure(-2, -2);
                Point point = new Point(0, viewGroupF.getMeasuredHeight() * (-1));
                viewGroupF.animate().translationX(point.x).translationY(point.y).setDuration(1L).setListener(new vz5(wz5Var, viewGroupF, application));
            }
        }
    }

    public oz5(lz5 lz5Var, q06 q06Var, Activity activity, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.d = lz5Var;
        this.a = q06Var;
        this.b = activity;
        this.c = onGlobalLayoutListener;
    }

    public void a() {
        if (!this.a.b().i.booleanValue()) {
            this.a.f().setOnTouchListener(new a());
        }
        this.d.h.a(new b(), 5000L, 1000L);
        if (this.a.b().k.booleanValue()) {
            this.d.i.a(new c(), 20000L, 1000L);
        }
        this.b.runOnUiThread(new d());
    }
}
