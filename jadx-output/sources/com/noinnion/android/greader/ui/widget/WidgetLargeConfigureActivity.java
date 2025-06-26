package com.noinnion.android.greader.ui.widget;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.noinnion.android.greader.reader.R;
import defpackage.uv6;

/* loaded from: classes2.dex */
public class WidgetLargeConfigureActivity extends WidgetConfigureActivity {
    @Override // com.noinnion.android.greader.ui.widget.WidgetConfigureActivity
    public void C(int i, String str, String str2) {
        uv6 uv6Var = new uv6(getBaseContext());
        uv6Var.q(i, 4);
        if (str == null) {
            str2 = getString(R.string.label_all);
            str = "all";
        }
        uv6Var.o(i, str);
        uv6Var.p(i, str2);
        WidgetLargeProvider.a(getBaseContext(), i, true);
        Intent intent = new Intent();
        intent.setData(Uri.withAppendedPath(Uri.parse("greader://widget/id/"), String.valueOf(i)));
        intent.putExtra("appWidgetId", i);
        setResult(-1, intent);
        finish();
    }

    @Override // com.noinnion.android.greader.ui.widget.WidgetConfigureActivity, com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.y = 4;
        super.onCreate(bundle);
        setTitle(R.string.widget_label_large);
    }
}
