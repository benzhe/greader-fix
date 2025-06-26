package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public class u1 extends j1 implements SubMenu {
    public l1 A;
    public j1 z;

    public u1(Context context, j1 j1Var, l1 l1Var) {
        super(context);
        this.z = j1Var;
        this.A = l1Var;
    }

    @Override // defpackage.j1
    public boolean d(l1 l1Var) {
        return this.z.d(l1Var);
    }

    @Override // defpackage.j1
    public boolean e(j1 j1Var, MenuItem menuItem) {
        return super.e(j1Var, menuItem) || this.z.e(j1Var, menuItem);
    }

    @Override // defpackage.j1
    public boolean f(l1 l1Var) {
        return this.z.f(l1Var);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.A;
    }

    @Override // defpackage.j1
    public String j() {
        l1 l1Var = this.A;
        int i = l1Var != null ? l1Var.a : 0;
        if (i == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i;
    }

    @Override // defpackage.j1
    public j1 k() {
        return this.z.k();
    }

    @Override // defpackage.j1
    public boolean m() {
        return this.z.m();
    }

    @Override // defpackage.j1
    public boolean n() {
        return this.z.n();
    }

    @Override // defpackage.j1
    public boolean o() {
        return this.z.o();
    }

    @Override // defpackage.j1, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.z.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        z(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        z(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        z(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.A.setIcon(drawable);
        return this;
    }

    @Override // defpackage.j1, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.z.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        z(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        z(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.A.setIcon(i);
        return this;
    }
}
