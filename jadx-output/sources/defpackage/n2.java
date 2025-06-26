package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R$attr;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class n2 extends ListView {
    public final Rect e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public Field k;
    public a l;
    public boolean m;
    public boolean n;
    public boolean o;
    public ya p;
    public b q;

    public static class a extends s0 {
        public boolean f;

        public a(Drawable drawable) {
            super(drawable);
            this.f = true;
        }

        @Override // defpackage.s0, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f) {
                this.e.draw(canvas);
            }
        }

        @Override // defpackage.s0, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f) {
                this.e.setHotspot(f, f2);
            }
        }

        @Override // defpackage.s0, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f) {
                this.e.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // defpackage.s0, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f) {
                return this.e.setState(iArr);
            }
            return false;
        }

        @Override // defpackage.s0, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n2 n2Var = n2.this;
            n2Var.q = null;
            n2Var.drawableStateChanged();
        }
    }

    public n2(Context context, boolean z) throws NoSuchFieldException {
        super(context, null, R$attr.dropDownListViewStyle);
        this.e = new Rect();
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.n = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.k = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        a aVar = this.l;
        if (aVar != null) {
            aVar.f = z;
        }
    }

    public int a(int i, int i2, int i3) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < count) {
            int itemViewType = adapter.getItemViewType(i4);
            if (itemViewType != i5) {
                view = null;
                i5 = itemViewType;
            }
            view = adapter.getView(i4, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i7 = layoutParams.height;
            view.measure(i, i7 > 0 ? View.MeasureSpec.makeMeasureSpec(i7, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i4 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i2) {
                return (i3 < 0 || i4 <= i3 || i6 <= 0 || measuredHeight == i2) ? i2 : i6;
            }
            if (i3 >= 0 && i4 >= i3) {
                i6 = measuredHeight;
            }
            i4++;
        }
        return measuredHeight;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0125 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0157  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(android.view.MotionEvent r17, int r18) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n2.b(android.view.MotionEvent, int):boolean");
    }

    public final void c() {
        Drawable selector = getSelector();
        if (selector != null && this.o && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.e.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.e);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.q != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.n || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.n || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.n || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.n && this.m) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.q = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.q == null) {
            b bVar = new b();
            this.q = bVar;
            post(bVar);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                }
                c();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.j = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.q;
        if (bVar != null) {
            n2 n2Var = n2.this;
            n2Var.q = null;
            n2Var.removeCallbacks(bVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.m = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        a aVar = drawable != null ? new a(drawable) : null;
        this.l = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f = rect.left;
        this.g = rect.top;
        this.h = rect.right;
        this.i = rect.bottom;
    }
}
