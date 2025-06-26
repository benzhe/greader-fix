package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import com.google.android.material.R$attr;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import defpackage.kb5;
import defpackage.lb5;

/* loaded from: classes.dex */
public class Snackbar extends BaseTransientBottomBar<Snackbar> {
    public static final int[] t = {R$attr.snackbarButtonStyle, R$attr.snackbarTextViewStyle};
    public final AccessibilityManager r;
    public boolean s;

    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackground(Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundDrawable(Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintList(ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintMode(PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setOnClickListener(View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }

        public SnackbarLayout(Context context) {
            super(context, null);
        }
    }

    public class a implements View.OnClickListener {
        public final /* synthetic */ View.OnClickListener e;

        public a(View.OnClickListener onClickListener) {
            this.e = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.e.onClick(view);
            Snackbar.this.b(1);
        }
    }

    public Snackbar(Context context, ViewGroup viewGroup, View view, kb5 kb5Var) {
        super(context, viewGroup, view, kb5Var);
        this.r = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x002a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[LOOP:0: B:3:0x0002->B:38:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.material.snackbar.Snackbar j(android.view.View r8, java.lang.CharSequence r9, int r10) {
        /*
            r0 = 0
            r1 = r0
        L2:
            boolean r2 = r8 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout
            if (r2 == 0) goto L9
            android.view.ViewGroup r8 = (android.view.ViewGroup) r8
            goto L2d
        L9:
            boolean r2 = r8 instanceof android.widget.FrameLayout
            if (r2 == 0) goto L1c
            int r1 = r8.getId()
            r2 = 16908290(0x1020002, float:2.3877235E-38)
            if (r1 != r2) goto L19
            android.view.ViewGroup r8 = (android.view.ViewGroup) r8
            goto L2d
        L19:
            r1 = r8
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
        L1c:
            if (r8 == 0) goto L2a
            android.view.ViewParent r8 = r8.getParent()
            boolean r2 = r8 instanceof android.view.View
            if (r2 == 0) goto L29
            android.view.View r8 = (android.view.View) r8
            goto L2a
        L29:
            r8 = r0
        L2a:
            if (r8 != 0) goto L2
            r8 = r1
        L2d:
            if (r8 == 0) goto L75
            android.content.Context r0 = r8.getContext()
            android.view.LayoutInflater r1 = android.view.LayoutInflater.from(r0)
            int[] r2 = com.google.android.material.snackbar.Snackbar.t
            android.content.res.TypedArray r2 = r0.obtainStyledAttributes(r2)
            r3 = -1
            r4 = 0
            int r5 = r2.getResourceId(r4, r3)
            r6 = 1
            int r7 = r2.getResourceId(r6, r3)
            r2.recycle()
            if (r5 == r3) goto L50
            if (r7 == r3) goto L50
            goto L51
        L50:
            r6 = 0
        L51:
            if (r6 == 0) goto L56
            int r2 = com.google.android.material.R$layout.mtrl_layout_snackbar_include
            goto L58
        L56:
            int r2 = com.google.android.material.R$layout.design_layout_snackbar_include
        L58:
            android.view.View r1 = r1.inflate(r2, r8, r4)
            com.google.android.material.snackbar.SnackbarContentLayout r1 = (com.google.android.material.snackbar.SnackbarContentLayout) r1
            com.google.android.material.snackbar.Snackbar r2 = new com.google.android.material.snackbar.Snackbar
            r2.<init>(r0, r8, r1, r1)
            com.google.android.material.snackbar.BaseTransientBottomBar$SnackbarBaseLayout r8 = r2.c
            android.view.View r8 = r8.getChildAt(r4)
            com.google.android.material.snackbar.SnackbarContentLayout r8 = (com.google.android.material.snackbar.SnackbarContentLayout) r8
            android.widget.TextView r8 = r8.getMessageView()
            r8.setText(r9)
            r2.e = r10
            return r2
        L75:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "No suitable parent found from the given view. Please provide a valid view."
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.Snackbar.j(android.view.View, java.lang.CharSequence, int):com.google.android.material.snackbar.Snackbar");
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void a() {
        b(3);
    }

    public int i() {
        int i = this.e;
        if (i == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return this.r.getRecommendedTimeoutMillis(i, (this.s ? 4 : 0) | 1 | 2);
        }
        if (this.s && this.r.isTouchExplorationEnabled()) {
            return -2;
        }
        return i;
    }

    public Snackbar k(CharSequence charSequence, View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.c.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence)) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.s = false;
        } else {
            this.s = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new a(onClickListener));
        }
        return this;
    }

    public void l() {
        lb5 lb5VarB = lb5.b();
        int i = i();
        lb5.b bVar = this.n;
        synchronized (lb5VarB.a) {
            if (lb5VarB.c(bVar)) {
                lb5.c cVar = lb5VarB.c;
                cVar.b = i;
                lb5VarB.b.removeCallbacksAndMessages(cVar);
                lb5VarB.g(lb5VarB.c);
                return;
            }
            if (lb5VarB.d(bVar)) {
                lb5VarB.d.b = i;
            } else {
                lb5VarB.d = new lb5.c(i, bVar);
            }
            lb5.c cVar2 = lb5VarB.c;
            if (cVar2 == null || !lb5VarB.a(cVar2, 4)) {
                lb5VarB.c = null;
                lb5VarB.h();
            }
        }
    }
}
