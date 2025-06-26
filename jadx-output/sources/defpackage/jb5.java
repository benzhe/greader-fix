package defpackage;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* loaded from: classes.dex */
public class jb5 implements SwipeDismissBehavior.b {
    public final /* synthetic */ BaseTransientBottomBar a;

    public jb5(BaseTransientBottomBar baseTransientBottomBar) {
        this.a = baseTransientBottomBar;
    }

    public void a(View view) {
        if (view.getParent() != null) {
            view.setVisibility(8);
        }
        this.a.b(0);
    }
}
