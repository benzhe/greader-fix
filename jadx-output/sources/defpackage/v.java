package defpackage;

import android.view.View;
import androidx.appcompat.app.AlertController;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public class v implements NestedScrollView.b {
    public final /* synthetic */ View a;
    public final /* synthetic */ View b;

    public v(AlertController alertController, View view, View view2) {
        this.a = view;
        this.b = view2;
    }

    @Override // androidx.core.widget.NestedScrollView.b
    public void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        AlertController.c(nestedScrollView, this.a, this.b);
    }
}
