package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.provider.ImageLoaderProvider;
import java.io.File;
import java.util.Objects;

/* loaded from: classes2.dex */
public class qv6 implements RemoteViewsService.RemoteViewsFactory {
    public static uv6 k;
    public final Context a;
    public Cursor b;
    public final int c;
    public String d;
    public boolean e;
    public ap6 f;
    public boolean g;
    public int h;
    public int i;
    public final Handler j = new Handler(Looper.getMainLooper());

    public qv6(Context context, Intent intent) {
        this.a = context;
        int intExtra = intent.getIntExtra("appWidgetId", 0);
        this.c = intExtra;
        this.d = a(context).j(intExtra);
        this.e = a(context).m(intExtra);
        b();
    }

    public static uv6 a(Context context) {
        if (k == null) {
            k = new uv6(context);
        }
        return k;
    }

    public final void b() {
        String string = a(this.a).a.getString(uv6.g(this.c, "text_size"), null);
        this.h = (string == null || string.length() == 0) ? 16 : Integer.parseInt(string);
        this.i = a(this.a).k(this.c);
        this.g = a(this.a).b(this.a, this.c);
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public int getCount() {
        Cursor cursor = this.b;
        if (cursor == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public RemoteViews getLoadingView() {
        return null;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public RemoteViews getViewAt(int i) {
        Cursor cursor = this.b;
        if (cursor == null || cursor.isClosed() || !this.b.moveToPosition(i)) {
            return null;
        }
        ap6 ap6Var = this.f;
        if (ap6Var == null) {
            this.f = new ap6(this.b);
        } else {
            ap6Var.q(this.b);
        }
        RemoteViews remoteViews = new RemoteViews(this.a.getPackageName(), R.layout.widget_large_list_row);
        remoteViews.setInt(R.id.channel, "setTextColor", this.i);
        remoteViews.setInt(R.id.title, "setTextColor", this.i);
        remoteViews.setTextViewText(R.id.title, Html.fromHtml(this.f.h));
        remoteViews.setTextViewTextSize(R.id.title, 2, this.h);
        StringBuilder sbB = jo.B(TextUtils.isEmpty(this.f.A) ? "" : this.f.A, " / ");
        sbB.append(n56.y0(this.a, this.f.q * 1000));
        remoteViews.setTextViewText(R.id.channel, sbB.toString());
        remoteViews.setViewVisibility(R.id.thumb, 8);
        if (!this.g && this.f.p()) {
            String strN = this.f.n();
            int i2 = ImageLoaderProvider.e;
            File fileA = hz6.j().i().a(strN);
            if (fileA == null || !fileA.exists()) {
                this.j.post(new Runnable() { // from class: lv6
                    @Override // java.lang.Runnable
                    public final void run() throws Resources.NotFoundException {
                        qv6 qv6Var = this.e;
                        Objects.requireNonNull(qv6Var);
                        hz6.j().l(qv6Var.f.n(), new uz6(80, 80), null, new pv6(qv6Var));
                    }
                });
            } else {
                remoteViews.setImageViewUri(R.id.thumb, Uri.parse(ImageLoaderProvider.a("com.noinnion.android.greader.reader.imageloader", gy6.d(this.f.n().getBytes()))));
                remoteViews.setViewVisibility(R.id.thumb, 0);
            }
        }
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.WIDGET_ITEM_CLICK");
        Bundle bundle = new Bundle();
        bundle.putLong("itemId", this.f.e);
        bundle.putInt("cursorPosition", i);
        bundle.putBoolean("unreadOnly", this.e);
        bundle.putInt("page", (i / 50) + 1);
        bundle.putInt("appWidgetId", this.c);
        intent.putExtras(bundle);
        remoteViews.setOnClickFillInIntent(R.id.widget_row, intent);
        return remoteViews;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onCreate() {
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onDataSetChanged() {
        b();
        Cursor cursor = this.b;
        if (cursor != null) {
            cursor.close();
        }
        this.d = a(this.a).j(this.c);
        this.e = a(this.a).m(this.c);
        int iF = a(this.a).f(this.c);
        this.b = ep6.s(this.a, this.d, a(this.a).m(this.c), on6.f(this.a) + " limit " + iF);
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onDestroy() {
        Cursor cursor = this.b;
        if (cursor != null) {
            cursor.close();
        }
    }
}
