package defpackage;

import android.view.View;
import android.widget.AbsListView;
import androidx.appcompat.app.AlertController;

/* loaded from: classes.dex */
public class x implements AbsListView.OnScrollListener {
    public final /* synthetic */ View a;
    public final /* synthetic */ View b;

    public x(AlertController alertController, View view, View view2) {
        this.a = view;
        this.b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AlertController.c(absListView, this.a, this.b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
