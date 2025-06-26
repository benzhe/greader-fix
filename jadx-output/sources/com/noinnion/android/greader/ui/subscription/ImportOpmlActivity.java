package com.noinnion.android.greader.ui.subscription;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.widget.EditText;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.ep6;
import defpackage.ku6;
import defpackage.n56;
import defpackage.on6;
import defpackage.u;
import defpackage.xx6;
import defpackage.yx6;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public class ImportOpmlActivity extends BaseDialogActivity {

    @BindView(R.id.input)
    public EditText vInputText;

    @BindView(R.id.toolbar)
    public Toolbar vToolbar;
    public ProgressDialog y;

    public class a extends AsyncTask<Void, Void, Void> {
        public String a = null;
        public String b = null;

        public a(ku6 ku6Var) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            Context applicationContext = ImportOpmlActivity.this.getApplicationContext();
            File file = new File(this.a);
            yx6 yx6Var = new yx6();
            try {
                ep6 ep6VarI = on6.i(applicationContext);
                for (xx6 xx6Var : yx6Var.a(new FileReader(file))) {
                    String str = xx6Var.c;
                    ep6VarI.m().editSubscription(null, xx6Var.a, xx6Var.b, str == null ? null : new String[]{str}, 2);
                }
                ep6VarI.S(System.currentTimeMillis());
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                this.b = ImportOpmlActivity.this.getString(R.string.download_not_found);
            } catch (XmlPullParserException e2) {
                e2.printStackTrace();
                this.b = ImportOpmlActivity.this.getString(R.string.msg_load_items_failed);
            } catch (Exception e3) {
                e3.printStackTrace();
                this.b = e3.getLocalizedMessage();
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            ProgressDialog progressDialog = ImportOpmlActivity.this.y;
            if (progressDialog != null && progressDialog.isShowing()) {
                ImportOpmlActivity.this.y.dismiss();
            }
            if (TextUtils.isEmpty(this.b)) {
                ImportOpmlActivity.this.finish();
            } else {
                n56.X1(ImportOpmlActivity.this.getApplicationContext(), this.b);
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            ImportOpmlActivity importOpmlActivity = ImportOpmlActivity.this;
            importOpmlActivity.y = ProgressDialog.show(importOpmlActivity, null, importOpmlActivity.getText(R.string.msg_running), true, true);
            this.a = ImportOpmlActivity.this.vInputText.getText().toString();
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, true);
        setContentView(R.layout.import_opml);
        ButterKnife.bind(this);
        x(this.vToolbar);
        u uVarT = t();
        if (uVarT != null) {
            uVarT.o(true);
            uVarT.t(R.string.subscribe_import_opml);
        }
        n56.y2(this, R.string.ga_screen_subscription_import_ompl);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        onBackPressed();
        return false;
    }
}
