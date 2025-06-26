package defpackage;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import defpackage.v0;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class z0 extends ActionMode {
    public final Context a;
    public final v0 b;

    public static class a implements v0.a {
        public final ActionMode.Callback a;
        public final Context b;
        public final ArrayList<z0> c = new ArrayList<>();
        public final m4<Menu, Menu> d = new m4<>();

        public a(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.a = callback;
        }

        @Override // v0.a
        public void a(v0 v0Var) {
            this.a.onDestroyActionMode(e(v0Var));
        }

        @Override // v0.a
        public boolean b(v0 v0Var, Menu menu) {
            return this.a.onCreateActionMode(e(v0Var), f(menu));
        }

        @Override // v0.a
        public boolean c(v0 v0Var, Menu menu) {
            return this.a.onPrepareActionMode(e(v0Var), f(menu));
        }

        @Override // v0.a
        public boolean d(v0 v0Var, MenuItem menuItem) {
            return this.a.onActionItemClicked(e(v0Var), new m1(this.b, (u8) menuItem));
        }

        public ActionMode e(v0 v0Var) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                z0 z0Var = this.c.get(i);
                if (z0Var != null && z0Var.b == v0Var) {
                    return z0Var;
                }
            }
            z0 z0Var2 = new z0(this.b, v0Var);
            this.c.add(z0Var2);
            return z0Var2;
        }

        public final Menu f(Menu menu) {
            Menu orDefault = this.d.getOrDefault(menu, null);
            if (orDefault != null) {
                return orDefault;
            }
            r1 r1Var = new r1(this.b, (t8) menu);
            this.d.put(menu, r1Var);
            return r1Var;
        }
    }

    public z0(Context context, v0 v0Var) {
        this.a = context;
        this.b = v0Var;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.b.c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.b.d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new r1(this.a, (t8) this.b.e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.b.g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.b.e;
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.b.h();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.b.f;
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.b.i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.b.j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.b.k(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.b.e = obj;
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.b.p(z);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.b.l(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.b.n(i);
    }
}
