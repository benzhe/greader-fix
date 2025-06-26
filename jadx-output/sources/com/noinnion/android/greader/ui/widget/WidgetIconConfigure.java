package com.noinnion.android.greader.ui.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.noinnion.android.greader.reader.R;
import defpackage.uv6;

/* loaded from: classes2.dex */
public class WidgetIconConfigure extends WidgetConfigureActivity {
    @Override // com.noinnion.android.greader.ui.widget.WidgetConfigureActivity
    public void C(int i, String str, String str2) {
        uv6 uv6Var = new uv6(getBaseContext());
        uv6Var.q(i, 1);
        uv6Var.o(i, str);
        uv6Var.p(i, str2);
        Context baseContext = getBaseContext();
        AppWidgetManager.getInstance(baseContext).updateAppWidget(i, WidgetIconProvider.b(baseContext, i));
        Intent intent = new Intent();
        intent.setData(Uri.withAppendedPath(Uri.parse("greader://widget/id/"), String.valueOf(i)));
        intent.putExtra("appWidgetId", i);
        setResult(-1, intent);
        finish();
    }

    @Override // com.noinnion.android.greader.ui.widget.WidgetConfigureActivity, com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.y = 1;
        super.onCreate(bundle);
        setTitle(R.string.widget_label_icon);
    }
}
