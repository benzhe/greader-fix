package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.google.android.material.navigation.NavigationBarView;
import defpackage.c3;
import defpackage.t85;

/* loaded from: classes.dex */
public class BottomNavigationView extends NavigationBarView {

    public interface a extends NavigationBarView.b {
    }

    public interface b extends NavigationBarView.c {
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public NavigationBarMenuView a(Context context) {
        return new BottomNavigationMenuView(context);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 5;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) throws Resources.NotFoundException {
        BottomNavigationMenuView bottomNavigationMenuView = (BottomNavigationMenuView) getMenuView();
        if (bottomNavigationMenuView.E != z) {
            bottomNavigationMenuView.setItemHorizontalTranslationEnabled(z);
            getPresenter().o(false);
        }
    }

    public void setOnNavigationItemReselectedListener(a aVar) {
        setOnItemReselectedListener(aVar);
    }

    public void setOnNavigationItemSelectedListener(b bVar) {
        setOnItemSelectedListener(bVar);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomNavigationStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        int i2 = R$style.Widget_Design_BottomNavigationView;
        super(context, attributeSet, i, i2);
        c3 c3VarE = t85.e(getContext(), attributeSet, R$styleable.BottomNavigationView, i, i2, new int[0]);
        setItemHorizontalTranslationEnabled(c3VarE.a(R$styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        c3VarE.b.recycle();
    }
}
