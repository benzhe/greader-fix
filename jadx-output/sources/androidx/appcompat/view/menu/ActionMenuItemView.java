package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import defpackage.d0;
import defpackage.j1;
import defpackage.l1;
import defpackage.p2;
import defpackage.q1;
import defpackage.s1;

/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements q1.a, View.OnClickListener, ActionMenuView.a {
    public l1 i;
    public CharSequence j;
    public Drawable k;
    public j1.b l;
    public p2 m;
    public b n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;
    public int s;

    public class a extends p2 {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // defpackage.p2
        public s1 b() {
            ActionMenuPresenter.a aVar;
            b bVar = ActionMenuItemView.this.n;
            if (bVar == null || (aVar = ActionMenuPresenter.this.z) == null) {
                return null;
            }
            return aVar.a();
        }

        @Override // defpackage.p2
        public boolean c() {
            s1 s1VarB;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            j1.b bVar = actionMenuItemView.l;
            return bVar != null && bVar.a(actionMenuItemView.i) && (s1VarB = b()) != null && s1VarB.a();
        }
    }

    public static abstract class b {
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean a() {
        return c();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean b() {
        return c() && this.i.getIcon() == null;
    }

    public boolean c() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // q1.a
    public void d(l1 l1Var, int i) {
        this.i = l1Var;
        setIcon(l1Var.getIcon());
        setTitle(l1Var.getTitleCondensed());
        setId(l1Var.a);
        setVisibility(l1Var.isVisible() ? 0 : 8);
        setEnabled(l1Var.isEnabled());
        if (l1Var.hasSubMenu() && this.m == null) {
            this.m = new a();
        }
    }

    public final boolean e() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void f() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.j);
        if (this.k != null) {
            if (!((this.i.y & 4) == 4) || (!this.o && !this.p)) {
                z = false;
            }
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.j : null);
        CharSequence charSequence = this.i.q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.i.e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.i.r;
        if (TextUtils.isEmpty(charSequence2)) {
            d0.h.g0(this, z3 ? null : this.i.e);
        } else {
            d0.h.g0(this, charSequence2);
        }
    }

    @Override // q1.a
    public l1 getItemData() {
        return this.i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        j1.b bVar = this.l;
        if (bVar != null) {
            bVar.a(this.i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.o = e();
        f();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean zC = c();
        if (zC && (i3 = this.r) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.q) : this.q;
        if (mode != 1073741824 && this.q > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i2);
        }
        if (zC || this.k == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.k.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        p2 p2Var;
        if (this.i.hasSubMenu() && (p2Var = this.m) != null && p2Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.p != z) {
            this.p = z;
            l1 l1Var = this.i;
            if (l1Var != null) {
                l1Var.n.p();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.k = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.s;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        f();
    }

    public void setItemInvoker(j1.b bVar) {
        this.l = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.r = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(b bVar) {
        this.n = bVar;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTitle(CharSequence charSequence) {
        this.j = charSequence;
        f();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.o = e();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionMenuItemView, i, 0);
        this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.s = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.r = -1;
        setSaveEnabled(false);
    }
}
