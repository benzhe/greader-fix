package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.j1;
import defpackage.q1;

/* loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements q1 {
    public NavigationMenuView(Context context) {
        this(context, null);
    }

    @Override // defpackage.q1
    public void b(j1 j1Var) {
    }

    public int getWindowAnimations() {
        return 0;
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutManager(new LinearLayoutManager(1, false));
    }
}
