package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import defpackage.j1;
import defpackage.p1;
import defpackage.u;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class l0 extends u {
    public l2 a;
    public boolean b;
    public Window.Callback c;
    public boolean d;
    public boolean e;
    public ArrayList<u.b> f = new ArrayList<>();
    public final Runnable g = new a();
    public final Toolbar.f h;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0 l0Var = l0.this;
            Menu menuY = l0Var.y();
            j1 j1Var = menuY instanceof j1 ? (j1) menuY : null;
            if (j1Var != null) {
                j1Var.B();
            }
            try {
                menuY.clear();
                if (!l0Var.c.onCreatePanelMenu(0, menuY) || !l0Var.c.onPreparePanel(0, null, menuY)) {
                    menuY.clear();
                }
            } finally {
                if (j1Var != null) {
                    j1Var.A();
                }
            }
        }
    }

    public class b implements Toolbar.f {
        public b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.f
        public boolean onMenuItemClick(MenuItem menuItem) {
            return l0.this.c.onMenuItemSelected(0, menuItem);
        }
    }

    public final class c implements p1.a {
        public boolean e;

        public c() {
        }

        @Override // p1.a
        public void b(j1 j1Var, boolean z) {
            if (this.e) {
                return;
            }
            this.e = true;
            l0.this.a.f();
            Window.Callback callback = l0.this.c;
            if (callback != null) {
                callback.onPanelClosed(108, j1Var);
            }
            this.e = false;
        }

        @Override // p1.a
        public boolean c(j1 j1Var) {
            Window.Callback callback = l0.this.c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, j1Var);
            return true;
        }
    }

    public final class d implements j1.a {
        public d() {
        }

        @Override // j1.a
        public boolean a(j1 j1Var, MenuItem menuItem) {
            return false;
        }

        @Override // j1.a
        public void b(j1 j1Var) {
            l0 l0Var = l0.this;
            if (l0Var.c != null) {
                if (l0Var.a.a()) {
                    l0.this.c.onPanelClosed(108, j1Var);
                } else if (l0.this.c.onPreparePanel(0, null, j1Var)) {
                    l0.this.c.onMenuOpened(108, j1Var);
                }
            }
        }
    }

    public class e extends c1 {
        public e(Window.Callback callback) {
            super(callback);
        }

        @Override // defpackage.c1, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return i == 0 ? new View(l0.this.a.getContext()) : this.e.onCreatePanelView(i);
        }

        @Override // android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean zOnPreparePanel = this.e.onPreparePanel(i, view, menu);
            if (zOnPreparePanel) {
                l0 l0Var = l0.this;
                if (!l0Var.b) {
                    l0Var.a.setMenuPrepared();
                    l0.this.b = true;
                }
            }
            return zOnPreparePanel;
        }
    }

    public l0(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        b bVar = new b();
        this.h = bVar;
        this.a = new e3(toolbar, false);
        e eVar = new e(callback);
        this.c = eVar;
        this.a.setWindowCallback(eVar);
        toolbar.setOnMenuItemClickListener(bVar);
        this.a.setWindowTitle(charSequence);
    }

    @Override // defpackage.u
    public boolean a() {
        return this.a.d();
    }

    @Override // defpackage.u
    public boolean b() {
        if (!this.a.h()) {
            return false;
        }
        this.a.collapseActionView();
        return true;
    }

    @Override // defpackage.u
    public void c(boolean z) {
        if (z == this.e) {
            return;
        }
        this.e = z;
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            this.f.get(i).a(z);
        }
    }

    @Override // defpackage.u
    public int d() {
        return this.a.s();
    }

    @Override // defpackage.u
    public Context e() {
        return this.a.getContext();
    }

    @Override // defpackage.u
    public void f() {
        this.a.p(8);
    }

    @Override // defpackage.u
    public boolean g() {
        this.a.q().removeCallbacks(this.g);
        ViewGroup viewGroupQ = this.a.q();
        Runnable runnable = this.g;
        AtomicInteger atomicInteger = ha.a;
        viewGroupQ.postOnAnimation(runnable);
        return true;
    }

    @Override // defpackage.u
    public void h(Configuration configuration) {
    }

    @Override // defpackage.u
    public void i() {
        this.a.q().removeCallbacks(this.g);
    }

    @Override // defpackage.u
    public boolean j(int i, KeyEvent keyEvent) {
        Menu menuY = y();
        if (menuY == null) {
            return false;
        }
        menuY.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuY.performShortcut(i, keyEvent, 0);
    }

    @Override // defpackage.u
    public boolean k(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            this.a.e();
        }
        return true;
    }

    @Override // defpackage.u
    public boolean l() {
        return this.a.e();
    }

    @Override // defpackage.u
    public void m(View view) {
        view.setLayoutParams(new u.a(-2, -2));
        this.a.t(view);
    }

    @Override // defpackage.u
    public void n(boolean z) {
    }

    @Override // defpackage.u
    public void o(boolean z) {
        z(z ? 4 : 0, 4);
    }

    @Override // defpackage.u
    public void p(boolean z) {
        z(z ? 16 : 0, 16);
    }

    @Override // defpackage.u
    public void q(boolean z) {
        z(z ? 8 : 0, 8);
    }

    @Override // defpackage.u
    public void r(boolean z) {
    }

    @Override // defpackage.u
    public void s(CharSequence charSequence) {
        this.a.j(charSequence);
    }

    @Override // defpackage.u
    public void t(int i) {
        l2 l2Var = this.a;
        l2Var.setTitle(i != 0 ? l2Var.getContext().getText(i) : null);
    }

    @Override // defpackage.u
    public void u(CharSequence charSequence) {
        this.a.setTitle(charSequence);
    }

    @Override // defpackage.u
    public void v(CharSequence charSequence) {
        this.a.setWindowTitle(charSequence);
    }

    @Override // defpackage.u
    public void w() {
        this.a.p(0);
    }

    public final Menu y() {
        if (!this.d) {
            this.a.o(new c(), new d());
            this.d = true;
        }
        return this.a.k();
    }

    public void z(int i, int i2) {
        this.a.i((i & i2) | ((~i2) & this.a.s()));
    }
}
