package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.widget.ActionMenuPresenter;
import defpackage.p1;

/* loaded from: classes.dex */
public abstract class w9 {
    public a a;
    public b b;

    public interface a {
    }

    public interface b {
    }

    public w9(Context context) {
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public View d(MenuItem menuItem) {
        return c();
    }

    public boolean e() {
        return false;
    }

    public void f(SubMenu subMenu) {
    }

    public boolean g() {
        return false;
    }

    public void h(b bVar) {
        if (this.b != null) {
            StringBuilder sbZ = jo.z("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            sbZ.append(getClass().getSimpleName());
            sbZ.append(" instance while it is still in use somewhere else?");
            Log.w("ActionProvider(support)", sbZ.toString());
        }
        this.b = bVar;
    }

    public void i(boolean z) {
        a aVar = this.a;
        if (aVar != null) {
            ActionMenuPresenter actionMenuPresenter = (ActionMenuPresenter) aVar;
            if (z) {
                p1.a aVar2 = actionMenuPresenter.i;
                if (aVar2 != null) {
                    aVar2.c(actionMenuPresenter.g);
                    return;
                }
                return;
            }
            j1 j1Var = actionMenuPresenter.g;
            if (j1Var != null) {
                j1Var.c(false);
            }
        }
    }
}
