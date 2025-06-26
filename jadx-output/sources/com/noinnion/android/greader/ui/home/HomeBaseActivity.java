package com.noinnion.android.greader.ui.home;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.miguelcatalan.materialsearchview.MaterialSearchView;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.provider.ReaderProvider;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment;
import com.noinnion.android.greader.ui.itemlist.SearchFilterDialog;
import com.noinnion.android.greader.ui.setting.ClearCacheDialog;
import com.noinnion.android.greader.ui.setting.MarkReadPreferenceFragment;
import com.noinnion.android.greader.ui.setting.SettingsActivity;
import com.noinnion.android.reader.ui.BaseActivity;
import defpackage.a0;
import defpackage.ap6;
import defpackage.aq6;
import defpackage.bj7;
import defpackage.bn6;
import defpackage.bq6;
import defpackage.bw6;
import defpackage.cq6;
import defpackage.ej7;
import defpackage.el7;
import defpackage.em6;
import defpackage.ep6;
import defpackage.ew6;
import defpackage.fc7;
import defpackage.hb7;
import defpackage.hw6;
import defpackage.ic7;
import defpackage.im7;
import defpackage.ip6;
import defpackage.iw6;
import defpackage.jm7;
import defpackage.jq6;
import defpackage.k18;
import defpackage.kh7;
import defpackage.kt7;
import defpackage.lp6;
import defpackage.lw6;
import defpackage.n56;
import defpackage.oj7;
import defpackage.on6;
import defpackage.pj7;
import defpackage.pl6;
import defpackage.qb;
import defpackage.qo6;
import defpackage.qu6;
import defpackage.rl6;
import defpackage.ro;
import defpackage.ro6;
import defpackage.sm7;
import defpackage.so6;
import defpackage.t75;
import defpackage.u;
import defpackage.uo6;
import defpackage.wb;
import defpackage.wp6;
import defpackage.xb;
import defpackage.xp6;
import defpackage.yd;
import defpackage.yg7;
import defpackage.yo6;
import defpackage.yp6;
import defpackage.zp6;
import java.util.Objects;
import net.frakbot.glowpadbackport.GlowPadView;
import net.frakbot.glowpadbackport.SimpleTriggerListener;

/* loaded from: classes2.dex */
public abstract class HomeBaseActivity extends BaseActivity implements pl6.b {
    public static final /* synthetic */ int O = 0;
    public GlowPadView A;
    public TextView B;
    public TextView C;
    public View D;
    public View E;
    public Fragment F;
    public Fragment G;
    public PopupWindow H;
    public boolean I;
    public jq6 J;
    public BroadcastReceiver K = new BroadcastReceiver() { // from class: com.noinnion.android.greader.ui.home.HomeBaseActivity$mReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            im7.e(context, "c");
            im7.e(intent, "intent");
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            switch (action.hashCode()) {
                case -1681467988:
                    if (action.equals("com.noinnion.android.greader.reader.action.FULLSCREEN")) {
                        n56.S1(this.a, intent.getBooleanExtra("fullscreen", false));
                        return;
                    }
                    return;
                case -1443975747:
                    if (action.equals("com.noinnion.android.greader.reader.action.FORCE_REFRESH_UI")) {
                        this.a.K();
                        return;
                    }
                    return;
                case -1315966896:
                    if (!action.equals("com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR")) {
                        return;
                    }
                    break;
                case -1214169419:
                    if (action.equals("com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST")) {
                        this.a.R();
                        return;
                    }
                    return;
                case -427058509:
                    if (action.equals("com.noinnion.android.greader.reader.action.START_SYNC_RESULT")) {
                        boolean booleanExtra = intent.getBooleanExtra("syncStarted", false);
                        if (!intent.getBooleanExtra("syncFinished", false)) {
                            if (booleanExtra) {
                                this.a.S(true);
                                return;
                            }
                            return;
                        } else {
                            this.a.S(false);
                            if (this.a.I) {
                                n56.s(context);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                case -291221685:
                    if (!action.equals("com.noinnion.android.greader.reader.action.SYNC_SUBS_FINISHED")) {
                        return;
                    }
                    break;
                case 272551578:
                    if (!action.equals("com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR_LOGIN")) {
                        return;
                    }
                    break;
                case 345345541:
                    if (!action.equals("com.noinnion.android.greader.reader.action.SYNC_FINISHED")) {
                        return;
                    }
                    break;
                default:
                    return;
            }
            this.a.S(false);
            if (im7.a(action, "com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR_LOGIN")) {
                n56.i2(this.a);
            }
        }
    };
    public final oj7 L = n56.q1(pj7.SYNCHRONIZED, new a(this, null, null));
    public d M = new d();
    public e N = new e();
    public ProgressDialog w;
    public Toolbar x;
    public MaterialSearchView y;
    public ImageView z;

    public static final class a extends jm7 implements el7<uo6> {
        public final /* synthetic */ ComponentCallbacks e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ComponentCallbacks componentCallbacks, k18 k18Var, el7 el7Var) {
            super(0);
            this.e = componentCallbacks;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, uo6] */
        @Override // defpackage.el7
        public final uo6 invoke() {
            return kt7.j(this.e).a.a().a(sm7.a(uo6.class), null, null);
        }
    }

    public final class b implements bn6 {
        public b() {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            HomeBaseActivity.this.A();
            n56.i2(HomeBaseActivity.this);
        }
    }

    public final class c extends AsyncTask<Void, Void, Void> {
        public long a;
        public boolean b;
        public final ip6 c;
        public final lp6 d;
        public final String e;

        public c() {
            this.b = true;
            ew6 ew6Var = on6.a;
            this.c = ew6Var.a;
            this.d = ew6Var.b;
            String str = ew6Var.c;
            this.e = str;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.b = false;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            ContentResolver contentResolver;
            im7.e(voidArr, "params");
            Context applicationContext = HomeBaseActivity.this.getApplicationContext();
            ep6 ep6VarI = on6.i(applicationContext);
            if (TextUtils.isEmpty(this.e)) {
                ip6 ip6Var = this.c;
                if (ip6Var != null) {
                    if (this.a == 0) {
                        on6.i = true;
                        long jCurrentTimeMillis = ip6Var.o;
                        if (jCurrentTimeMillis <= 0) {
                            jCurrentTimeMillis = System.currentTimeMillis();
                        }
                        this.a = jCurrentTimeMillis;
                    }
                    ep6VarI.Q(this.c, this.a, this.b);
                } else {
                    lp6 lp6Var = this.d;
                    if (lp6Var != null) {
                        if (this.a == 0) {
                            on6.i = true;
                            long jCurrentTimeMillis2 = lp6Var.k;
                            if (jCurrentTimeMillis2 <= 0) {
                                jCurrentTimeMillis2 = System.currentTimeMillis();
                            }
                            this.a = jCurrentTimeMillis2;
                        }
                        ep6VarI.R(this.d, this.a, this.b);
                    } else {
                        if (this.a == 0) {
                            this.a = iw6.z(applicationContext) > 0 ? iw6.z(applicationContext) : System.currentTimeMillis();
                        }
                        long j = this.a;
                        boolean z = this.b;
                        contentResolver = ep6VarI.a.getContentResolver();
                        contentResolver.query(ReaderProvider.h, null, null, null, null);
                        try {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("read", (Integer) 1);
                            contentValues.put("read_time", Long.valueOf(j));
                            contentValues.put("sync_time", Long.valueOf(j));
                            StringBuilder sb = new StringBuilder();
                            sb.append("read");
                            sb.append(" = 0 AND ");
                            sb.append("keep_unread");
                            sb.append(" = 0");
                            if (!z) {
                                sb.append(" AND ");
                                sb.append("updated_time");
                                sb.append(" < ");
                                sb.append(String.valueOf(j / 1000));
                            }
                            contentResolver.update(ap6.B, contentValues, new String(sb), null);
                            ep6VarI.Y();
                            contentResolver.query(ReaderProvider.i, null, null, null, null);
                            contentResolver.query(ReaderProvider.j, null, null, null, null);
                            n56.I1(ep6VarI.a, true, true);
                            try {
                                ep6VarI.m().markAllAsRead(null, null, j);
                            } catch (Error | Exception unused) {
                                ep6VarI.z(1, null, j);
                            }
                        } finally {
                        }
                    }
                }
            } else {
                String str = this.e;
                long jCurrentTimeMillis3 = System.currentTimeMillis();
                contentResolver = ep6VarI.a.getContentResolver();
                contentResolver.query(ReaderProvider.h, null, null, null, null);
                try {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("read", (Integer) 1);
                    contentValues2.put("read_time", Long.valueOf(jCurrentTimeMillis3));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("read");
                    sb2.append(" = 0 AND ");
                    sb2.append("keep_unread");
                    sb2.append(" = 0");
                    if (str != null && str.trim().length() > 0) {
                        String strW = ep6.w(str.trim().replaceAll("'", ""));
                        if (!TextUtils.isEmpty(strW)) {
                            sb2.append(" AND (");
                            sb2.append(strW);
                            sb2.append(")");
                        }
                    }
                    contentResolver.update(ap6.B, contentValues2, new String(sb2), null);
                    ep6VarI.Y();
                    contentResolver.query(ReaderProvider.i, null, null, null, null);
                    contentResolver.query(ReaderProvider.j, null, null, null, null);
                    n56.I1(ep6VarI.a, true, true);
                    ep6VarI.O();
                } finally {
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            HomeBaseActivity.this.A();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (!(this.c == null && this.d == null) && this.b) {
                return;
            }
            HomeBaseActivity homeBaseActivity = HomeBaseActivity.this;
            homeBaseActivity.w = ProgressDialog.show(homeBaseActivity, null, homeBaseActivity.getText(R.string.msg_mark_as_read_running), true, true);
        }
    }

    public final class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            im7.e(view, "v");
            switch (view.getId()) {
                case R.id.actionbar_title /* 2131296328 */:
                    HomeBaseActivity.this.N();
                    break;
                case R.id.item_card /* 2131296612 */:
                    HomeBaseActivity.this.P(2);
                    HomeBaseActivity.this.B();
                    break;
                case R.id.item_grid /* 2131296616 */:
                    HomeBaseActivity.this.P(1);
                    HomeBaseActivity.this.B();
                    break;
                case R.id.item_list /* 2131296619 */:
                    HomeBaseActivity.this.P(0);
                    HomeBaseActivity.this.B();
                    break;
            }
        }
    }

    public final class e implements View.OnLongClickListener {
        public e() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            im7.e(view, "v");
            int id = view.getId();
            if (id == R.id.actionbar_title) {
                n56.x2(HomeBaseActivity.this);
                return true;
            }
            if (id == R.id.mark_read_button) {
                HomeBaseActivity.this.M();
                return false;
            }
            if (id != R.id.sync_button) {
                return false;
            }
            HomeBaseActivity.this.O();
            return true;
        }
    }

    public static final class f extends SimpleTriggerListener {
        public f(Context context) {
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
        @Override // net.frakbot.glowpadbackport.SimpleTriggerListener, net.frakbot.glowpadbackport.GlowPadView.OnTriggerListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onTrigger(android.view.View r3, int r4) {
            /*
                r2 = this;
                java.lang.String r0 = "view"
                defpackage.im7.e(r3, r0)
                r0 = 1
                if (r4 == 0) goto L14
                if (r4 == r0) goto Le
                r1 = 2
                if (r4 == r1) goto L14
                goto L19
            Le:
                com.noinnion.android.greader.ui.home.HomeBaseActivity r4 = com.noinnion.android.greader.ui.home.HomeBaseActivity.this
                r4.M()
                goto L19
            L14:
                com.noinnion.android.greader.ui.home.HomeBaseActivity r4 = com.noinnion.android.greader.ui.home.HomeBaseActivity.this
                r4.G()
            L19:
                net.frakbot.glowpadbackport.GlowPadView r3 = (net.frakbot.glowpadbackport.GlowPadView) r3
                if (r3 == 0) goto L20
                r3.reset(r0)
            L20:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.home.HomeBaseActivity.f.onTrigger(android.view.View, int):void");
        }
    }

    public static final class g implements View.OnClickListener {
        public g() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SearchFilterDialog.d(HomeBaseActivity.this.o());
        }
    }

    public static final class h implements MaterialSearchView.d {
        public final /* synthetic */ MaterialSearchView a;
        public final /* synthetic */ HomeBaseActivity b;

        public h(MaterialSearchView materialSearchView, HomeBaseActivity homeBaseActivity) {
            this.a = materialSearchView;
            this.b = homeBaseActivity;
        }

        @Override // com.miguelcatalan.materialsearchview.MaterialSearchView.d
        public boolean a(String str) {
            im7.e(str, "newText");
            if (!this.a.f) {
                return false;
            }
            ImageView imageView = this.b.z;
            if (imageView != null) {
                n56.B2(imageView, Boolean.valueOf(str.length() > 0));
            }
            String str2 = on6.a.c;
            if (str2 == null) {
                str2 = "";
            }
            if (im7.a(str2, str)) {
                return false;
            }
            on6.a.c = str;
            HomeBaseActivity.L(this.b, false, false, 2, null);
            return false;
        }

        @Override // com.miguelcatalan.materialsearchview.MaterialSearchView.d
        public boolean b(String str) {
            im7.e(str, "query");
            SearchFilterDialog.d(this.b.o());
            return false;
        }
    }

    public static final class i implements MaterialSearchView.e {
        public i() {
        }

        @Override // com.miguelcatalan.materialsearchview.MaterialSearchView.e
        public void a() {
            Boolean boolValueOf;
            ImageView imageView = HomeBaseActivity.this.z;
            if (imageView != null) {
                String str = on6.a.c;
                if (str != null) {
                    boolValueOf = Boolean.valueOf(str.length() > 0);
                } else {
                    boolValueOf = null;
                }
                n56.B2(imageView, boolValueOf);
            }
        }

        @Override // com.miguelcatalan.materialsearchview.MaterialSearchView.e
        public void b() {
            HomeBaseActivity.this.R();
            ImageView imageView = HomeBaseActivity.this.z;
            if (imageView != null) {
                n56.B2(imageView, Boolean.FALSE);
            }
        }
    }

    public static final class j implements DialogInterface.OnClickListener {
        public j() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            HomeBaseActivity.this.H();
        }
    }

    public static final class k implements DialogInterface.OnClickListener {
        public static final k e = new k();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public static final class l implements DialogInterface.OnClickListener {

        public static final class a implements DialogInterface.OnDismissListener {
            public a() {
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                HomeBaseActivity.this.C();
                HomeBaseActivity.this.invalidateOptionsMenu();
                Fragment fragmentB = HomeBaseActivity.this.o().b(R.id.preference_fragment);
                if (fragmentB != null) {
                    xb xbVar = (xb) HomeBaseActivity.this.o();
                    Objects.requireNonNull(xbVar);
                    qb qbVar = new qb(xbVar);
                    qbVar.q(fragmentB);
                    qbVar.c();
                }
            }
        }

        public l() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            long jCurrentTimeMillis;
            int i2;
            long j;
            if (i == R.id.mark_read_options) {
                MarkReadPreferenceFragment.j(HomeBaseActivity.this, new a());
                return;
            }
            switch (i) {
                case R.id.mark_read_1_day /* 2131296664 */:
                    jCurrentTimeMillis = System.currentTimeMillis();
                    i2 = 86400000;
                    j = jCurrentTimeMillis - i2;
                    break;
                case R.id.mark_read_1_week /* 2131296665 */:
                    jCurrentTimeMillis = System.currentTimeMillis();
                    i2 = 604800000;
                    j = jCurrentTimeMillis - i2;
                    break;
                case R.id.mark_read_2_days /* 2131296666 */:
                    jCurrentTimeMillis = System.currentTimeMillis();
                    i2 = 172800000;
                    j = jCurrentTimeMillis - i2;
                    break;
                case R.id.mark_read_2_weeks /* 2131296667 */:
                    jCurrentTimeMillis = System.currentTimeMillis();
                    i2 = 1209600000;
                    j = jCurrentTimeMillis - i2;
                    break;
                case R.id.mark_read_3_days /* 2131296668 */:
                    jCurrentTimeMillis = System.currentTimeMillis();
                    i2 = 259200000;
                    j = jCurrentTimeMillis - i2;
                    break;
                default:
                    j = 0;
                    break;
            }
            if (j <= 0) {
                HomeBaseActivity.this.H();
                return;
            }
            HomeBaseActivity homeBaseActivity = HomeBaseActivity.this;
            int i3 = HomeBaseActivity.O;
            Objects.requireNonNull(homeBaseActivity);
            c cVar = homeBaseActivity.new c();
            cVar.a = j;
            cVar.b = false;
            cVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public static void L(HomeBaseActivity homeBaseActivity, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        Fragment fragment = homeBaseActivity.G;
        if (!(fragment instanceof ItemListFragment)) {
            fragment = null;
        }
        ItemListFragment itemListFragment = (ItemListFragment) fragment;
        if (itemListFragment != null) {
            itemListFragment.r(z, z2);
        }
    }

    public static final void z(HomeBaseActivity homeBaseActivity, int i2) {
        hw6 hw6VarG = on6.g(homeBaseActivity.getApplicationContext());
        hw6VarG.g = i2;
        iw6.T(hw6VarG.a, "item_sort_type", i2);
        L(homeBaseActivity, true, false, 2, null);
    }

    public final void A() {
        ProgressDialog progressDialog = this.w;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        progressDialog.dismiss();
    }

    public final void B() {
        PopupWindow popupWindow = this.H;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        popupWindow.dismiss();
    }

    public final void C() {
        Context applicationContext = getApplicationContext();
        View viewFindViewById = findViewById(R.id.fab);
        if (!(viewFindViewById instanceof GlowPadView)) {
            viewFindViewById = null;
        }
        GlowPadView glowPadView = (GlowPadView) viewFindViewById;
        this.A = glowPadView;
        if (glowPadView != null) {
            int iJ = iw6.j(applicationContext);
            if (iJ == 0) {
                glowPadView.setEnabled(false);
                glowPadView.setVisibility(8);
                return;
            }
            if (!glowPadView.isEnabled()) {
                glowPadView.setEnabled(true);
            }
            glowPadView.setVisibility(0);
            glowPadView.setHandleStyle(iw6.k(applicationContext) == 1 ? 0 : 1, iw6.i(applicationContext));
            if (iJ == 1) {
                glowPadView.setTargetResources(R.array.fab_targets_left);
                glowPadView.setGravity(8388661);
                ViewGroup.LayoutParams layoutParams = glowPadView.getLayoutParams();
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) (layoutParams instanceof RelativeLayout.LayoutParams ? layoutParams : null);
                if (layoutParams2 != null) {
                    layoutParams2.addRule(11, 0);
                    layoutParams2.addRule(9);
                    glowPadView.setLayoutParams(layoutParams2);
                }
            } else if (iJ == 2) {
                glowPadView.setTargetResources(R.array.fab_targets_right);
                glowPadView.setGravity(8388659);
                ViewGroup.LayoutParams layoutParams3 = glowPadView.getLayoutParams();
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) (layoutParams3 instanceof RelativeLayout.LayoutParams ? layoutParams3 : null);
                if (layoutParams4 != null) {
                    layoutParams4.addRule(9, 0);
                    layoutParams4.addRule(11);
                    glowPadView.setLayoutParams(layoutParams4);
                }
            }
            glowPadView.setOnTriggerListener(new f(applicationContext));
            glowPadView.reset(false);
        }
    }

    public final void D() {
        lp6 lp6Var;
        R();
        MaterialSearchView materialSearchView = this.y;
        if (materialSearchView != null) {
            materialSearchView.setQuery(on6.a.c, false);
            if (TextUtils.isEmpty(on6.a.c) && materialSearchView.f) {
                materialSearchView.a();
            }
        }
        Context applicationContext = getApplicationContext();
        Fragment fragment = this.G;
        if (fragment == null) {
            P(on6.g(getApplicationContext()).c);
            return;
        }
        if (!(fragment instanceof ItemListFragment)) {
            fragment = null;
        }
        ItemListFragment itemListFragment = (ItemListFragment) fragment;
        if (itemListFragment != null) {
            itemListFragment.h(true);
        }
        ew6 ew6Var = on6.a;
        ew6Var.f = !ew6Var.e && ((lp6Var = ew6Var.b) == null || lp6Var.g != 1) && on6.g(applicationContext).e;
        L(this, true, false, 2, null);
    }

    public final void E() {
        View viewFindViewById = findViewById(R.id.search_view);
        ImageView imageView = null;
        if (!(viewFindViewById instanceof MaterialSearchView)) {
            viewFindViewById = null;
        }
        MaterialSearchView materialSearchView = (MaterialSearchView) viewFindViewById;
        if (materialSearchView != null) {
            materialSearchView.setOnQueryTextListener(new h(materialSearchView, this));
            materialSearchView.setOnSearchViewListener(new i());
        } else {
            materialSearchView = null;
        }
        this.y = materialSearchView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_filter);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new g());
            imageView = imageView2;
        }
        this.z = imageView;
    }

    public final void F() {
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
            toolbar.setNavigationIcon(lw6.i());
        } else {
            toolbar = null;
        }
        this.x = toolbar;
        u uVarT = t();
        if (uVarT != null) {
            View viewInflate = getLayoutInflater().inflate(R.layout.actionbar_home_title, (ViewGroup) null);
            View viewFindViewById = viewInflate.findViewById(R.id.title);
            if (!(viewFindViewById instanceof TextView)) {
                viewFindViewById = null;
            }
            this.B = (TextView) viewFindViewById;
            View viewFindViewById2 = viewInflate.findViewById(R.id.subtitle);
            this.C = (TextView) (viewFindViewById2 instanceof TextView ? viewFindViewById2 : null);
            im7.d(uVarT, "actionBar");
            uVarT.m(viewInflate);
            uVarT.p(true);
            uVarT.q(false);
            viewInflate.setOnClickListener(this.M);
            viewInflate.setOnLongClickListener(this.N);
        }
    }

    public final void G() {
        CharSequence charSequenceH;
        Context applicationContext = getApplicationContext();
        ew6 ew6Var = on6.a;
        if (ew6Var.d || ew6Var.e) {
            n56.X1(this, getText(R.string.msg_not_supported));
            return;
        }
        if (!TextUtils.isEmpty(ew6Var.c)) {
            H();
            return;
        }
        ew6 ew6Var2 = on6.a;
        if (ew6Var2.a == null && ew6Var2.b == null) {
            if (!iw6.f(applicationContext, "confirm_mark_as_read_all", true)) {
                H();
                return;
            }
            t75 t75Var = new t75(this);
            t75Var.m(R.string.label_all);
            t75Var.g(R.string.msg_confirm_mark_as_read_all);
            t75Var.k(getText(android.R.string.ok), new zp6(this));
            t75Var.i(getText(android.R.string.cancel), aq6.e);
            t75Var.a().show();
            return;
        }
        if (!iw6.f(applicationContext, "confirm_mark_as_read_sub", false)) {
            H();
            return;
        }
        ew6 ew6Var3 = on6.a;
        ip6 ip6Var = ew6Var3.a;
        if (ip6Var == null || (charSequenceH = ip6Var.h) == null) {
            lp6 lp6Var = ew6Var3.b;
            charSequenceH = lp6Var != null ? lp6Var.h(this) : null;
        }
        if (charSequenceH == null) {
            charSequenceH = getString(R.string.label_all);
            im7.d(charSequenceH, "getString(R.string.label_all)");
        }
        if (charSequenceH.length() > 25) {
            charSequenceH = charSequenceH.subSequence(0, 25).toString() + " ...";
        }
        t75 t75Var2 = new t75(this);
        t75Var2.a.e = charSequenceH;
        t75Var2.g(R.string.msg_confirm_mark_as_read);
        t75Var2.k(getText(android.R.string.ok), new j());
        t75Var2.i(getText(android.R.string.cancel), k.e);
        a0 a0VarA = t75Var2.a();
        im7.d(a0VarA, "MaterialAlertDialogBuild…el)) { _, _ -> }.create()");
        a0VarA.show();
    }

    public void H() {
        new c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void I(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.home.HomeBaseActivity.I(android.os.Bundle):void");
    }

    public void J(Intent intent) {
        startActivity(intent);
        overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out);
    }

    public final void K() {
        Fragment fragment = this.F;
        if (!(fragment instanceof qu6)) {
            fragment = null;
        }
        qu6 qu6Var = (qu6) fragment;
        if (qu6Var != null) {
            qu6Var.i(true);
        }
        L(this, true, false, 2, null);
    }

    public final void M() {
        ew6 ew6Var = on6.a;
        if (ew6Var.d || ew6Var.e) {
            n56.X1(this, getText(R.string.msg_not_supported));
            return;
        }
        String strC = ew6Var.c(this);
        if (strC.length() > 25) {
            StringBuilder sb = new StringBuilder();
            im7.d(strC, "title2");
            String strSubstring = strC.substring(0, 25);
            im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            sb.append(strSubstring);
            sb.append("…");
            strC = sb.toString();
        }
        ro.c cVar = new ro.c(this);
        cVar.d = getText(R.string.sync_mark_all_read).toString() + ": " + strC;
        cVar.a(R.menu.dialog_mark_read);
        cVar.f = new l();
        cVar.d();
    }

    public void N() {
        Context applicationContext = getApplicationContext();
        View viewInflate = getLayoutInflater().inflate(R.layout.popup_options, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -1, -2);
        popupWindow.setContentView(viewInflate);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        this.H = popupWindow;
        hw6 hw6VarG = on6.g(applicationContext);
        View viewFindViewById = viewInflate.findViewById(R.id.item_list);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.M);
            if (hw6VarG.c == 0) {
                viewFindViewById.setSelected(true);
            }
        }
        View viewFindViewById2 = viewInflate.findViewById(R.id.item_grid);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this.M);
            if (hw6VarG.c == 1) {
                viewFindViewById2.setSelected(true);
            }
        }
        View viewFindViewById3 = viewInflate.findViewById(R.id.item_card);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this.M);
            if (hw6VarG.c == 2) {
                viewFindViewById3.setSelected(true);
            }
        }
        View viewFindViewById4 = viewInflate.findViewById(R.id.item_sorting);
        if (!(viewFindViewById4 instanceof RadioGroup)) {
            viewFindViewById4 = null;
        }
        RadioGroup radioGroup = (RadioGroup) viewFindViewById4;
        if (radioGroup != null) {
            radioGroup.check(hw6VarG.c() == 2 ? R.id.sorting_oldest : R.id.sorting_newest);
            radioGroup.setOnCheckedChangeListener(new wp6(this, hw6VarG));
        }
        View viewFindViewById5 = viewInflate.findViewById(R.id.group_by_feed);
        if (!(viewFindViewById5 instanceof SwitchCompat)) {
            viewFindViewById5 = null;
        }
        SwitchCompat switchCompat = (SwitchCompat) viewFindViewById5;
        if (switchCompat != null) {
            switchCompat.setChecked(hw6VarG.h);
            switchCompat.setOnCheckedChangeListener(new defpackage.d(0, this, hw6VarG));
        }
        View viewFindViewById6 = viewInflate.findViewById(R.id.rich_list);
        if (!(viewFindViewById6 instanceof SwitchCompat)) {
            viewFindViewById6 = null;
        }
        SwitchCompat switchCompat2 = (SwitchCompat) viewFindViewById6;
        if (switchCompat2 != null) {
            switchCompat2.setChecked(iw6.R(applicationContext));
            switchCompat2.setOnCheckedChangeListener(new defpackage.d(1, this, applicationContext));
        }
        View viewFindViewById7 = viewInflate.findViewById(R.id.mark_scroll);
        SwitchCompat switchCompat3 = (SwitchCompat) (viewFindViewById7 instanceof SwitchCompat ? viewFindViewById7 : null);
        if (switchCompat3 != null) {
            switchCompat3.setChecked(iw6.f(applicationContext, "item_list_mark_read_on_scroll", false));
            switchCompat3.setOnCheckedChangeListener(new defpackage.d(2, this, applicationContext));
        }
        PopupWindow popupWindow2 = this.H;
        if (popupWindow2 != null) {
            popupWindow2.showAsDropDown(this.x);
        }
    }

    public abstract void O();

    public final void P(int i2) {
        Fragment fragment = this.G;
        if (!(fragment instanceof ItemListFragment)) {
            fragment = null;
        }
        ItemListFragment itemListFragment = (ItemListFragment) fragment;
        if (itemListFragment == null || itemListFragment.getActivity() == null) {
            return;
        }
        Context applicationContext = itemListFragment.getActivity().getApplicationContext();
        on6.g(applicationContext).c = i2;
        iw6.T(applicationContext, "item_list_view", i2);
        itemListFragment.i(i2);
        itemListFragment.vRecyclerView.setRecycledViewPool(null);
    }

    public final void Q() {
        hw6 hw6VarG = on6.g(getApplicationContext());
        boolean z = hw6VarG.e;
        if (z) {
            n56.X1(this, getText(R.string.view_show_all));
        } else {
            n56.X1(this, getText(R.string.view_unread_only));
        }
        boolean z2 = !z;
        hw6VarG.e = z2;
        iw6.S(hw6VarG.a, "view_unread_only", z2);
        on6.a.f = !z;
        K();
    }

    public final void R() {
        Context applicationContext = getApplicationContext();
        TextView textView = this.B;
        if (textView != null) {
            textView.setText(on6.a.c(applicationContext));
        }
        TextView textView2 = this.C;
        if (textView2 != null) {
            if (TextUtils.isEmpty(on6.a.c)) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(on6.a.c);
                textView2.setVisibility(0);
            }
        }
    }

    public final void S(boolean z) {
        View view;
        Fragment fragment = this.F;
        if (!(fragment instanceof qu6)) {
            fragment = null;
        }
        qu6 qu6Var = (qu6) fragment;
        if (qu6Var != null) {
            qu6Var.i.setRefreshing(z);
        }
        View view2 = this.D;
        if (view2 == null || (view = this.E) == null) {
            return;
        }
        if (z) {
            view2.setVisibility(0);
            view2.setVisibility(8);
        } else {
            view.setVisibility(8);
            view2.setVisibility(0);
        }
    }

    @Override // pl6.b
    public void c(rl6 rl6Var, boolean z) {
        im7.e(rl6Var, "consentState");
    }

    @Override // pl6.b
    public void h(em6 em6Var) {
        im7.e(em6Var, "data");
        bw6.b(this);
    }

    @Override // com.noinnion.android.reader.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BroadcastReceiver broadcastReceiver = this.K;
        if (broadcastReceiver != null) {
            yd.a(this).d(broadcastReceiver);
        }
        this.K = null;
        B();
        this.H = null;
        A();
        this.w = null;
        try {
            new WebView(getApplicationContext()).clearCache(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        im7.e(menuItem, NSRSS20.ITEM);
        switch (menuItem.getItemId()) {
            case R.id.menu_buy /* 2131296705 */:
                n56.Z1(this);
                return true;
            case R.id.menu_clear_cache /* 2131296706 */:
                yo6.i(this);
                wb wbVarO = o();
                int i2 = ClearCacheDialog.f;
                try {
                    ClearCacheDialog clearCacheDialog = new ClearCacheDialog();
                    xb xbVar = (xb) wbVarO;
                    Objects.requireNonNull(xbVar);
                    qb qbVar = new qb(xbVar);
                    qbVar.f(0, clearCacheDialog, "fragment_clear_cache", 1);
                    qbVar.d();
                } catch (Exception unused) {
                }
                return true;
            case R.id.menu_feedback /* 2131296710 */:
                startActivityForResult(new Intent(this, (Class<?>) WelcomeActivity.class), 2);
                return true;
            case R.id.menu_logout /* 2131296721 */:
                yo6.i(this);
                t75 t75Var = new t75(this);
                t75Var.m(R.string.txt_logout);
                t75Var.g(R.string.msg_confirm_logout);
                t75Var.k(getText(android.R.string.ok), new xp6(this));
                t75Var.i(getText(android.R.string.cancel), yp6.e);
                t75Var.a().show();
                return true;
            case R.id.menu_prefs /* 2131296724 */:
                yo6.i(this);
                ew6 ew6Var = on6.a;
                on6.j = iw6.I(this);
                on6.k = iw6.H(this);
                on6.l = iw6.g(this);
                on6.m = iw6.j(this);
                on6.n = iw6.k(this);
                on6.o = iw6.i(this);
                startActivityForResult(new Intent(this, (Class<?>) SettingsActivity.class), 1);
                return true;
            case R.id.menu_theme /* 2131296727 */:
                Context applicationContext = getApplicationContext();
                boolean zF = iw6.f(applicationContext, "application_theme_auto_dark", true);
                int iE = lw6.e(applicationContext);
                ro.c cVar = new ro.c(this);
                cVar.d = getText(R.string.menu_theme);
                cVar.a(R.menu.dialog_theme);
                cVar.f = new bq6(this, applicationContext, zF, iE);
                ro roVar = new ro(cVar.a, cVar.c);
                roVar.p = cVar;
                im7.d(roVar, "bottomSheet");
                MenuItem menuItemFindItem = roVar.p.b.findItem(R.id.theme_auto_dark);
                im7.d(menuItemFindItem, "bottomSheet.menu.findItem(R.id.theme_auto_dark)");
                menuItemFindItem.setChecked(zF);
                if (iE == 0) {
                    MenuItem menuItemFindItem2 = roVar.p.b.findItem(R.id.theme_default);
                    im7.d(menuItemFindItem2, "bottomSheet.menu.findItem(R.id.theme_default)");
                    menuItemFindItem2.setChecked(true);
                } else if (iE == 1) {
                    MenuItem menuItemFindItem3 = roVar.p.b.findItem(R.id.theme_dark);
                    im7.d(menuItemFindItem3, "bottomSheet.menu.findItem(R.id.theme_dark)");
                    menuItemFindItem3.setChecked(true);
                } else if (iE == 2) {
                    MenuItem menuItemFindItem4 = roVar.p.b.findItem(R.id.theme_black);
                    im7.d(menuItemFindItem4, "bottomSheet.menu.findItem(R.id.theme_black)");
                    menuItemFindItem4.setChecked(true);
                } else if (iE == 3) {
                    MenuItem menuItemFindItem5 = roVar.p.b.findItem(R.id.theme_sepia);
                    im7.d(menuItemFindItem5, "bottomSheet.menu.findItem(R.id.theme_sepia)");
                    menuItemFindItem5.setChecked(true);
                } else if (iE == 5) {
                    MenuItem menuItemFindItem6 = roVar.p.b.findItem(R.id.theme_green);
                    im7.d(menuItemFindItem6, "bottomSheet.menu.findItem(R.id.theme_green)");
                    menuItemFindItem6.setChecked(true);
                }
                roVar.show();
                return true;
            default:
                return false;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.I = false;
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, f7.b
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        im7.e(strArr, "permissions");
        im7.e(iArr, "grantResults");
        if (i2 == 1) {
            return;
        }
        super.onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.I = true;
        uo6 uo6Var = (uo6) this.L.getValue();
        yg7 yg7Var = new yg7(new kh7(uo6Var.c.b().e(new qo6(uo6Var)), ro6.e), new so6(uo6Var), false);
        im7.d(yg7Var, "billingRepository.getVal…          }\n            }");
        hb7 hb7VarG = yg7Var.j(ej7.b).g(fc7.a());
        im7.d(hb7VarG, "billing.checkValidPurcha…dSchedulers.mainThread())");
        ic7 ic7VarG = bj7.g(hb7VarG, cq6.e, null, 2);
        im7.e(ic7VarG, "$this$addTo");
        im7.e(this, "activity");
        im7.e(ic7VarG, "disposable");
        this.v.b(ic7VarG);
        n56.s(getApplicationContext());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        im7.e(bundle, "outState");
        on6.a.h(bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        jq6 jq6Var = this.J;
        if (jq6Var != null) {
            jq6Var.b();
        }
        super.onStop();
    }
}
