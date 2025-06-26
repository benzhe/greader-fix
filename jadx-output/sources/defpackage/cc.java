package defpackage;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import defpackage.ad;
import defpackage.dc;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class cc extends xi {
    public final wb b;
    public dc d = null;
    public Fragment e = null;
    public final int c = 0;

    @Deprecated
    public cc(wb wbVar) {
        this.b = wbVar;
    }

    public static String l(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    @Override // defpackage.xi
    public void a(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.d == null) {
            xb xbVar = (xb) this.b;
            Objects.requireNonNull(xbVar);
            this.d = new qb(xbVar);
        }
        this.d.e(fragment);
        if (fragment == this.e) {
            this.e = null;
        }
    }

    @Override // defpackage.xi
    public void b(ViewGroup viewGroup) {
        dc dcVar = this.d;
        if (dcVar != null) {
            qb qbVar = (qb) dcVar;
            if (qbVar.h) {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
            qbVar.i = false;
            qbVar.r.V(qbVar, true);
            this.d = null;
        }
    }

    @Override // defpackage.xi
    public Object e(ViewGroup viewGroup, int i) {
        if (this.d == null) {
            xb xbVar = (xb) this.b;
            Objects.requireNonNull(xbVar);
            this.d = new qb(xbVar);
        }
        long j = i;
        Fragment fragmentC = this.b.c(l(viewGroup.getId(), j));
        if (fragmentC != null) {
            this.d.b(new dc.a(7, fragmentC));
        } else {
            fragmentC = k(i);
            this.d.f(viewGroup.getId(), fragmentC, l(viewGroup.getId(), j), 1);
        }
        if (fragmentC != this.e) {
            fragmentC.setMenuVisibility(false);
            if (this.c == 1) {
                this.d.h(fragmentC, ad.b.STARTED);
            } else {
                fragmentC.setUserVisibleHint(false);
            }
        }
        return fragmentC;
    }

    @Override // defpackage.xi
    public boolean f(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // defpackage.xi
    public void g(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // defpackage.xi
    public Parcelable h() {
        return null;
    }

    @Override // defpackage.xi
    public void i(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.e;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.c == 1) {
                    if (this.d == null) {
                        xb xbVar = (xb) this.b;
                        Objects.requireNonNull(xbVar);
                        this.d = new qb(xbVar);
                    }
                    this.d.h(this.e, ad.b.STARTED);
                } else {
                    this.e.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.c == 1) {
                if (this.d == null) {
                    xb xbVar2 = (xb) this.b;
                    Objects.requireNonNull(xbVar2);
                    this.d = new qb(xbVar2);
                }
                this.d.h(fragment, ad.b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.e = fragment;
        }
    }

    @Override // defpackage.xi
    public void j(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    public abstract Fragment k(int i);
}
