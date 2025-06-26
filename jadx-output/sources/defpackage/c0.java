package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class c0 {
    public static final h4<WeakReference<c0>> e = new h4<>(0);
    public static final Object f = new Object();

    public static void s(c0 c0Var) {
        synchronized (f) {
            Iterator<WeakReference<c0>> it = e.iterator();
            while (it.hasNext()) {
                c0 c0Var2 = it.next().get();
                if (c0Var2 == c0Var || c0Var2 == null) {
                    it.remove();
                }
            }
        }
    }

    public abstract void c(View view, ViewGroup.LayoutParams layoutParams);

    public Context d(Context context) {
        return context;
    }

    public abstract <T extends View> T e(int i);

    public int f() {
        return -100;
    }

    public abstract MenuInflater g();

    public abstract u h();

    public abstract void i();

    public abstract void j();

    public abstract void k(Configuration configuration);

    public abstract void l(Bundle bundle);

    public abstract void m();

    public abstract void n(Bundle bundle);

    public abstract void o();

    public abstract void p(Bundle bundle);

    public abstract void q();

    public abstract void r();

    public abstract boolean t(int i);

    public abstract void u(int i);

    public abstract void v(View view);

    public abstract void w(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void x(Toolbar toolbar);

    public void y(int i) {
    }

    public abstract void z(CharSequence charSequence);
}
