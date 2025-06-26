package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import defpackage.i1;
import defpackage.j1;
import defpackage.l1;
import defpackage.n2;
import defpackage.r2;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class MenuPopupWindow extends ListPopupWindow implements r2 {
    public static Method I;
    public r2 H;

    public static class MenuDropDownListView extends n2 {
        public final int r;
        public final int s;
        public r2 t;
        public MenuItem u;

        public MenuDropDownListView(Context context, boolean z) {
            super(context, z);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.r = 21;
                this.s = 22;
            } else {
                this.r = 22;
                this.s = 21;
            }
        }

        @Override // defpackage.n2, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int headersCount;
            i1 i1Var;
            int iPointToPosition;
            int i;
            if (this.t != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    i1Var = (i1) headerViewListAdapter.getWrappedAdapter();
                } else {
                    headersCount = 0;
                    i1Var = (i1) adapter;
                }
                l1 item = null;
                if (motionEvent.getAction() != 10 && (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i = iPointToPosition - headersCount) >= 0 && i < i1Var.getCount()) {
                    item = i1Var.getItem(i);
                }
                MenuItem menuItem = this.u;
                if (menuItem != item) {
                    j1 j1Var = i1Var.e;
                    if (menuItem != null) {
                        this.t.f(j1Var, menuItem);
                    }
                    this.u = item;
                    if (item != null) {
                        this.t.c(j1Var, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.r) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i != this.s) {
                return super.onKeyDown(i, keyEvent);
            }
            setSelection(-1);
            ((i1) getAdapter()).e.c(false);
            return true;
        }

        public void setHoverListener(r2 r2Var) {
            this.t = r2Var;
        }

        @Override // defpackage.n2, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                I = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, null, i, i2);
    }

    @Override // defpackage.r2
    public void c(j1 j1Var, MenuItem menuItem) {
        r2 r2Var = this.H;
        if (r2Var != null) {
            r2Var.c(j1Var, menuItem);
        }
    }

    @Override // defpackage.r2
    public void f(j1 j1Var, MenuItem menuItem) {
        r2 r2Var = this.H;
        if (r2Var != null) {
            r2Var.f(j1Var, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    public n2 p(Context context, boolean z) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }
}
