package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import defpackage.c50;
import defpackage.h75;
import defpackage.ha;
import defpackage.i75;
import defpackage.p75;
import defpackage.s9;
import defpackage.sa;
import defpackage.v9;
import defpackage.y65;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class MaterialCalendarGridView extends GridView {
    public final Calendar e;
    public final boolean f;

    public class a extends v9 {
        public a(MaterialCalendarGridView materialCalendarGridView) {
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            saVar.s(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public i75 getAdapter() {
        return (i75) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int iA;
        int width;
        int iA2;
        int width2;
        int width3;
        int i;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        i75 adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.f;
        y65 y65Var = adapter.h;
        Long item = adapter.getItem(adapter.b());
        Long item2 = adapter.getItem(adapter.d());
        for (s9<Long, Long> s9Var : dateSelector.y()) {
            Long l = s9Var.a;
            if (l != null) {
                if (s9Var.b != null) {
                    long jLongValue = l.longValue();
                    long jLongValue2 = s9Var.b.longValue();
                    Long lValueOf = Long.valueOf(jLongValue);
                    Long lValueOf2 = Long.valueOf(jLongValue2);
                    if (!(item == null || item2 == null || lValueOf == null || lValueOf2 == null || lValueOf.longValue() > item2.longValue() || lValueOf2.longValue() < item.longValue())) {
                        boolean zN0 = c50.n0(this);
                        if (jLongValue < item.longValue()) {
                            iA = adapter.b();
                            width = iA % adapter.e.h == 0 ? 0 : !zN0 ? materialCalendarGridView.getChildAt(iA - 1).getRight() : materialCalendarGridView.getChildAt(iA - 1).getLeft();
                        } else {
                            materialCalendarGridView.e.setTimeInMillis(jLongValue);
                            iA = adapter.a(materialCalendarGridView.e.get(5));
                            View childAt = materialCalendarGridView.getChildAt(iA);
                            width = (childAt.getWidth() / 2) + childAt.getLeft();
                        }
                        if (jLongValue2 > item2.longValue()) {
                            iA2 = Math.min(adapter.d(), getChildCount() - 1);
                            width2 = (iA2 + 1) % adapter.e.h == 0 ? getWidth() : !zN0 ? materialCalendarGridView.getChildAt(iA2).getRight() : materialCalendarGridView.getChildAt(iA2).getLeft();
                        } else {
                            materialCalendarGridView.e.setTimeInMillis(jLongValue2);
                            iA2 = adapter.a(materialCalendarGridView.e.get(5));
                            View childAt2 = materialCalendarGridView.getChildAt(iA2);
                            width2 = (childAt2.getWidth() / 2) + childAt2.getLeft();
                        }
                        int itemId = (int) adapter.getItemId(iA);
                        int itemId2 = (int) adapter.getItemId(iA2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt3 = materialCalendarGridView.getChildAt(numColumns);
                            int top = childAt3.getTop() + y65Var.a.a.top;
                            int bottom = childAt3.getBottom() - y65Var.a.a.bottom;
                            if (zN0) {
                                int i2 = iA2 > numColumns2 ? 0 : width2;
                                width3 = numColumns > iA ? getWidth() : width;
                                i = i2;
                            } else {
                                i = numColumns > iA ? 0 : width;
                                width3 = iA2 > numColumns2 ? getWidth() : width2;
                            }
                            canvas.drawRect(i, top, width3, bottom, y65Var.h);
                            itemId++;
                            materialCalendarGridView = this;
                            adapter = adapter;
                        }
                    }
                }
            }
            materialCalendarGridView = this;
            adapter = adapter;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
            return;
        }
        if (i == 33) {
            setSelection(getAdapter().d());
        } else if (i == 130) {
            setSelection(getAdapter().b());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().b()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter().b()) {
            super.setSelection(getAdapter().b());
        } else {
            super.setSelection(i);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = p75.d();
        if (h75.d(getContext())) {
            setNextFocusLeftId(R$id.cancel_button);
            setNextFocusRightId(R$id.confirm_button);
        }
        this.f = h75.e(getContext(), R$attr.nestedScrollable);
        ha.s(this, new a(this));
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof i75)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), i75.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }
}
