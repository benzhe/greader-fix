package com.noinnion.android.greader.ui.widget;

import android.R;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.snackbar.Snackbar;
import com.noinnion.android.greader.ui.widget.WidgetConfigureActivity;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.cn6;
import defpackage.qb;
import defpackage.sv6;
import defpackage.xb;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class WidgetConfigureActivity extends BaseDialogActivity {
    public int y = 0;

    public boolean B() {
        if ((this.y == 1) || cn6.d0(this)) {
            return true;
        }
        Snackbar snackbarJ = Snackbar.j(findViewById(R.id.content), getText(com.noinnion.android.greader.reader.R.string.limit_widget), -2);
        snackbarJ.k(getString(com.noinnion.android.greader.reader.R.string.premium_get_premium), new View.OnClickListener() { // from class: nv6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WidgetConfigureActivity widgetConfigureActivity = this.e;
                Objects.requireNonNull(widgetConfigureActivity);
                n56.Z1(widgetConfigureActivity);
            }
        });
        snackbarJ.l();
        return false;
    }

    public abstract void C(int i, String str, String str2);

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, true);
        setResult(0);
        setContentView(com.noinnion.android.greader.reader.R.layout.widget_configure);
        Toolbar toolbar = (Toolbar) findViewById(com.noinnion.android.greader.reader.R.id.toolbar);
        if (toolbar != null) {
            toolbar.setTitle(com.noinnion.android.greader.reader.R.string.widget_configuration);
            toolbar.setNavigationIcon(com.noinnion.android.greader.reader.R.drawable.abc_ic_ab_back_mtrl_am_alpha);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: mv6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.e.finish();
                }
            });
        }
        sv6 sv6Var = new sv6();
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.putInt("app_widget_type", this.y);
        sv6Var.setArguments(extras);
        xb xbVar = (xb) o();
        Objects.requireNonNull(xbVar);
        qb qbVar = new qb(xbVar);
        qbVar.g(com.noinnion.android.greader.reader.R.id.content, sv6Var, null);
        qbVar.c();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        B();
    }
}
