package com.noinnion.android.greader.ui.login;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.ae7;
import defpackage.bj7;
import defpackage.cn6;
import defpackage.ej7;
import defpackage.el7;
import defpackage.fc7;
import defpackage.hb7;
import defpackage.ic7;
import defpackage.im7;
import defpackage.iw6;
import defpackage.jm7;
import defpackage.jo;
import defpackage.jw6;
import defpackage.n56;
import defpackage.pl7;
import defpackage.sr6;
import defpackage.yj7;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class FeedlyLoginActivity extends BaseDialogActivity implements View.OnClickListener {

    public static final class a extends jm7 implements el7<yj7> {
        public a() {
            super(0);
        }

        @Override // defpackage.el7
        public yj7 invoke() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            View viewFindViewById = FeedlyLoginActivity.this.findViewById(R.id.loading);
            im7.d(viewFindViewById, "findViewById<View>(R.id.loading)");
            viewFindViewById.setVisibility(8);
            FeedlyLoginActivity.B(FeedlyLoginActivity.this, true);
            return yj7.a;
        }
    }

    public static final class b extends jm7 implements pl7<Throwable, yj7> {
        public b() {
            super(1);
        }

        @Override // defpackage.pl7
        public yj7 invoke(Throwable th) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            im7.e(th, "it");
            View viewFindViewById = FeedlyLoginActivity.this.findViewById(R.id.loading);
            im7.d(viewFindViewById, "findViewById<View>(R.id.loading)");
            viewFindViewById.setVisibility(8);
            FeedlyLoginActivity.B(FeedlyLoginActivity.this, false);
            return yj7.a;
        }
    }

    public static final void B(FeedlyLoginActivity feedlyLoginActivity, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Context applicationContext = feedlyLoginActivity.getApplicationContext();
        if (!z) {
            n56.W1(applicationContext, R.string.msg_login_fail);
            cn6.h0(feedlyLoginActivity.getApplicationContext(), 0);
        } else {
            iw6.Z(feedlyLoginActivity.getApplicationContext(), 1);
            feedlyLoginActivity.setResult(-1);
            feedlyLoginActivity.finish();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        im7.e(view, "view");
        int id = view.getId();
        if (id != R.id.btn_login) {
            if (id != R.id.website) {
                return;
            }
            jw6.a(this, "https://feedly.com");
            return;
        }
        StringBuilder sbB = jo.B("https://feedly.com/v3/auth/auth", "?scope=");
        sbB.append(n56.u0("https://cloud.feedly.com/subscriptions"));
        sbB.append("&redirect_uri=");
        sbB.append("greader://feedly");
        sbB.append("&response_type=code&client_id=");
        sbB.append("greader");
        jw6.b(this, sbB.toString(), true);
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, false);
        setResult(0);
        setContentView(R.layout.login_feedly);
        View viewFindViewById = findViewById(R.id.toolbar);
        if (!(viewFindViewById instanceof Toolbar)) {
            viewFindViewById = null;
        }
        Toolbar toolbar = (Toolbar) viewFindViewById;
        if (toolbar != null) {
            s().x(toolbar);
        }
        findViewById(R.id.btn_login).setOnClickListener(this);
        findViewById(R.id.website).setOnClickListener(this);
        n56.y2(this, R.string.ga_screen_login_feedly);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        String queryParameter;
        im7.e(intent, "intent");
        super.onNewIntent(intent);
        Uri data = intent.getData();
        if (data == null || (queryParameter = data.getQueryParameter("code")) == null) {
            return;
        }
        View viewFindViewById = findViewById(R.id.loading);
        im7.d(viewFindViewById, "findViewById<View>(R.id.loading)");
        viewFindViewById.setVisibility(0);
        im7.d(queryParameter, "authCode");
        ae7 ae7Var = new ae7(new sr6(this, queryParameter));
        im7.d(ae7Var, "Completable.fromCallable…}\n            }\n        }");
        hb7 hb7VarG = ae7Var.j(ej7.b).g(fc7.a());
        im7.d(hb7VarG, "fetchApiToken(authCode)\n…dSchedulers.mainThread())");
        ic7 ic7VarD = bj7.d(hb7VarG, new b(), new a());
        im7.e(ic7VarD, "disposable");
        this.x.b(ic7VarD);
    }
}
