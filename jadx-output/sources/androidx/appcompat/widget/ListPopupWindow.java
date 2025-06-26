package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import defpackage.d0;
import defpackage.d2;
import defpackage.ha;
import defpackage.n2;
import defpackage.q2;
import defpackage.s1;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ListPopupWindow implements s1 {
    public static Method E;
    public static Method F;
    public static Method G;
    public final Rect A;
    public Rect B;
    public boolean C;
    public PopupWindow D;
    public Context e;
    public ListAdapter f;
    public n2 g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;
    public int q;
    public int r;
    public DataSetObserver s;
    public View t;
    public AdapterView.OnItemClickListener u;
    public final e v;
    public final d w;
    public final c x;
    public final a y;
    public final Handler z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n2 n2Var = ListPopupWindow.this.g;
            if (n2Var != null) {
                n2Var.setListSelectionHidden(true);
                n2Var.requestLayout();
            }
        }
    }

    public class b extends DataSetObserver {
        public b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.a()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    public class c implements AbsListView.OnScrollListener {
        public c() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1) {
                if ((ListPopupWindow.this.D.getInputMethodMode() == 2) || ListPopupWindow.this.D.getContentView() == null) {
                    return;
                }
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.z.removeCallbacks(listPopupWindow.v);
                ListPopupWindow.this.v.run();
            }
        }
    }

    public class d implements View.OnTouchListener {
        public d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.D) != null && popupWindow.isShowing() && x >= 0 && x < ListPopupWindow.this.D.getWidth() && y >= 0 && y < ListPopupWindow.this.D.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.z.postDelayed(listPopupWindow.v, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
            listPopupWindow2.z.removeCallbacks(listPopupWindow2.v);
            return false;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n2 n2Var = ListPopupWindow.this.g;
            if (n2Var != null) {
                AtomicInteger atomicInteger = ha.a;
                if (!n2Var.isAttachedToWindow() || ListPopupWindow.this.g.getCount() <= ListPopupWindow.this.g.getChildCount()) {
                    return;
                }
                int childCount = ListPopupWindow.this.g.getChildCount();
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                if (childCount <= listPopupWindow.q) {
                    listPopupWindow.D.setInputMethodMode(2);
                    ListPopupWindow.this.show();
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                E = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                G = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                F = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.listPopupWindowStyle);
    }

    @Override // defpackage.s1
    public boolean a() {
        return this.D.isShowing();
    }

    public int b() {
        return this.j;
    }

    public void d(int i) {
        this.j = i;
    }

    @Override // defpackage.s1
    public void dismiss() {
        this.D.dismiss();
        this.D.setContentView(null);
        this.g = null;
        this.z.removeCallbacks(this.v);
    }

    public Drawable g() {
        return this.D.getBackground();
    }

    @Override // defpackage.s1
    public ListView h() {
        return this.g;
    }

    public void j(Drawable drawable) {
        this.D.setBackgroundDrawable(drawable);
    }

    public void k(int i) {
        this.k = i;
        this.m = true;
    }

    public int n() {
        if (this.m) {
            return this.k;
        }
        return 0;
    }

    public void o(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.s;
        if (dataSetObserver == null) {
            this.s = new b();
        } else {
            ListAdapter listAdapter2 = this.f;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.s);
        }
        n2 n2Var = this.g;
        if (n2Var != null) {
            n2Var.setAdapter(this.f);
        }
    }

    public n2 p(Context context, boolean z) {
        return new n2(context, z);
    }

    public void q(int i) {
        Drawable background = this.D.getBackground();
        if (background == null) {
            this.i = i;
            return;
        }
        background.getPadding(this.A);
        Rect rect = this.A;
        this.i = rect.left + rect.right + i;
    }

    public void r(boolean z) {
        this.C = z;
        this.D.setFocusable(z);
    }

    @Override // defpackage.s1
    public void show() {
        int i;
        int maxAvailableHeight;
        int iMakeMeasureSpec;
        int paddingBottom;
        n2 n2Var;
        if (this.g == null) {
            n2 n2VarP = p(this.e, !this.C);
            this.g = n2VarP;
            n2VarP.setAdapter(this.f);
            this.g.setOnItemClickListener(this.u);
            this.g.setFocusable(true);
            this.g.setFocusableInTouchMode(true);
            this.g.setOnItemSelectedListener(new q2(this));
            this.g.setOnScrollListener(this.x);
            this.D.setContentView(this.g);
        }
        Drawable background = this.D.getBackground();
        if (background != null) {
            background.getPadding(this.A);
            Rect rect = this.A;
            int i2 = rect.top;
            i = rect.bottom + i2;
            if (!this.m) {
                this.k = -i2;
            }
        } else {
            this.A.setEmpty();
            i = 0;
        }
        boolean z = this.D.getInputMethodMode() == 2;
        View view = this.t;
        int i3 = this.k;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = F;
            if (method != null) {
                try {
                    maxAvailableHeight = ((Integer) method.invoke(this.D, view, Integer.valueOf(i3), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            } else {
                maxAvailableHeight = this.D.getMaxAvailableHeight(view, i3);
            }
        } else {
            maxAvailableHeight = this.D.getMaxAvailableHeight(view, i3, z);
        }
        if (this.h == -1) {
            paddingBottom = maxAvailableHeight + i;
        } else {
            int i4 = this.i;
            if (i4 == -2) {
                int i5 = this.e.getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = this.A;
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5 - (rect2.left + rect2.right), Integer.MIN_VALUE);
            } else if (i4 != -1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            } else {
                int i6 = this.e.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.A;
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6 - (rect3.left + rect3.right), 1073741824);
            }
            int iA = this.g.a(iMakeMeasureSpec, maxAvailableHeight - 0, -1);
            paddingBottom = iA + (iA > 0 ? this.g.getPaddingBottom() + this.g.getPaddingTop() + i + 0 : 0);
        }
        boolean z2 = this.D.getInputMethodMode() == 2;
        d0.h.h0(this.D, this.l);
        if (this.D.isShowing()) {
            View view2 = this.t;
            AtomicInteger atomicInteger = ha.a;
            if (view2.isAttachedToWindow()) {
                int width = this.i;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.t.getWidth();
                }
                int i7 = this.h;
                if (i7 == -1) {
                    if (!z2) {
                        paddingBottom = -1;
                    }
                    if (z2) {
                        this.D.setWidth(this.i == -1 ? -1 : 0);
                        this.D.setHeight(0);
                    } else {
                        this.D.setWidth(this.i == -1 ? -1 : 0);
                        this.D.setHeight(-1);
                    }
                } else if (i7 != -2) {
                    paddingBottom = i7;
                }
                this.D.setOutsideTouchable(true);
                this.D.update(this.t, this.j, this.k, width < 0 ? -1 : width, paddingBottom < 0 ? -1 : paddingBottom);
                return;
            }
            return;
        }
        int width2 = this.i;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.t.getWidth();
        }
        int i8 = this.h;
        if (i8 == -1) {
            paddingBottom = -1;
        } else if (i8 != -2) {
            paddingBottom = i8;
        }
        this.D.setWidth(width2);
        this.D.setHeight(paddingBottom);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = E;
            if (method2 != null) {
                try {
                    method2.invoke(this.D, Boolean.TRUE);
                } catch (Exception unused2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.D.setIsClippedToScreen(true);
        }
        this.D.setOutsideTouchable(true);
        this.D.setTouchInterceptor(this.w);
        if (this.o) {
            d0.h.a0(this.D, this.n);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = G;
            if (method3 != null) {
                try {
                    method3.invoke(this.D, this.B);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            this.D.setEpicenterBounds(this.B);
        }
        this.D.showAsDropDown(this.t, this.j, this.k, this.p);
        this.g.setSelection(-1);
        if ((!this.C || this.g.isInTouchMode()) && (n2Var = this.g) != null) {
            n2Var.setListSelectionHidden(true);
            n2Var.requestLayout();
        }
        if (this.C) {
            return;
        }
        this.z.post(this.y);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.h = -2;
        this.i = -2;
        this.l = 1002;
        this.p = 0;
        this.q = Integer.MAX_VALUE;
        this.r = 0;
        this.v = new e();
        this.w = new d();
        this.x = new c();
        this.y = new a();
        this.A = new Rect();
        this.e = context;
        this.z = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPopupWindow, i, i2);
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.k = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.m = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        d2 d2Var = new d2(context, attributeSet, i, i2);
        this.D = d2Var;
        d2Var.setInputMethodMode(1);
    }
}
