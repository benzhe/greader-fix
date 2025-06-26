package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class o65 extends i0 {
    public BottomSheetBehavior<FrameLayout> g;
    public FrameLayout h;
    public CoordinatorLayout i;
    public FrameLayout j;
    public boolean k;
    public boolean l;
    public boolean m;
    public BottomSheetBehavior.c n;
    public boolean o;
    public BottomSheetBehavior.c p;

    public class a implements ea {
        public a() {
        }

        @Override // defpackage.ea
        public qa a(View view, qa qaVar) {
            o65 o65Var = o65.this;
            BottomSheetBehavior.c cVar = o65Var.n;
            if (cVar != null) {
                o65Var.g.N.remove(cVar);
            }
            o65 o65Var2 = o65.this;
            o65Var2.n = new f(o65Var2.j, qaVar, null);
            o65 o65Var3 = o65.this;
            o65Var3.g.B(o65Var3.n);
            return qaVar;
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o65 o65Var = o65.this;
            if (o65Var.k && o65Var.isShowing()) {
                o65 o65Var2 = o65.this;
                if (!o65Var2.m) {
                    TypedArray typedArrayObtainStyledAttributes = o65Var2.getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
                    o65Var2.l = typedArrayObtainStyledAttributes.getBoolean(0, true);
                    typedArrayObtainStyledAttributes.recycle();
                    o65Var2.m = true;
                }
                if (o65Var2.l) {
                    o65.this.cancel();
                }
            }
        }
    }

    public class c extends v9 {
        public c() {
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            if (!o65.this.k) {
                saVar.a.setDismissable(false);
            } else {
                saVar.a.addAction(1048576);
                saVar.a.setDismissable(true);
            }
        }

        @Override // defpackage.v9
        public boolean g(View view, int i, Bundle bundle) {
            if (i == 1048576) {
                o65 o65Var = o65.this;
                if (o65Var.k) {
                    o65Var.cancel();
                    return true;
                }
            }
            return super.g(view, i, bundle);
        }
    }

    public class d implements View.OnTouchListener {
        public d(o65 o65Var) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class e extends BottomSheetBehavior.c {
        public e() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.c
        public void a(View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.c
        public void b(View view, int i) {
            if (i == 5) {
                o65.this.cancel();
            }
        }
    }

    public static class f extends BottomSheetBehavior.c {
        public final boolean a;
        public final boolean b;
        public final qa c;

        public f(View view, qa qaVar, a aVar) {
            ColorStateList backgroundTintList;
            this.c = qaVar;
            boolean z = Build.VERSION.SDK_INT >= 23 && (view.getSystemUiVisibility() & RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0;
            this.b = z;
            la5 la5Var = BottomSheetBehavior.H(view).i;
            if (la5Var != null) {
                backgroundTintList = la5Var.e.d;
            } else {
                AtomicInteger atomicInteger = ha.a;
                backgroundTintList = view.getBackgroundTintList();
            }
            if (backgroundTintList != null) {
                int defaultColor = backgroundTintList.getDefaultColor();
                this.a = defaultColor != 0 && d8.c(defaultColor) > 0.5d;
            } else if (!(view.getBackground() instanceof ColorDrawable)) {
                this.a = z;
            } else {
                int color = ((ColorDrawable) view.getBackground()).getColor();
                this.a = color != 0 && d8.c(color) > 0.5d;
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.c
        public void a(View view, float f) {
            c(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.c
        public void b(View view, int i) {
            c(view);
        }

        public final void c(View view) {
            if (view.getTop() <= this.c.e()) {
                o65.g(view, this.a);
                view.setPadding(view.getPaddingLeft(), this.c.e() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
            } else if (view.getTop() != 0) {
                o65.g(view, this.b);
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }
    }

    public o65(Context context, int i) {
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            i = context.getTheme().resolveAttribute(R$attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R$style.Theme_Design_Light_BottomSheetDialog;
        }
        super(context, i);
        this.k = true;
        this.l = true;
        this.p = new e();
        c(1);
    }

    public static void g(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = view.getSystemUiVisibility();
            view.setSystemUiVisibility(z ? systemUiVisibility | RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST : systemUiVisibility & (-8193));
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.g == null) {
            f();
        }
        super.cancel();
    }

    public final FrameLayout f() {
        if (this.h == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R$layout.design_bottom_sheet_dialog, null);
            this.h = frameLayout;
            this.i = (CoordinatorLayout) frameLayout.findViewById(R$id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.h.findViewById(R$id.design_bottom_sheet);
            this.j = frameLayout2;
            BottomSheetBehavior<FrameLayout> bottomSheetBehaviorH = BottomSheetBehavior.H(frameLayout2);
            this.g = bottomSheetBehaviorH;
            bottomSheetBehaviorH.B(this.p);
            this.g.K(this.k);
        }
        return this.h;
    }

    public final View h(int i, View view, ViewGroup.LayoutParams layoutParams) {
        f();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.h.findViewById(R$id.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        ha.t(this.j, new a());
        this.j.removeAllViews();
        if (layoutParams == null) {
            this.j.addView(view);
        } else {
            this.j.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R$id.touch_outside).setOnClickListener(new b());
        ha.s(this.j, new c());
        this.j.setOnTouchListener(new d(this));
        return this.h;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z = this.o && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.h;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z);
            }
            CoordinatorLayout coordinatorLayout = this.i;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z);
            }
            if (z) {
                window.getDecorView().setSystemUiVisibility(768);
            }
        }
    }

    @Override // defpackage.i0, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            int i = Build.VERSION.SDK_INT;
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            if (i < 23) {
                window.addFlags(67108864);
            }
            window.setLayout(-1, -1);
        }
        this.o = getContext().getTheme().obtainStyledAttributes(new int[]{R$attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.g;
        if (bottomSheetBehavior == null || bottomSheetBehavior.D != 5) {
            return;
        }
        bottomSheetBehavior.M(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.k != z) {
            this.k = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.g;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.K(z);
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.k) {
            this.k = true;
        }
        this.l = z;
        this.m = true;
    }

    @Override // defpackage.i0, android.app.Dialog
    public void setContentView(int i) {
        super.setContentView(h(i, null, null));
    }

    @Override // defpackage.i0, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(h(0, view, null));
    }

    @Override // defpackage.i0, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(h(0, view, layoutParams));
    }
}
