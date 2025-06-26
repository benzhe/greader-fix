package com.noinnion.android.greader.ui.home;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.Fragment;
import com.miguelcatalan.materialsearchview.MaterialSearchView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.item.EditTagDialog;
import com.noinnion.android.greader.ui.item.ItemFragment;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment;
import com.noinnion.android.greader.ui.setting.ArticleControlsPreferenceFragment;
import defpackage.ap6;
import defpackage.dq6;
import defpackage.eq6;
import defpackage.ew6;
import defpackage.fq6;
import defpackage.gq6;
import defpackage.hq6;
import defpackage.hw6;
import defpackage.iq6;
import defpackage.iw6;
import defpackage.kw6;
import defpackage.lp6;
import defpackage.lw6;
import defpackage.n56;
import defpackage.nn6;
import defpackage.on6;
import defpackage.qb;
import defpackage.qu6;
import defpackage.rn6;
import defpackage.ro;
import defpackage.u;
import defpackage.uq6;
import defpackage.wb;
import defpackage.xb;
import defpackage.yd;
import defpackage.yo6;
import java.util.Objects;

/* loaded from: classes2.dex */
public class HomeTabletActivity extends HomeBaseActivity implements View.OnClickListener {
    public static final /* synthetic */ int m0 = 0;
    public TextView Q;
    public TextView R;
    public TextView S;
    public TextView T;
    public ImageView U;
    public Fragment V;
    public View W;
    public View X;
    public View Y;
    public boolean Z;
    public View b0;
    public View c0;
    public View d0;
    public View e0;
    public AnimatorSet f0;
    public AnimatorSet g0;
    public int h0;
    public int i0;
    public Menu l0;
    public int P = 0;
    public int a0 = 1;
    public int j0 = 0;
    public int k0 = 0;

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            HomeTabletActivity.this.Q();
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            switch (i) {
                case R.id.sync_all /* 2131296997 */:
                    HomeTabletActivity.this.S(true);
                    yo6.f(HomeTabletActivity.this, false);
                    break;
                case R.id.sync_all_offline /* 2131296998 */:
                    HomeTabletActivity.this.S(true);
                    yo6.f(HomeTabletActivity.this, true);
                    break;
                case R.id.sync_offline_last_synced /* 2131297002 */:
                    long jZ = iw6.z(HomeTabletActivity.this);
                    if (jZ > 0) {
                        new nn6(HomeTabletActivity.this.getApplicationContext(), null, jZ).execute(new Void[0]);
                        break;
                    }
                    break;
                case R.id.sync_offline_unread /* 2131297003 */:
                    new nn6(HomeTabletActivity.this.getApplicationContext(), null, 0L).execute(new Void[0]);
                    break;
                case R.id.sync_selection /* 2131297004 */:
                    HomeTabletActivity.this.S(true);
                    yo6.h(HomeTabletActivity.this, false);
                    break;
                case R.id.sync_selection_offline /* 2131297005 */:
                    HomeTabletActivity.this.S(true);
                    yo6.h(HomeTabletActivity.this, true);
                    break;
            }
        }
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity
    public void J(Intent intent) {
        if (intent.getAction().equals("com.noinnion.android.greader.reader.action.ITEM_LIST")) {
            D();
            return;
        }
        if (!intent.getAction().equals("com.noinnion.android.greader.reader.action.ITEM_VIEW")) {
            startActivity(intent);
            overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out);
            return;
        }
        Bundle bundleG1 = n56.g1(intent);
        if (this.P == 1 && !on6.c && bundleG1.containsKey("itemId") && bundleG1.containsKey("cursorPosition")) {
            Intent intent2 = new Intent("com.noinnion.android.greader.reader.action.REFRESH_ITEM_POSITION");
            intent2.putExtra("itemId", bundleG1.getLong("itemId"));
            intent2.putExtra("cursorPosition", bundleG1.getInt("cursorPosition"));
            yd.a(this).c(intent2);
            return;
        }
        on6.c = false;
        if (this.P == 1) {
            X(bundleG1);
        } else {
            Fragment fragment = this.G;
            if (fragment instanceof ItemListFragment) {
                ((ItemListFragment) fragment).n(true);
            }
            if (this.f0 == null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.W, "translationX", (-this.i0) + this.j0);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.X, "translationX", (-this.i0) + this.j0);
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.d0, "translationX", (-this.i0) + this.j0);
                ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.e0, "translationX", (-this.i0) + this.j0);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
                animatorSet.setDuration(350L);
                this.f0 = animatorSet;
            }
            this.f0.addListener(new dq6(this, bundleG1));
            this.f0.start();
        }
        V(1);
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity
    public void N() {
        if (this.P == 0) {
            super.N();
        }
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity
    public void O() {
        String strC = on6.a.c(this);
        if (strC.length() > 25) {
            strC = strC.substring(0, 25) + "…";
        }
        ro.c cVar = new ro.c(this);
        cVar.d = getText(R.string.title_synchronization);
        cVar.c(R.id.sync_all, ((Object) getText(R.string.array_sync_all)) + ": " + ((Object) getText(R.string.label_all)));
        cVar.c(R.id.sync_all_offline, getText(R.string.array_sync_all_offline));
        ew6 ew6Var = on6.a;
        if (ew6Var.a != null || ew6Var.b != null) {
            cVar.c(R.id.sync_selection, ((Object) getText(R.string.array_sync_all)) + ": " + strC);
            cVar.c(R.id.sync_selection_offline, getText(R.string.array_sync_all_offline));
        }
        cVar.a(R.menu.dialog_sync_offline);
        cVar.f = new b();
        cVar.d();
    }

    public final void T() {
        if (this.V != null) {
            try {
                xb xbVar = (xb) o();
                Objects.requireNonNull(xbVar);
                qb qbVar = new qb(xbVar);
                qbVar.q(this.V);
                qbVar.c();
                this.V = null;
            } catch (Exception unused) {
            }
            this.V = null;
        }
    }

    public final void U() {
        u uVarT = t();
        if (uVarT != null) {
            uVarT.o(false);
        }
    }

    public final void V(int i) {
        boolean z = i != this.P;
        this.P = i;
        if (i != 0) {
            if (i == 1 && z) {
                U();
                this.A.setVisibility(8);
                this.l0.findItem(R.id.menu_item_more).setVisible(true);
                this.l0.findItem(R.id.menu_item_info).setVisible(true);
                this.l0.findItem(R.id.menu_home_more).setVisible(false);
                this.l0.findItem(R.id.menu_home_actions).setVisible(false);
                return;
            }
            return;
        }
        if (z) {
            U();
            this.x.setNavigationIcon(lw6.i());
            if (on6.g(this).n > 0) {
                this.A.setVisibility(0);
            }
            this.l0.findItem(R.id.menu_item_more).setVisible(false);
            this.l0.findItem(R.id.menu_item_info).setVisible(false);
            this.l0.findItem(R.id.menu_home_more).setVisible(true);
            this.l0.findItem(R.id.menu_home_actions).setVisible(true);
        }
    }

    public final void W() {
        int i;
        int i2;
        Context applicationContext = getApplicationContext();
        this.f0 = null;
        this.g0 = null;
        int iW0 = n56.W0(applicationContext);
        this.h0 = iW0;
        this.i0 = iW0 / 3;
        int iV = iw6.v(applicationContext);
        this.a0 = iV;
        if (iV == 1) {
            this.j0 = n56.o0(applicationContext, 48.0f);
            this.k0 = 0;
        } else if (iV == 2) {
            this.j0 = 0;
            this.k0 = n56.o0(applicationContext, 48.0f);
        } else {
            this.j0 = 0;
            this.k0 = 0;
        }
        this.Z = iw6.f(applicationContext, "show_item_list", true);
        ViewGroup.LayoutParams layoutParams = this.W.getLayoutParams();
        layoutParams.width = this.i0;
        if (this.P == 1) {
            this.W.setTranslationX((-r2) + this.j0);
            this.X.setTranslationX((-this.i0) + this.j0);
            this.d0.setTranslationX((-this.i0) + this.j0);
            this.e0.setTranslationX((-this.i0) + this.j0);
        } else {
            this.W.setTranslationX(0.0f);
            this.X.setTranslationX(0.0f);
            this.d0.setTranslationX(0.0f);
            this.e0.setTranslationX(0.0f);
        }
        if (n56.n1(applicationContext)) {
            if (this.P == 1) {
                this.X.getLayoutParams().width = 0;
            } else {
                this.X.getLayoutParams().width = this.h0 - this.i0;
                U();
            }
            this.Y.getLayoutParams().width = this.h0 - this.j0;
            return;
        }
        if (this.P == 1) {
            this.X.getLayoutParams().width = this.Z ? (this.i0 - this.j0) - this.k0 : 0;
        } else {
            this.X.getLayoutParams().width = this.h0 - this.i0;
            U();
        }
        ViewGroup.LayoutParams layoutParams2 = this.Y.getLayoutParams();
        if (this.Z) {
            i = this.h0;
            i2 = this.i0;
        } else {
            i = this.h0;
            i2 = this.j0;
        }
        layoutParams2.width = i - i2;
    }

    public final void X(Bundle bundle) {
        ItemFragment itemFragment = new ItemFragment();
        this.V = itemFragment;
        itemFragment.setArguments(bundle);
        try {
            xb xbVar = (xb) o();
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.g(R.id.fragment_item, this.V, "fragment_item");
            qbVar.c();
        } catch (Exception unused) {
        }
    }

    public void Y() {
        if (this.P != 1) {
            T();
            return;
        }
        Fragment fragment = this.G;
        if (fragment instanceof ItemListFragment) {
            ((ItemListFragment) fragment).n(false);
        }
        this.b0.setVisibility(8);
        this.c0.setVisibility(8);
        if (this.g0 == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.W, "translationX", 0.0f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.X, "translationX", 0.0f);
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.d0, "translationX", 0.0f);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.e0, "translationX", 0.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
            animatorSet.setDuration(350L);
            animatorSet.addListener(new eq6(this));
            this.g0 = animatorSet;
        }
        this.g0.start();
        V(0);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Context applicationContext = getApplicationContext();
        boolean z = true;
        if (i != 1) {
            if (i == 2 || (i == 3 && i2 == -1)) {
                K();
                return;
            } else {
                super.onActivityResult(i, i2, intent);
                return;
            }
        }
        if (!iw6.g(applicationContext).equals(on6.l)) {
            iw6.U(applicationContext, "last_sync_time", 0L);
            on6.i(applicationContext).E();
        }
        this.a0 = iw6.v(applicationContext);
        W();
        if (on6.k != iw6.H(applicationContext)) {
            n56.M1(this);
        }
        if (on6.j != iw6.I(applicationContext)) {
            iw6.U(applicationContext, "last_sync_time", 0L);
        }
        on6.l();
        lw6.a(this);
        on6.a(this);
        boolean z2 = false;
        hw6 hw6VarG = on6.g(applicationContext);
        if (hw6VarG.i != iw6.a0(applicationContext)) {
            finish();
            startActivity(new Intent(this, (Class<?>) HomeActivity.class));
            z2 = true;
        }
        if (hw6VarG.s == iw6.q(applicationContext) && hw6VarG.t == iw6.r(applicationContext) && hw6VarG.q == iw6.o(applicationContext) && hw6VarG.r == iw6.p(applicationContext)) {
            z = z2;
        } else {
            finish();
            startActivity(new Intent(this, (Class<?>) HomeTabletActivity.class));
        }
        on6.j(applicationContext);
        kw6 kw6Var = on6.e;
        if (kw6Var == null) {
            on6.e = kw6.a(applicationContext);
        } else {
            kw6Var.b(applicationContext);
        }
        if (z) {
            return;
        }
        if (on6.m == iw6.j(applicationContext) && on6.n == iw6.k(applicationContext) && on6.o == iw6.i(applicationContext)) {
            return;
        }
        C();
        invalidateOptionsMenu();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MaterialSearchView materialSearchView = this.y;
        if (materialSearchView.f) {
            materialSearchView.a();
        } else {
            this.j.a();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ItemFragment itemFragment;
        ap6 ap6Var;
        ItemFragment itemFragment2;
        ap6 ap6Var2;
        ValueAnimator valueAnimatorOfInt;
        ValueAnimator valueAnimatorOfInt2;
        switch (view.getId()) {
            case R.id.add_label_button /* 2131296344 */:
                Fragment fragment = this.V;
                if (fragment != null && (ap6Var = (itemFragment = (ItemFragment) fragment).i) != null) {
                    EditTagDialog.d(itemFragment.getFragmentManager(), ap6Var.e);
                    break;
                }
                break;
            case R.id.back_button_1 /* 2131296362 */:
            case R.id.back_button_2 /* 2131296363 */:
                Y();
                break;
            case R.id.cache_view /* 2131296405 */:
                Fragment fragment2 = this.V;
                if (fragment2 != null && (ap6Var2 = (itemFragment2 = (ItemFragment) fragment2).i) != null) {
                    itemFragment2.r(itemFragment2.o(), ap6Var2);
                    itemFragment2.m(2, ap6Var2.s, false);
                    break;
                }
                break;
            case R.id.feed_view /* 2131296528 */:
                Fragment fragment3 = this.V;
                if (fragment3 != null) {
                    ((ItemFragment) fragment3).u();
                    break;
                }
                break;
            case R.id.item_dual_pane_1 /* 2131296614 */:
            case R.id.item_dual_pane_2 /* 2131296615 */:
                int i = getResources().getConfiguration().orientation;
                if (this.X.getWidth() > 0) {
                    valueAnimatorOfInt = ValueAnimator.ofInt(this.X.getWidth(), 0);
                    valueAnimatorOfInt.addUpdateListener(new fq6(this));
                    valueAnimatorOfInt2 = ValueAnimator.ofInt(this.Y.getWidth(), this.Y.getWidth() + this.X.getWidth());
                    valueAnimatorOfInt2.addUpdateListener(new gq6(this));
                    ((ImageView) findViewById(R.id.item_dual_pane_1)).setImageResource(R.drawable.ic_nav_item_list_on);
                    ((ImageView) findViewById(R.id.item_dual_pane_2)).setImageResource(R.drawable.ic_nav_item_list_on);
                    if (i == 2) {
                        this.Z = false;
                        iw6.S(this, "show_item_list", false);
                    }
                } else {
                    valueAnimatorOfInt = ValueAnimator.ofInt(this.X.getWidth(), this.i0 - this.j0);
                    valueAnimatorOfInt.addUpdateListener(new hq6(this));
                    valueAnimatorOfInt2 = ValueAnimator.ofInt(this.Y.getWidth(), (this.h0 - this.i0) - this.k0);
                    valueAnimatorOfInt2.addUpdateListener(new iq6(this));
                    ((ImageView) findViewById(R.id.item_dual_pane_1)).setImageResource(R.drawable.ic_nav_item_list_off);
                    ((ImageView) findViewById(R.id.item_dual_pane_2)).setImageResource(R.drawable.ic_nav_item_list_off);
                    if (i == 2) {
                        this.Z = true;
                        iw6.S(this, "show_item_list", true);
                    }
                }
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(valueAnimatorOfInt, valueAnimatorOfInt2);
                animatorSet.setDuration(350L);
                animatorSet.start();
                break;
            case R.id.mark_all_button_1 /* 2131296662 */:
            case R.id.mark_all_button_2 /* 2131296663 */:
                Y();
                G();
                break;
            case R.id.mark_read_button /* 2131296670 */:
                G();
                break;
            case R.id.next_item_1 /* 2131296785 */:
            case R.id.next_item_2 /* 2131296786 */:
                Fragment fragment4 = this.V;
                if (fragment4 instanceof ItemFragment) {
                    ((ItemFragment) fragment4).y();
                    break;
                }
                break;
            case R.id.previous_item_1 /* 2131296848 */:
            case R.id.previous_item_2 /* 2131296849 */:
                Fragment fragment5 = this.V;
                if (fragment5 instanceof ItemFragment) {
                    ((ItemFragment) fragment5).B();
                    break;
                }
                break;
            case R.id.save_button /* 2131296895 */:
                Fragment fragment6 = this.V;
                if (fragment6 != null) {
                    ((ItemFragment) fragment6).C();
                    break;
                }
                break;
            case R.id.search_view /* 2131296919 */:
                this.y.c(true);
                break;
            case R.id.sync_button /* 2131296999 */:
                lp6 lp6Var = on6.a.b;
                if (lp6Var != null) {
                    if (lp6Var.g == 1) {
                        yo6.h(this, false);
                        break;
                    }
                }
                yo6.f(this, false);
                break;
            case R.id.sync_cancel_button /* 2131297000 */:
                S(false);
                yo6.i(this);
                break;
            case R.id.web_view /* 2131297117 */:
                Fragment fragment7 = this.V;
                if (fragment7 != null) {
                    ((ItemFragment) fragment7).s();
                    break;
                }
                break;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        W();
        Fragment fragment = this.G;
        if (fragment instanceof ItemListFragment) {
            ((ItemListFragment) fragment).n(this.P == 1);
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        lp6 lp6Var;
        y(bundle, true, false);
        n56.M1(this);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        if (bundle != null) {
            extras.putAll(bundle);
        }
        Context applicationContext = getApplicationContext();
        if (extras.getBoolean("force_recreate", false)) {
            on6.a.b();
        }
        on6.a.g(applicationContext, extras);
        hw6 hw6VarG = on6.g(applicationContext);
        ew6 ew6Var = on6.a;
        ew6Var.f = hw6VarG.e;
        if (ew6Var.e || ((lp6Var = ew6Var.b) != null && lp6Var.g == 1)) {
            ew6Var.f = false;
        }
        setContentView(R.layout.home_tablet);
        wb wbVarO = o();
        if (bundle == null) {
            xb xbVar = (xb) wbVarO;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qu6 qu6Var = new qu6();
            this.F = qu6Var;
            qu6Var.setArguments(n56.g1(getIntent()));
            qbVar.f(R.id.fragment_sub_list, this.F, "fragment_sub_list", 1);
            ItemListFragment itemListFragment = new ItemListFragment();
            this.G = itemListFragment;
            itemListFragment.setArguments(n56.g1(getIntent()));
            qbVar.f(R.id.fragment_item_list, this.G, "fragment_item_list", 1);
            qbVar.c();
        } else {
            if (this.F == null) {
                this.F = wbVarO.c("fragment_sub_list");
            }
            if (this.G == null) {
                this.G = wbVarO.c("fragment_item_list");
            }
            if (this.V == null) {
                this.V = wbVarO.c("fragment_item");
            }
        }
        this.W = findViewById(R.id.fragment_sub_list);
        this.X = findViewById(R.id.fragment_item_list);
        this.Y = findViewById(R.id.fragment_item);
        this.W.setDrawingCacheEnabled(true);
        this.X.setDrawingCacheEnabled(true);
        this.Y.setDrawingCacheEnabled(true);
        this.b0 = findViewById(R.id.nav_bar_left);
        this.c0 = findViewById(R.id.nav_bar_right);
        this.d0 = findViewById(R.id.shadow_left);
        this.e0 = findViewById(R.id.shadow_right);
        W();
        F();
        E();
        C();
        findViewById(R.id.back_button_1).setOnClickListener(this);
        findViewById(R.id.back_button_2).setOnClickListener(this);
        findViewById(R.id.previous_item_1).setOnClickListener(this);
        findViewById(R.id.previous_item_2).setOnClickListener(this);
        findViewById(R.id.next_item_1).setOnClickListener(this);
        findViewById(R.id.next_item_2).setOnClickListener(this);
        findViewById(R.id.mark_all_button_1).setOnClickListener(this);
        findViewById(R.id.mark_all_button_2).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.item_dual_pane_1);
        boolean z = this.Z;
        int i = R.drawable.ic_nav_item_list_on;
        imageView.setImageResource(z ? R.drawable.ic_nav_item_list_off : R.drawable.ic_nav_item_list_on);
        imageView.setOnClickListener(this);
        ImageView imageView2 = (ImageView) findViewById(R.id.item_dual_pane_2);
        if (this.Z) {
            i = R.drawable.ic_nav_item_list_off;
        }
        imageView2.setImageResource(i);
        imageView2.setOnClickListener(this);
        I(bundle);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Context applicationContext = getApplicationContext();
        getMenuInflater().inflate(R.menu.home_tablet, menu);
        this.l0 = menu;
        View actionView = menu.findItem(R.id.menu_item_info).getActionView();
        TextView textView = (TextView) actionView.findViewById(R.id.cache_view);
        this.S = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) actionView.findViewById(R.id.web_view);
        this.R = textView2;
        textView2.setOnClickListener(this);
        TextView textView3 = (TextView) actionView.findViewById(R.id.feed_view);
        this.Q = textView3;
        textView3.setOnClickListener(this);
        this.T = (TextView) actionView.findViewById(R.id.position_text);
        ImageView imageView = (ImageView) actionView.findViewById(R.id.save_button);
        this.U = imageView;
        imageView.setOnClickListener(this);
        actionView.findViewById(R.id.add_label_button).setOnClickListener(this);
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_home_actions);
        if (menuItemFindItem != null) {
            View actionView2 = menuItemFindItem.getActionView();
            SwitchCompat switchCompat = (SwitchCompat) actionView2.findViewById(R.id.switch_unread);
            switchCompat.setChecked(!on6.g(applicationContext).e);
            switchCompat.setOnCheckedChangeListener(new a());
            actionView2.findViewById(R.id.search_view).setOnClickListener(this);
            View viewFindViewById = actionView2.findViewById(R.id.sync_button);
            this.D = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this);
                this.D.setOnLongClickListener(this.N);
            }
            View viewFindViewById2 = actionView2.findViewById(R.id.sync_cancel_button);
            this.E = viewFindViewById2;
            if (viewFindViewById2 != null) {
                viewFindViewById2.setOnClickListener(this);
            }
            View viewFindViewById3 = actionView2.findViewById(R.id.mark_read_button);
            if (viewFindViewById3 != null) {
                if (iw6.j(applicationContext) == 0) {
                    viewFindViewById3.setVisibility(0);
                    viewFindViewById3.setOnClickListener(this);
                    viewFindViewById3.setOnLongClickListener(this.N);
                } else {
                    viewFindViewById3.setVisibility(8);
                }
            }
            if (on6.b) {
                S(true);
            }
        }
        R();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2 = this.P;
        if (i2 == 0) {
            Fragment fragment = this.G;
            if ((fragment instanceof ItemListFragment) && ((ItemListFragment) fragment).o(i)) {
                return true;
            }
        } else if (i2 == 1) {
            if (i == 4) {
                return true;
            }
            Fragment fragment2 = this.V;
            if ((fragment2 instanceof ItemFragment) && ((ItemFragment) fragment2).z(i)) {
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        int i2 = this.P;
        if (i2 == 0) {
            Fragment fragment = this.G;
            if ((fragment instanceof ItemListFragment) && ((ItemListFragment) fragment).p(i)) {
                return true;
            }
        } else if (i2 == 1) {
            if (i == 4) {
                Y();
                return true;
            }
            Fragment fragment2 = this.V;
            if ((fragment2 instanceof ItemFragment) && ((ItemFragment) fragment2).A(i)) {
                return true;
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (super.onOptionsItemSelected(menuItem)) {
            return false;
        }
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                int i = this.P;
                if (i == 0) {
                    if (i == 0) {
                        super.N();
                        break;
                    }
                } else {
                    Y();
                    break;
                }
                break;
            case R.id.menu_controls /* 2131296707 */:
                Fragment fragment = this.V;
                if (fragment != null) {
                    ItemFragment itemFragment = (ItemFragment) fragment;
                    ArticleControlsPreferenceFragment.j(itemFragment.getActivity(), new uq6(itemFragment));
                    break;
                }
                break;
            case R.id.menu_fonts /* 2131296711 */:
                Fragment fragment2 = this.V;
                if (fragment2 != null) {
                    ((ItemFragment) fragment2).E();
                    break;
                }
                break;
            case R.id.menu_image_fit /* 2131296716 */:
                Fragment fragment3 = this.V;
                if (fragment3 != null) {
                    ((ItemFragment) fragment3).F();
                    break;
                }
                break;
            case R.id.menu_inverse_page /* 2131296717 */:
                Fragment fragment4 = this.V;
                if (fragment4 != null) {
                    ((ItemFragment) fragment4).G();
                }
                on6.h(this).b = !menuItem.isChecked();
                menuItem.setChecked(!menuItem.isChecked());
                break;
            case R.id.menu_item_more /* 2131296719 */:
                onPrepareOptionsMenu(this.l0);
                break;
            case R.id.menu_load_images /* 2131296720 */:
                Fragment fragment5 = this.V;
                if (fragment5 != null) {
                    ((ItemFragment) fragment5).I();
                }
                menuItem.setChecked(!menuItem.isChecked());
                break;
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_image_fit);
        Fragment fragment = this.V;
        menuItemFindItem.setTitle(fragment != null && ((ItemFragment) fragment).q() ? R.string.menu_image_normal_width : R.string.menu_image_screen_fit);
        menu.findItem(R.id.menu_inverse_page).setChecked(on6.h(this).b);
        MenuItem menuItemFindItem2 = menu.findItem(R.id.menu_load_images);
        Fragment fragment2 = this.V;
        menuItemFindItem2.setChecked(fragment2 == null || ((ItemFragment) fragment2).D);
        getApplicationContext();
        return true;
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        rn6.getClientName(this);
        lw6.j(this);
    }
}
