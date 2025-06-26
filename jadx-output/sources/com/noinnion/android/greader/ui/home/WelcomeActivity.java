package com.noinnion.android.greader.ui.home;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.WelcomeActivity;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import com.noinnion.android.reader.util.gson.Help;
import defpackage.be6;
import defpackage.eg6;
import defpackage.jw6;
import defpackage.n56;
import defpackage.od6;
import defpackage.t75;
import defpackage.ud6;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class WelcomeActivity extends BaseDialogActivity implements View.OnClickListener {

    @BindView(R.id.v_list_view)
    public ListView vListView;
    public Help y;

    public class a extends BaseAdapter {
        public Context e;
        public List<Help.Listing> f;

        public a(WelcomeActivity welcomeActivity, Context context, List<Help.Listing> list) {
            this.e = context;
            this.f = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Help.Listing> list = this.f;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            List<Help.Listing> list = this.f;
            if (list == null) {
                return null;
            }
            return list.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.e.getSystemService("layout_inflater")).inflate(R.layout.welcome_listing_row, (ViewGroup) null);
            }
            List<Help.Listing> list = this.f;
            Help.Listing listing = list != null ? list.get(i) : null;
            ((TextView) view.findViewById(R.id.title)).setText(listing.title);
            ((TextView) view.findViewById(R.id.description)).setText(this.f.get(i).description);
            view.setTag(listing.url);
            return view;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.changelog /* 2131296418 */:
                jw6.a(this, this.y.changelog);
                break;
            case R.id.faq /* 2131296525 */:
                jw6.a(this, this.y.faq);
                break;
            case R.id.feedback /* 2131296529 */:
                t75 t75Var = new t75(this);
                t75Var.a.e = getText(R.string.menu_feedback);
                t75Var.f(getResources().getStringArray(R.array.feedback_labels), new DialogInterface.OnClickListener() { // from class: vp6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        WelcomeActivity welcomeActivity = this.e;
                        Objects.requireNonNull(welcomeActivity);
                        n56.q0(welcomeActivity, i);
                    }
                });
                t75Var.a().show();
                break;
            case R.id.rate /* 2131296862 */:
                jw6.a(this, "https://play.google.com/store/apps/details?id=com.noinnion.android.greader.reader");
                break;
            case R.id.website /* 2131297119 */:
                jw6.a(this, this.y.website);
                break;
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws be6, ud6, IOException {
        z(bundle, BaseDialogActivity.a.WRAP_CONTENT);
        setContentView(R.layout.welcome);
        ButterKnife.bind(this);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
            t().o(true);
            t().t(R.string.menu_help);
        }
        View viewInflate = getLayoutInflater().inflate(R.layout.welcome_header, (ViewGroup) null);
        viewInflate.findViewById(R.id.faq).setOnClickListener(this);
        viewInflate.findViewById(R.id.changelog).setOnClickListener(this);
        ((ImageView) viewInflate.findViewById(R.id.icon)).setImageResource(R.drawable.icon_large);
        String strA1 = n56.a1(getApplicationContext());
        ((TextView) viewInflate.findViewById(R.id.subtitle)).setText("Version " + strA1);
        ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.app_name);
        ((TextView) viewInflate.findViewById(R.id.description)).setText(R.string.app_description);
        this.vListView.addHeaderView(viewInflate);
        this.vListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: up6
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                WelcomeActivity welcomeActivity = this.e;
                Objects.requireNonNull(welcomeActivity);
                jw6.a(welcomeActivity, (String) view.getTag());
            }
        });
        try {
            InputStream inputStreamOpen = getAssets().open("welcome_listings.json");
            byte[] bArr = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(bArr);
            inputStreamOpen.close();
            String str = new String(bArr, "UTF-8");
            od6 od6Var = new od6();
            eg6 eg6VarF = od6Var.f(new StringReader(str));
            Object objC = od6Var.c(eg6VarF, Help.class);
            od6.a(objC, eg6VarF);
            this.y = (Help) n56.C2(Help.class).cast(objC);
            this.vListView.setAdapter((ListAdapter) new a(this, this, this.y.listings));
        } catch (IOException e) {
            e.printStackTrace();
        }
        n56.y2(this, R.string.ga_screen_welcome);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        finish();
        return true;
    }
}
