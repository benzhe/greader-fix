package com.noinnion.android.greader.ui.login;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.cn6;
import defpackage.gw6;
import defpackage.iw6;
import defpackage.jw6;
import defpackage.n56;
import defpackage.wn6;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class InoreaderLoginActivity extends BaseDialogActivity implements View.OnClickListener {
    public static final /* synthetic */ int A = 0;
    public TextView y;
    public TextView z;

    public class b extends AsyncTask<String, Void, Boolean> {
        public b(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            String str = strArr2[0];
            String str2 = strArr2[1];
            Context applicationContext = InoreaderLoginActivity.this.getApplicationContext();
            wn6 wn6Var = new wn6(applicationContext);
            Boolean bool = null;
            try {
                cn6.h0(applicationContext, 6);
                cn6.f0(applicationContext, null);
                if (wn6Var.j(str, str2, true)) {
                    cn6.g0(applicationContext, str, str2);
                    bool = Boolean.TRUE;
                } else {
                    InoreaderLoginActivity inoreaderLoginActivity = InoreaderLoginActivity.this;
                    n56.X1(inoreaderLoginActivity, inoreaderLoginActivity.getText(R.string.msg_login_fail));
                }
            } catch (gw6 e) {
                e.printStackTrace();
                InoreaderLoginActivity inoreaderLoginActivity2 = InoreaderLoginActivity.this;
                n56.X1(inoreaderLoginActivity2, inoreaderLoginActivity2.getText(R.string.msg_login_fail));
            } catch (IOException e2) {
                e2.printStackTrace();
                n56.X1(InoreaderLoginActivity.this, ((Object) InoreaderLoginActivity.this.getText(R.string.err_io)) + " (" + e2.getLocalizedMessage() + ")");
            } catch (Throwable th) {
                th.printStackTrace();
                n56.X1(InoreaderLoginActivity.this, th.getLocalizedMessage());
            }
            return bool;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            Boolean bool2 = bool;
            InoreaderLoginActivity.this.findViewById(R.id.loading).setVisibility(8);
            InoreaderLoginActivity inoreaderLoginActivity = InoreaderLoginActivity.this;
            int i = InoreaderLoginActivity.A;
            Context applicationContext = inoreaderLoginActivity.getApplicationContext();
            if (bool2 == null || !bool2.booleanValue()) {
                n56.W1(applicationContext, R.string.msg_login_fail);
                cn6.h0(inoreaderLoginActivity.getApplicationContext(), 0);
            } else {
                iw6.Z(inoreaderLoginActivity.getApplicationContext(), 1);
                inoreaderLoginActivity.setResult(-1);
                inoreaderLoginActivity.finish();
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            InoreaderLoginActivity.this.findViewById(R.id.loading).setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_cancel /* 2131296401 */:
                finish();
                break;
            case R.id.btn_login /* 2131296402 */:
                String string = this.y.getText().toString();
                String string2 = this.z.getText().toString();
                if (string.length() != 0 && string2.length() != 0) {
                    new b(null).execute(string, string2);
                    break;
                } else {
                    n56.X1(this, getText(R.string.msg_login_fail));
                    break;
                }
                break;
            case R.id.website /* 2131297119 */:
                jw6.a(this, "https://inoreader.com");
                break;
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, false);
        setResult(0);
        setContentView(R.layout.login_inoreader);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
        }
        this.y = (TextView) findViewById(R.id.edit_login_id);
        this.z = (TextView) findViewById(R.id.edit_password);
        String strB0 = cn6.b0(getApplicationContext());
        if (strB0 != null) {
            this.y.setText(strB0);
        }
        findViewById(R.id.btn_login).setOnClickListener(this);
        findViewById(R.id.btn_cancel).setOnClickListener(this);
        findViewById(R.id.website).setOnClickListener(this);
        n56.y2(this, R.string.ga_screen_login_inoreader);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.login_inoreader, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        switch (menuItem.getItemId()) {
            case R.id.base_url_default /* 2131296371 */:
                int i = cn6.b;
                iw6.V(this, "inoreader_base_url", "https://inoreader.com");
                menuItem.setChecked(true);
                break;
            case R.id.base_url_innoreader /* 2131296372 */:
                int i2 = cn6.b;
                iw6.V(this, "inoreader_base_url", "https://innoreader.com");
                menuItem.setChecked(true);
                break;
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem menuItemFindItem;
        int i = cn6.b;
        String strG = iw6.G(this, "inoreader_base_url", "https://inoreader.com");
        if (strG.equals("https://inoreader.com")) {
            MenuItem menuItemFindItem2 = menu.findItem(R.id.base_url_default);
            if (menuItemFindItem2 != null) {
                menuItemFindItem2.setChecked(true);
            }
        } else if (strG.equals("https://innoreader.com") && (menuItemFindItem = menu.findItem(R.id.base_url_innoreader)) != null) {
            menuItemFindItem.setChecked(true);
        }
        return true;
    }
}
