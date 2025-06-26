package com.noinnion.android.greader.ui.login;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.HomeActivity;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;
import com.noinnion.android.greader.ui.home.WelcomeActivity;
import com.noinnion.android.greader.ui.setting.SettingsActivity;
import com.noinnion.android.reader.ui.BaseActivity;
import defpackage.cn6;
import defpackage.im7;
import defpackage.iw6;
import defpackage.jw6;
import defpackage.lw6;
import defpackage.n56;
import defpackage.on6;
import defpackage.u;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class LoginActivity extends BaseActivity implements View.OnClickListener {
    public final void A(boolean z) {
        Context applicationContext = getApplicationContext();
        Intent intent = lw6.n(applicationContext, iw6.a0(applicationContext)) ? new Intent(this, (Class<?>) HomeTabletActivity.class) : new Intent(this, (Class<?>) HomeActivity.class);
        intent.setFlags(268435456);
        intent.addFlags(131072);
        intent.addFlags(67108864);
        if (z) {
            intent.putExtra("provokeSyncing", true);
        }
        try {
            try {
                startActivity(intent);
            } catch (Exception e) {
                n56.X1(this, e.getLocalizedMessage());
            }
        } finally {
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onActivityResult(i, i2, intent);
        if (i == 5) {
            if (i2 == -1) {
                z(5);
            }
        } else if (i == 6) {
            if (i2 == -1) {
                z(6);
            }
        } else if (i == 7) {
            if (i2 == -1) {
                z(7);
            }
        } else if (i == 8 && i2 == -1) {
            z(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        im7.e(view, "view");
        int id = view.getId();
        if (id == R.id.getting_started) {
            jw6.a(this, "https://noinnion.com/greader/guide");
        }
        switch (id) {
            case R.id.client_feedly /* 2131296436 */:
                startActivityForResult(new Intent(this, (Class<?>) FeedlyLoginActivity.class), 5);
                break;
            case R.id.client_inoreader /* 2131296437 */:
                startActivityForResult(new Intent(this, (Class<?>) InoreaderLoginActivity.class), 8);
                break;
            case R.id.client_old_reader /* 2131296438 */:
                startActivityForResult(new Intent(this, (Class<?>) OldReaderLoginActivity.class), 6);
                break;
            case R.id.client_rss_reader /* 2131296439 */:
                startActivityForResult(new Intent(this, (Class<?>) RssReaderLoginActivity.class), 7);
                break;
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean zB = false;
        y(bundle, false, false);
        Context applicationContext = getApplicationContext();
        if (getIntent().getBooleanExtra("auto_login", true) && cn6.c0(applicationContext) >= 5) {
            String strF = iw6.F(applicationContext, "sync_on_start");
            if (strF != null && strF.length() != 0) {
                zB = iw6.b(applicationContext, Integer.parseInt(strF));
            }
            A(zB);
            return;
        }
        setContentView(R.layout.login);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
            u uVarT = t();
            if (uVarT != null) {
                uVarT.q(false);
            }
        }
        findViewById(R.id.getting_started).setOnClickListener(this);
        findViewById(R.id.client_feedly).setOnClickListener(this);
        findViewById(R.id.client_old_reader).setOnClickListener(this);
        findViewById(R.id.client_inoreader).setOnClickListener(this);
        findViewById(R.id.client_rss_reader).setOnClickListener(this);
        n56.y2(this, R.string.ga_screen_login);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        im7.e(menu, "menu");
        getMenuInflater().inflate(R.menu.login, menu);
        return true;
    }

    @Override // com.noinnion.android.reader.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        im7.e(menuItem, NSRSS20.ITEM);
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_help) {
            startActivity(new Intent(this, (Class<?>) WelcomeActivity.class));
            return true;
        }
        if (itemId != R.id.menu_prefs) {
            return false;
        }
        startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
        return true;
    }

    public final void z(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Context applicationContext = getApplicationContext();
        cn6.h0(applicationContext, i);
        iw6.X(applicationContext, "user_id");
        on6.f = null;
        A(true);
    }
}
