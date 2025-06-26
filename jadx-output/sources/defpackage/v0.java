package defpackage;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* loaded from: classes.dex */
public abstract class v0 {
    public Object e;
    public boolean f;

    public interface a {
        void a(v0 v0Var);

        boolean b(v0 v0Var, Menu menu);

        boolean c(v0 v0Var, Menu menu);

        boolean d(v0 v0Var, MenuItem menuItem);
    }

    public abstract void c();

    public abstract View d();

    public abstract Menu e();

    public abstract MenuInflater f();

    public abstract CharSequence g();

    public abstract CharSequence h();

    public abstract void i();

    public abstract boolean j();

    public abstract void k(View view);

    public abstract void l(int i);

    public abstract void m(CharSequence charSequence);

    public abstract void n(int i);

    public abstract void o(CharSequence charSequence);

    public abstract void p(boolean z);
}
