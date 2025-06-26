package defpackage;

import android.view.View;
import com.google.android.material.appbar.AppBarLayout;
import defpackage.ua;

/* loaded from: classes.dex */
public class v55 implements ua {
    public final /* synthetic */ AppBarLayout a;
    public final /* synthetic */ boolean b;

    public v55(AppBarLayout.BaseBehavior baseBehavior, AppBarLayout appBarLayout, boolean z) {
        this.a = appBarLayout;
        this.b = z;
    }

    @Override // defpackage.ua
    public boolean a(View view, ua.a aVar) {
        this.a.setExpanded(this.b);
        return true;
    }
}
