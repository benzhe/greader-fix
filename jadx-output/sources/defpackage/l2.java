package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.ScrollingTabContainerView;
import defpackage.j1;
import defpackage.p1;

/* loaded from: classes.dex */
public interface l2 {
    boolean a();

    boolean b();

    boolean c();

    void collapseActionView();

    boolean d();

    boolean e();

    void f();

    void g(ScrollingTabContainerView scrollingTabContainerView);

    Context getContext();

    CharSequence getTitle();

    boolean h();

    void i(int i);

    void j(CharSequence charSequence);

    Menu k();

    void l(int i);

    int m();

    ma n(int i, long j);

    void o(p1.a aVar, j1.a aVar2);

    void p(int i);

    ViewGroup q();

    void r(boolean z);

    int s();

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setMenu(Menu menu, p1.a aVar);

    void setMenuPrepared();

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    void t(View view);

    void u();

    void v();

    void w(boolean z);
}
