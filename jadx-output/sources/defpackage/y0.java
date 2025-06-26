package defpackage;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionMenuPresenter;
import defpackage.j1;
import defpackage.v0;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class y0 extends v0 implements j1.a {
    public Context g;
    public ActionBarContextView h;
    public v0.a i;
    public WeakReference<View> j;
    public boolean k;
    public j1 l;

    public y0(Context context, ActionBarContextView actionBarContextView, v0.a aVar, boolean z) {
        this.g = context;
        this.h = actionBarContextView;
        this.i = aVar;
        j1 j1Var = new j1(actionBarContextView.getContext());
        j1Var.l = 1;
        this.l = j1Var;
        j1Var.e = this;
    }

    @Override // j1.a
    public boolean a(j1 j1Var, MenuItem menuItem) {
        return this.i.d(this, menuItem);
    }

    @Override // j1.a
    public void b(j1 j1Var) {
        i();
        ActionMenuPresenter actionMenuPresenter = this.h.h;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.g();
        }
    }

    @Override // defpackage.v0
    public void c() {
        if (this.k) {
            return;
        }
        this.k = true;
        this.h.sendAccessibilityEvent(32);
        this.i.a(this);
    }

    @Override // defpackage.v0
    public View d() {
        WeakReference<View> weakReference = this.j;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // defpackage.v0
    public Menu e() {
        return this.l;
    }

    @Override // defpackage.v0
    public MenuInflater f() {
        return new a1(this.h.getContext());
    }

    @Override // defpackage.v0
    public CharSequence g() {
        return this.h.getSubtitle();
    }

    @Override // defpackage.v0
    public CharSequence h() {
        return this.h.getTitle();
    }

    @Override // defpackage.v0
    public void i() {
        this.i.c(this, this.l);
    }

    @Override // defpackage.v0
    public boolean j() {
        return this.h.v;
    }

    @Override // defpackage.v0
    public void k(View view) {
        this.h.setCustomView(view);
        this.j = view != null ? new WeakReference<>(view) : null;
    }

    @Override // defpackage.v0
    public void l(int i) {
        this.h.setSubtitle(this.g.getString(i));
    }

    @Override // defpackage.v0
    public void m(CharSequence charSequence) {
        this.h.setSubtitle(charSequence);
    }

    @Override // defpackage.v0
    public void n(int i) {
        this.h.setTitle(this.g.getString(i));
    }

    @Override // defpackage.v0
    public void o(CharSequence charSequence) {
        this.h.setTitle(charSequence);
    }

    @Override // defpackage.v0
    public void p(boolean z) {
        this.f = z;
        this.h.setTitleOptional(z);
    }
}
