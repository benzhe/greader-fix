package defpackage;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.view.ViewTreeObserver;
import com.google.android.material.navigation.NavigationView;

/* loaded from: classes.dex */
public class d95 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ NavigationView e;

    public d95(NavigationView navigationView) {
        this.e = navigationView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Activity activity;
        NavigationView navigationView = this.e;
        navigationView.getLocationOnScreen(navigationView.n);
        NavigationView navigationView2 = this.e;
        boolean z = navigationView2.n[1] == 0;
        m85 m85Var = navigationView2.k;
        if (m85Var.t != z) {
            m85Var.t = z;
            m85Var.e();
        }
        this.e.setDrawTopInsetForeground(z);
        Context context = this.e.getContext();
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                activity = null;
                break;
            } else {
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        if (activity != null) {
            this.e.setDrawBottomInsetForeground((activity.findViewById(R.id.content).getHeight() == this.e.getHeight()) && (Color.alpha(activity.getWindow().getNavigationBarColor()) != 0));
        }
    }
}
