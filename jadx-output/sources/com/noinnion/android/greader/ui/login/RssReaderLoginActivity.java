package com.noinnion.android.greader.ui.login;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.iw6;
import defpackage.n56;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class RssReaderLoginActivity extends BaseDialogActivity implements View.OnClickListener {
    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (view.getId() != R.id.btn_login) {
            return;
        }
        iw6.Z(getApplicationContext(), 14);
        setResult(-1);
        finish();
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, false);
        setResult(0);
        setContentView(R.layout.login_rss_reader);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
        }
        findViewById(R.id.btn_login).setOnClickListener(this);
        n56.y2(this, R.string.ga_screen_login_local);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.login_local, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.menu_optimized) {
            return false;
        }
        iw6.S(this, "sync_local_opimized", !menuItem.isChecked());
        menuItem.setChecked(!menuItem.isChecked());
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_optimized);
        if (menuItemFindItem == null) {
            return true;
        }
        menuItemFindItem.setChecked(iw6.f(this, "sync_local_opimized", false));
        return true;
    }
}
