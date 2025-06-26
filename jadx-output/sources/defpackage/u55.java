package defpackage;

import android.content.res.Resources;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import defpackage.ua;

/* loaded from: classes.dex */
public class u55 implements ua {
    public final /* synthetic */ CoordinatorLayout a;
    public final /* synthetic */ AppBarLayout b;
    public final /* synthetic */ View c;
    public final /* synthetic */ int d;
    public final /* synthetic */ AppBarLayout.BaseBehavior e;

    public u55(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
        this.e = baseBehavior;
        this.a = coordinatorLayout;
        this.b = appBarLayout;
        this.c = view;
        this.d = i;
    }

    @Override // defpackage.ua
    public boolean a(View view, ua.a aVar) throws Resources.NotFoundException {
        this.e.K(this.a, this.b, this.c, this.d, new int[]{0, 0});
        return true;
    }
}
