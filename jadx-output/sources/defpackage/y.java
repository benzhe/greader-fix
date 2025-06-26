package defpackage;

import android.view.View;
import androidx.appcompat.app.AlertController;

/* loaded from: classes.dex */
public class y implements Runnable {
    public final /* synthetic */ View e;
    public final /* synthetic */ View f;
    public final /* synthetic */ AlertController g;

    public y(AlertController alertController, View view, View view2) {
        this.g = alertController;
        this.e = view;
        this.f = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertController.c(this.g.g, this.e, this.f);
    }
}
