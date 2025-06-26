package defpackage;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.RemoteViews;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public final class vv6 extends l07 {
    public final /* synthetic */ RemoteViews a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ int c;

    public vv6(RemoteViews remoteViews, Context context, int i) {
        this.a = remoteViews;
        this.b = context;
        this.c = i;
    }

    @Override // defpackage.l07
    public void a(String str, View view, Bitmap bitmap) {
        if (bitmap == null || bitmap.getWidth() <= 50) {
            return;
        }
        this.a.setImageViewBitmap(R.id.image, bitmap);
        this.a.setViewVisibility(R.id.image, 0);
        AppWidgetManager.getInstance(this.b).updateAppWidget(this.c, this.a);
    }
}
