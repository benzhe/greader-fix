package defpackage;

import android.appwidget.AppWidgetManager;
import android.graphics.Bitmap;
import android.view.View;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class pv6 extends l07 {
    public final /* synthetic */ qv6 a;

    public pv6(qv6 qv6Var) {
        this.a = qv6Var;
    }

    @Override // defpackage.l07
    public void a(String str, View view, Bitmap bitmap) {
        if (bitmap == null || bitmap.getWidth() <= 50) {
            return;
        }
        qv6 qv6Var = this.a;
        AppWidgetManager.getInstance(qv6Var.a).notifyAppWidgetViewDataChanged(qv6Var.c, R.id.list_view);
    }
}
