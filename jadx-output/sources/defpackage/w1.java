package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;

/* loaded from: classes.dex */
public abstract class w1 extends ViewGroup {
    public final a e;
    public final Context f;
    public ActionMenuView g;
    public ActionMenuPresenter h;
    public int i;
    public ma j;
    public boolean k;
    public boolean l;

    public class a implements na {
        public boolean a = false;
        public int b;

        public a() {
        }

        @Override // defpackage.na
        public void a(View view) {
            this.a = true;
        }

        @Override // defpackage.na
        public void b(View view) {
            if (this.a) {
                return;
            }
            w1 w1Var = w1.this;
            w1Var.j = null;
            w1.super.setVisibility(this.b);
        }

        @Override // defpackage.na
        public void c(View view) {
            w1.super.setVisibility(0);
            this.a = false;
        }
    }

    public w1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public int c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    public int d(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public ma e(int i, long j) {
        ma maVar = this.j;
        if (maVar != null) {
            maVar.b();
        }
        if (i != 0) {
            ma maVarB = ha.b(this);
            maVarB.a(0.0f);
            maVarB.c(j);
            a aVar = this.e;
            w1.this.j = maVarB;
            aVar.b = i;
            View view = maVarB.a.get();
            if (view != null) {
                maVarB.e(view, aVar);
            }
            return maVarB;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ma maVarB2 = ha.b(this);
        maVarB2.a(1.0f);
        maVarB2.c(j);
        a aVar2 = this.e;
        w1.this.j = maVarB2;
        aVar2.b = i;
        View view2 = maVarB2.a.get();
        if (view2 != null) {
            maVarB2.e(view2, aVar2);
        }
        return maVarB2;
    }

    public int getAnimatedVisibility() {
        return this.j != null ? this.e.b : getVisibility();
    }

    public int getContentHeight() {
        return this.i;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(R$styleable.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.h;
        if (actionMenuPresenter != null) {
            Configuration configuration2 = actionMenuPresenter.f.getResources().getConfiguration();
            int i = configuration2.screenWidthDp;
            int i2 = configuration2.screenHeightDp;
            actionMenuPresenter.u = (configuration2.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
            j1 j1Var = actionMenuPresenter.g;
            if (j1Var != null) {
                j1Var.q(true);
            }
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.l = false;
        }
        if (!this.l) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.l = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.l = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.k = false;
        }
        if (!this.k) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.k = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.k = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            ma maVar = this.j;
            if (maVar != null) {
                maVar.b();
            }
            super.setVisibility(i);
        }
    }

    public w1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f = context;
        } else {
            this.f = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
