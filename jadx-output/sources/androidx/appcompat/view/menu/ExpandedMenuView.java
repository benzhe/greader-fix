package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.j1;
import defpackage.l1;
import defpackage.p0;
import defpackage.q1;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements j1.b, q1, AdapterView.OnItemClickListener {
    public static final int[] f = {R.attr.background, R.attr.divider};
    public j1 e;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // j1.b
    public boolean a(l1 l1Var) {
        return this.e.s(l1Var, null, 0);
    }

    @Override // defpackage.q1
    public void b(j1 j1Var) {
        this.e = j1Var;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        a((l1) getAdapter().getItem(i));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        int resourceId;
        int resourceId2;
        super(context, attributeSet);
        setOnItemClickListener(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f, i, 0);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId2 = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : p0.b(context, resourceId2));
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            setDivider((!typedArrayObtainStyledAttributes.hasValue(1) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(1) : p0.b(context, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
