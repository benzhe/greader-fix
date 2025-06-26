package defpackage;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.d0;

/* loaded from: classes.dex */
public class d1 implements u8 {
    public CharSequence a;
    public CharSequence b;
    public Intent c;
    public char d;
    public char f;
    public Drawable h;
    public Context i;
    public CharSequence j;
    public CharSequence k;
    public int e = RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT;
    public int g = RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT;
    public ColorStateList l = null;
    public PorterDuff.Mode m = null;
    public boolean n = false;
    public boolean o = false;
    public int p = 16;

    public d1(Context context, int i, int i2, int i3, CharSequence charSequence) {
        this.i = context;
        this.a = charSequence;
    }

    @Override // defpackage.u8
    public u8 a(w9 w9Var) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.u8
    public w9 b() {
        return null;
    }

    public final void c() {
        Drawable drawable = this.h;
        if (drawable != null) {
            if (this.n || this.o) {
                Drawable drawableL0 = d0.h.l0(drawable);
                this.h = drawableL0;
                Drawable drawableMutate = drawableL0.mutate();
                this.h = drawableMutate;
                if (this.n) {
                    drawableMutate.setTintList(this.l);
                }
                if (this.o) {
                    this.h.setTintMode(this.m);
                }
            }
        }
    }

    @Override // defpackage.u8, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.u8, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.g;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.j;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.h;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.l;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.m;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.c;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public int getNumericModifiers() {
        return this.e;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.d;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.a;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.b;
        return charSequence != null ? charSequence : this.a;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.k;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.u8, android.view.MenuItem
    public MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f = Character.toLowerCase(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.p = (z ? 1 : 0) | (this.p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.p = (z ? 2 : 0) | (this.p & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.p = (z ? 16 : 0) | (this.p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.h = drawable;
        c();
        return this;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.l = colorStateList;
        this.n = true;
        c();
        return this;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.m = mode;
        this.o = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.d = c;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.d = c;
        this.f = Character.toLowerCase(c2);
        return this;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // defpackage.u8, android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.b = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.p = (this.p & 8) | (z ? 0 : 8);
        return this;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.u8, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f = Character.toLowerCase(c);
        this.g = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public u8 setContentDescription(CharSequence charSequence) {
        this.j = charSequence;
        return this;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        this.d = c;
        this.e = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.a = this.i.getResources().getString(i);
        return this;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public u8 setTooltipText(CharSequence charSequence) {
        this.k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        Context context = this.i;
        Object obj = u7.a;
        this.h = context.getDrawable(i);
        c();
        return this;
    }

    @Override // defpackage.u8, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.d = c;
        this.e = KeyEvent.normalizeMetaState(i);
        this.f = Character.toLowerCase(c2);
        this.g = KeyEvent.normalizeMetaState(i2);
        return this;
    }
}
