package com.noinnion.android.greader.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.Fragment;
import com.miguelcatalan.materialsearchview.MaterialSearchView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.HomeActivity;
import com.noinnion.android.greader.ui.item.ItemActivity;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment;
import defpackage.ew6;
import defpackage.hw6;
import defpackage.iw6;
import defpackage.lp6;
import defpackage.lw6;
import defpackage.n56;
import defpackage.on6;
import defpackage.qb;
import defpackage.qu6;
import defpackage.rn6;
import defpackage.ro;
import defpackage.wb;
import defpackage.xb;
import defpackage.yo6;
import java.util.Objects;
import net.simonvt.menudrawer.MenuDrawer;

/* loaded from: classes2.dex */
public class HomeActivity extends HomeBaseActivity implements View.OnClickListener {
    public MenuDrawer P;

    public static void T(Activity activity) {
        MenuDrawer menuDrawer;
        if (!(activity instanceof HomeActivity) || (menuDrawer = ((HomeActivity) activity).P) == null) {
            return;
        }
        menuDrawer.i(true);
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity
    public void H() {
        super.H();
        if (on6.g(getApplicationContext()).l) {
            this.P.i(true);
        }
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity
    public void J(Intent intent) {
        if (intent.getAction().equals("com.noinnion.android.greader.reader.action.ITEM_LIST")) {
            D();
            this.P.b(true);
        } else {
            if (intent.getAction().equals("com.noinnion.android.greader.reader.action.ITEM_VIEW")) {
                intent.setClass(this, ItemActivity.class);
            }
            startActivity(intent);
            overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out);
        }
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity
    public void O() {
        String strC = on6.a.c(this);
        if (strC.length() > 10) {
            strC = strC.substring(0, 10) + "…";
        }
        ro.c cVar = new ro.c(this);
        cVar.d = getText(R.string.title_synchronization);
        cVar.c(R.id.sync_all, ((Object) getText(R.string.array_sync_all)) + ": " + strC);
        cVar.c(R.id.sync_all_offline, getText(R.string.array_sync_all_offline));
        cVar.a(R.menu.dialog_sync_offline);
        cVar.f = new DialogInterface.OnClickListener() { // from class: sp6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                HomeActivity homeActivity = this.e;
                Objects.requireNonNull(homeActivity);
                switch (i) {
                    case R.id.sync_all /* 2131296997 */:
                        homeActivity.S(true);
                        yo6.e(homeActivity, false, homeActivity.P.f());
                        break;
                    case R.id.sync_all_offline /* 2131296998 */:
                        homeActivity.S(true);
                        yo6.e(homeActivity, true, homeActivity.P.f());
                        break;
                    case R.id.sync_offline_last_synced /* 2131297002 */:
                        long jZ = iw6.z(homeActivity);
                        if (jZ > 0) {
                            new nn6(homeActivity.getApplicationContext(), null, jZ).execute(new Void[0]);
                            break;
                        }
                        break;
                    case R.id.sync_offline_unread /* 2131297003 */:
                        new nn6(homeActivity.getApplicationContext(), on6.a.f(), 0L).execute(new Void[0]);
                        break;
                }
            }
        };
        cVar.d();
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
            startActivity(new Intent(this, (Class<?>) HomeTabletActivity.class));
            z2 = true;
        }
        if ((!n56.n1(applicationContext) && hw6VarG.j != iw6.P(applicationContext)) || hw6VarG.k != iw6.O(applicationContext)) {
            finish();
            startActivity(new Intent(this, (Class<?>) HomeActivity.class));
            z2 = true;
        }
        if (hw6VarG.s == iw6.q(applicationContext) && hw6VarG.t == iw6.r(applicationContext) && hw6VarG.q == iw6.o(applicationContext) && hw6VarG.r == iw6.p(applicationContext)) {
            z = z2;
        } else {
            finish();
            startActivity(new Intent(this, (Class<?>) HomeActivity.class));
        }
        on6.j(applicationContext);
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
            return;
        }
        boolean z = true;
        if (!this.P.f()) {
            this.P.i(true);
            return;
        }
        Fragment fragment = this.F;
        if (fragment instanceof qu6) {
            qu6 qu6Var = (qu6) fragment;
            if (qu6Var.h.getVisibility() == 0) {
                qu6Var.j();
            } else {
                z = false;
            }
            if (z) {
                return;
            }
        }
        this.j.a();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.mark_read_button /* 2131296670 */:
                G();
                break;
            case R.id.sync_button /* 2131296999 */:
                S(true);
                yo6.e(this, false, this.P.f());
                break;
            case R.id.sync_cancel_button /* 2131297000 */:
                S(false);
                yo6.i(this);
                break;
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        lp6 lp6Var;
        y(bundle, true, false);
        n56.M1(this);
        Context applicationContext = getApplicationContext();
        hw6 hw6VarG = on6.g(applicationContext);
        if (n56.n1(applicationContext) || !hw6VarG.j) {
            setContentView(R.layout.home);
            MenuDrawer menuDrawer = (MenuDrawer) findViewById(R.id.drawer);
            this.P = menuDrawer;
            menuDrawer.setTouchMode(hw6VarG.s > 0 ? 1 : 2);
            if (hw6VarG.k) {
                this.P.setMenuSize(n56.W0(applicationContext));
                this.P.setDropShadowEnabled(false);
            } else {
                this.P.setMenuSize(n56.W0(applicationContext) - n56.o0(applicationContext, 50.0f));
                this.P.setDropShadow(lw6.h());
                this.P.setDropShadowSize(8);
            }
            this.P.i(false);
        } else {
            setContentView(R.layout.home_land);
            MenuDrawer menuDrawer2 = (MenuDrawer) findViewById(R.id.drawer);
            this.P = menuDrawer2;
            menuDrawer2.setMenuSize(n56.W0(applicationContext) / 3);
            this.P.setDropShadow(lw6.h());
            this.P.setDropShadowSize(8);
        }
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        if (bundle != null) {
            extras.putAll(bundle);
        }
        Context applicationContext2 = getApplicationContext();
        if (extras.getBoolean("force_recreate", false)) {
            this.P.b(false);
            on6.a.b();
        }
        on6.a.g(applicationContext2, extras);
        hw6 hw6VarG2 = on6.g(applicationContext2);
        ew6 ew6Var = on6.a;
        ew6Var.f = hw6VarG2.e;
        if (ew6Var.e || ((lp6Var = ew6Var.b) != null && lp6Var.g == 1)) {
            ew6Var.f = false;
        }
        F();
        E();
        C();
        wb wbVarO = o();
        if (bundle == null) {
            xb xbVar = (xb) wbVarO;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qu6 qu6Var = new qu6();
            this.F = qu6Var;
            qu6Var.setArguments(n56.g1(getIntent()));
            qbVar.f(R.id.mdMenu, this.F, "fragment_sub_list", 1);
            ItemListFragment itemListFragment = new ItemListFragment();
            this.G = itemListFragment;
            itemListFragment.setArguments(n56.g1(getIntent()));
            qbVar.f(R.id.mdContent, this.G, "fragment_item_list", 1);
            qbVar.d();
        } else {
            if (this.F == null) {
                this.F = wbVarO.c("fragment_sub_list");
            }
            if (this.G == null) {
                this.G = wbVarO.c("fragment_item_list");
            }
        }
        I(bundle);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.home, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_action);
        if (menuItemFindItem != null) {
            Context applicationContext = getApplicationContext();
            View actionView = menuItemFindItem.getActionView();
            SwitchCompat switchCompat = (SwitchCompat) actionView.findViewById(R.id.switch_unread);
            switchCompat.setChecked(!on6.g(applicationContext).e);
            switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: tp6
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    this.a.Q();
                }
            });
            View viewFindViewById = actionView.findViewById(R.id.sync_button);
            this.D = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this);
                this.D.setOnLongClickListener(this.N);
            }
            View viewFindViewById2 = actionView.findViewById(R.id.sync_cancel_button);
            this.E = viewFindViewById2;
            if (viewFindViewById2 != null) {
                viewFindViewById2.setOnClickListener(this);
            }
            View viewFindViewById3 = actionView.findViewById(R.id.mark_read_button);
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
        this.y.setMenuItem(menu.findItem(R.id.menu_search));
        R();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!this.P.f()) {
            Fragment fragment = this.G;
            if ((fragment instanceof ItemListFragment) && ((ItemListFragment) fragment).o(i)) {
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 84) {
            this.y.c(true);
            return true;
        }
        if (!this.P.f()) {
            Fragment fragment = this.G;
            if ((fragment instanceof ItemListFragment) && ((ItemListFragment) fragment).p(i)) {
                return true;
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (super.onOptionsItemSelected(menuItem) || menuItem.getItemId() != 16908332) {
            return false;
        }
        this.P.l(true);
        return true;
    }

    @Override // com.noinnion.android.greader.ui.home.HomeBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        rn6.getClientName(this);
        lw6.j(this);
    }
}
