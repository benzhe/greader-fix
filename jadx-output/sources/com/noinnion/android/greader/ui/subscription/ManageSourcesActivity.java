package com.noinnion.android.greader.ui.subscription;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.subscription.ManageSourcesActivity;
import com.noinnion.android.greader.ui.subscription.ManageSourcesActivity.d;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.dn6;
import defpackage.ep6;
import defpackage.ip6;
import defpackage.kp6;
import defpackage.lp6;
import defpackage.lu6;
import defpackage.mu6;
import defpackage.n56;
import defpackage.on6;
import defpackage.qb;
import defpackage.t75;
import defpackage.wx6;
import defpackage.xb;
import defpackage.yd;
import defpackage.yo6;
import defpackage.zx6;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import xb.i;

/* loaded from: classes2.dex */
public class ManageSourcesActivity extends BaseDialogActivity {
    public static final /* synthetic */ int A = 0;
    public int y = 1;
    public ProgressDialog z;

    public class a implements DialogInterface.OnClickListener {
        public a(ManageSourcesActivity manageSourcesActivity) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public final /* synthetic */ String e;

        public b(String str) {
            this.e = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ManageSourcesActivity.this.new c(null).execute(this.e);
        }
    }

    public class c extends AsyncTask<String, Void, Void> {
        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            Context applicationContext = ManageSourcesActivity.this.getApplicationContext();
            try {
                on6.i(applicationContext).g(lp6.b(applicationContext, strArr2[0], false));
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            ManageSourcesActivity manageSourcesActivity = ManageSourcesActivity.this;
            Objects.requireNonNull(manageSourcesActivity);
            yd.a(manageSourcesActivity).c(new Intent("com.noinnion.android.greader.reader.action.REFRESH"));
            ProgressDialog progressDialog = ManageSourcesActivity.this.z;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            ManageSourcesActivity.this.z.dismiss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            ManageSourcesActivity manageSourcesActivity = ManageSourcesActivity.this;
            manageSourcesActivity.z = ProgressDialog.show(manageSourcesActivity, null, manageSourcesActivity.getText(R.string.msg_confirm_delete), true, true);
        }
    }

    public class d extends AsyncTask<Long, Void, Void> {
        public d(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Long[] lArr) {
            Long[] lArr2 = lArr;
            Context applicationContext = ManageSourcesActivity.this.getApplicationContext();
            try {
                ip6 ip6VarC = ip6.c(applicationContext, lArr2[0].longValue(), false);
                if (ip6VarC == null) {
                    return null;
                }
                on6.i(applicationContext).X(ip6VarC.e, ip6VarC.h, ip6VarC.f.replaceFirst(RssReaderClient.USER_FEED, ""));
                return null;
            } catch (Exception e) {
                n56.X1(applicationContext, e.getLocalizedMessage());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            ManageSourcesActivity manageSourcesActivity = ManageSourcesActivity.this;
            Objects.requireNonNull(manageSourcesActivity);
            yd.a(manageSourcesActivity).c(new Intent("com.noinnion.android.greader.reader.action.REFRESH"));
            ProgressDialog progressDialog = ManageSourcesActivity.this.z;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            ManageSourcesActivity.this.z.dismiss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            ManageSourcesActivity manageSourcesActivity = ManageSourcesActivity.this;
            manageSourcesActivity.z = ProgressDialog.show(manageSourcesActivity, null, manageSourcesActivity.getText(R.string.msg_unsubscribe_feed_running), true, true);
            yo6.i(ManageSourcesActivity.this);
        }
    }

    public void B() {
        int i = this.y;
        if (i <= 1) {
            finish();
            return;
        }
        this.y = i - 1;
        xb xbVar = (xb) o();
        xbVar.S(xbVar.new i(null, -1, 0), false);
    }

    public void C(String str) {
        t75 t75Var = new t75(this);
        t75Var.m(R.string.tag_delete);
        t75Var.g(R.string.msg_confirm_delete);
        t75Var.k(getText(android.R.string.ok), new b(str));
        t75Var.i(getText(android.R.string.cancel), new a(this));
        t75Var.a().show();
    }

    public void D(final long j) {
        ip6 ip6VarC = ip6.c(getApplicationContext(), j, false);
        if (ip6VarC == null) {
            return;
        }
        String str = ip6VarC.h;
        t75 t75Var = new t75(this);
        t75Var.a.e = str;
        t75Var.g(R.string.msg_confirm_unsubscribe);
        t75Var.k(getText(android.R.string.ok), new DialogInterface.OnClickListener() { // from class: vt6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ManageSourcesActivity manageSourcesActivity = this.e;
                long j2 = j;
                Objects.requireNonNull(manageSourcesActivity);
                manageSourcesActivity.new d(null).execute(Long.valueOf(j2));
            }
        });
        t75Var.i(getText(android.R.string.cancel), new DialogInterface.OnClickListener() { // from class: ut6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                int i2 = ManageSourcesActivity.A;
            }
        });
        t75Var.e();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        int i = this.y;
        if (i > 1) {
            this.y = i - 1;
        }
        this.j.a();
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        z(bundle, BaseDialogActivity.a.WHEN_LARGE);
        Context applicationContext = getApplicationContext();
        setContentView(R.layout.manage_sources);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
            t().t(R.string.menu_manage_sources);
            t().o(true);
        }
        if (bundle == null) {
            Fragment lu6Var = on6.g(applicationContext).b ? new lu6() : new mu6();
            lu6Var.setArguments(n56.g1(getIntent()));
            xb xbVar = (xb) o();
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(R.id.fragment_container, lu6Var, null, 1);
            qbVar.c();
        } else {
            this.y = bundle.getInt("level");
        }
        n56.y2(this, R.string.ga_screen_subscription_manage);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.manage_sources, menu);
        return true;
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Context applicationContext = getApplicationContext();
        on6.g(applicationContext).g = -1;
        n56.H1(applicationContext, true);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws IllegalStateException, IllegalArgumentException {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            B();
            return true;
        }
        if (itemId != R.id.menu_export_opml) {
            return false;
        }
        Context applicationContext = getApplicationContext();
        Cursor cursorK = ep6.y(applicationContext, false, false, true, false).k();
        if (cursorK != null) {
            HashMap map = new HashMap();
            map.put("", new ArrayList());
            while (cursorK.moveToNext()) {
                try {
                    kp6.a aVar = new kp6.a(cursorK);
                    if (aVar.c < 100) {
                        List arrayList = (List) map.get(aVar.d);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            map.put(aVar.d, arrayList);
                        }
                        cursorK = ep6.x(applicationContext, aVar.b, false, true).k();
                        if (cursorK == null) {
                            continue;
                        } else {
                            while (cursorK.moveToNext()) {
                                ip6 ip6Var = new ip6(cursorK);
                                arrayList.add(new wx6(ip6Var.h, !TextUtils.isEmpty(ip6Var.i) ? ip6Var.i : ip6Var.f.startsWith(RssReaderClient.USER_FEED) ? ip6Var.f.replaceFirst(RssReaderClient.USER_FEED, "") : ip6Var.f, ip6Var.j));
                            }
                            cursorK.close();
                        }
                    } else {
                        ((List) map.get("")).add(new wx6(aVar.d, aVar.b.replaceFirst(RssReaderClient.USER_FEED, ""), aVar.e));
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                    cursorK.close();
                }
            }
            try {
                File file = new File(dn6.a, "opml_" + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(System.currentTimeMillis())) + ".xml");
                new zx6().a(map, new FileWriter(file));
                n56.Y1(applicationContext, "OPML exported to " + file.getAbsolutePath(), 1);
            } catch (IOException e) {
                e.printStackTrace();
                n56.X1(applicationContext, "Error: " + e.getLocalizedMessage());
            }
        }
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("level", this.y);
    }
}
