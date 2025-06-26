package com.noinnion.android.greader.ui.item;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.setting.ArticleControlsPreferenceFragment;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.R$layout;
import com.noinnion.android.reader.ui.BaseActivity;
import com.r0adkll.slidr.widget.SliderPanel;
import defpackage.a17;
import defpackage.ap6;
import defpackage.c17;
import defpackage.im7;
import defpackage.mw6;
import defpackage.n56;
import defpackage.on6;
import defpackage.qb;
import defpackage.u;
import defpackage.uq6;
import defpackage.xb;
import defpackage.z07;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class ItemActivity extends BaseActivity implements View.OnClickListener {
    public mw6 A;
    public ItemFragment w;
    public TextView x;
    public TextView y;
    public TextView z;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.j.a();
        overridePendingTransition(R.anim.left_slide_in, R.anim.right_slide_out);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ap6 ap6Var;
        ItemFragment itemFragment;
        im7.e(view, "v");
        int id = view.getId();
        if (id == R.id.cache_view) {
            ItemFragment itemFragment2 = this.w;
            if (itemFragment2 == null || (ap6Var = itemFragment2.i) == null) {
                return;
            }
            itemFragment2.r(itemFragment2.o(), ap6Var);
            itemFragment2.m(2, ap6Var.s, false);
            return;
        }
        if (id != R.id.feed_view) {
            if (id == R.id.web_view && (itemFragment = this.w) != null) {
                itemFragment.s();
                return;
            }
            return;
        }
        ItemFragment itemFragment3 = this.w;
        if (itemFragment3 != null) {
            itemFragment3.u();
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        y(bundle, true, true);
        View viewInflate = getLayoutInflater().inflate(R$layout.item_activity, (ViewGroup) null, false);
        int i = R$id.fragment;
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(i);
        if (frameLayout == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        }
        mw6 mw6Var = new mw6((LinearLayout) viewInflate, frameLayout);
        im7.d(mw6Var, "ItemActivityBinding.inflate(layoutInflater)");
        setContentView(mw6Var.a);
        this.A = mw6Var;
        LinearLayout linearLayout = mw6Var.a;
        int i2 = R$id.toolbar;
        Toolbar toolbar = (Toolbar) linearLayout.findViewById(i2);
        if (toolbar == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(linearLayout.getResources().getResourceName(i2)));
        }
        s().x(toolbar);
        u uVarT = t();
        if (uVarT != null) {
            uVarT.o(true);
            if (on6.g(getApplicationContext()).m) {
                uVarT.f();
            }
        }
        if (bundle == null) {
            ItemFragment itemFragment = new ItemFragment();
            itemFragment.setArguments(n56.g1(getIntent()));
            xb xbVar = (xb) o();
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            im7.d(qbVar, "supportFragmentManager.beginTransaction()");
            qbVar.f(R.id.fragment, itemFragment, "fragment_item", 1);
            qbVar.d();
            this.w = itemFragment;
        } else if (this.w == null) {
            Fragment fragmentC = o().c("fragment_item");
            if (!(fragmentC instanceof ItemFragment)) {
                fragmentC = null;
            }
            this.w = (ItemFragment) fragmentC;
        }
        a17 a17Var = new a17(null);
        a17Var.i = c17.LEFT;
        a17Var.a = 1.0f;
        a17Var.b = -16777216;
        a17Var.c = 0.8f;
        a17Var.d = 0.0f;
        a17Var.e = 2400.0f;
        a17Var.f = 0.18f;
        a17Var.g = true;
        a17Var.h = 0.18f;
        ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
        View childAt = viewGroup.getChildAt(0);
        viewGroup.removeViewAt(0);
        SliderPanel sliderPanel = new SliderPanel(this, childAt, a17Var);
        sliderPanel.setId(com.r0adkll.slidr.R$id.slidable_panel);
        childAt.setId(com.r0adkll.slidr.R$id.slidable_content);
        sliderPanel.addView(childAt);
        viewGroup.addView(sliderPanel, 0);
        sliderPanel.setOnPanelSlideListener(new z07(this, a17Var));
        sliderPanel.getDefaultInterface();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        im7.e(menu, "menu");
        getMenuInflater().inflate(R.menu.item, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_item_info);
        im7.d(menuItemFindItem, NSRSS20.ITEM);
        View actionView = menuItemFindItem.getActionView();
        TextView textView = (TextView) actionView.findViewById(R.id.cache_view);
        this.z = textView;
        if (textView != null) {
            textView.setOnClickListener(this);
        }
        TextView textView2 = (TextView) actionView.findViewById(R.id.web_view);
        this.y = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(this);
        }
        TextView textView3 = (TextView) actionView.findViewById(R.id.feed_view);
        this.x = textView3;
        if (textView3 == null) {
            return true;
        }
        textView3.setOnClickListener(this);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        im7.e(keyEvent, "event");
        ItemFragment itemFragment = this.w;
        return (itemFragment != null && itemFragment.z(i)) || super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        im7.e(keyEvent, "event");
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        n56.b1(this);
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        im7.e(keyEvent, "event");
        ItemFragment itemFragment = this.w;
        return (itemFragment != null && itemFragment.A(i)) || super.onKeyUp(i, keyEvent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        ap6 ap6Var;
        im7.e(menuItem, NSRSS20.ITEM);
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                onBackPressed();
                break;
            case R.id.menu_controls /* 2131296707 */:
                ItemFragment itemFragment = this.w;
                if (itemFragment != null) {
                    ArticleControlsPreferenceFragment.j(itemFragment.getActivity(), new uq6(itemFragment));
                    break;
                }
                break;
            case R.id.menu_download /* 2131296708 */:
                ItemFragment itemFragment2 = this.w;
                if (itemFragment2 != null) {
                    itemFragment2.C();
                    break;
                }
                break;
            case R.id.menu_fonts /* 2131296711 */:
                ItemFragment itemFragment3 = this.w;
                if (itemFragment3 != null) {
                    itemFragment3.E();
                    break;
                }
                break;
            case R.id.menu_image_fit /* 2131296716 */:
                ItemFragment itemFragment4 = this.w;
                if (itemFragment4 != null) {
                    itemFragment4.F();
                    break;
                }
                break;
            case R.id.menu_inverse_page /* 2131296717 */:
                ItemFragment itemFragment5 = this.w;
                if (itemFragment5 != null) {
                    itemFragment5.G();
                }
                menuItem.setChecked(!menuItem.isChecked());
                break;
            case R.id.menu_load_images /* 2131296720 */:
                ItemFragment itemFragment6 = this.w;
                if (itemFragment6 != null) {
                    itemFragment6.I();
                }
                menuItem.setChecked(!menuItem.isChecked());
                break;
            case R.id.menu_tag /* 2131296726 */:
                ItemFragment itemFragment7 = this.w;
                if (itemFragment7 != null && (ap6Var = itemFragment7.i) != null) {
                    EditTagDialog.d(itemFragment7.getFragmentManager(), ap6Var.e);
                    break;
                }
                break;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onPrepareOptionsMenu(android.view.Menu r6) {
        /*
            r5 = this;
            java.lang.String r0 = "menu"
            defpackage.im7.e(r6, r0)
            r0 = 2131296708(0x7f0901c4, float:1.821134E38)
            android.view.MenuItem r0 = r6.findItem(r0)
            com.noinnion.android.greader.ui.item.ItemFragment r1 = r5.w
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L23
            ap6 r1 = r1.i
            if (r1 == 0) goto L1c
            boolean r1 = r1.s
            if (r1 != r3) goto L1c
            r1 = 1
            goto L1d
        L1c:
            r1 = 0
        L1d:
            if (r1 != r3) goto L23
            r1 = 2131820984(0x7f1101b8, float:1.9274698E38)
            goto L26
        L23:
            r1 = 2131820974(0x7f1101ae, float:1.9274678E38)
        L26:
            r0.setTitle(r1)
            r0 = 2131296716(0x7f0901cc, float:1.8211357E38)
            android.view.MenuItem r0 = r6.findItem(r0)
            com.noinnion.android.greader.ui.item.ItemFragment r1 = r5.w
            if (r1 == 0) goto L3c
            boolean r1 = r1.q()
            if (r1 != r3) goto L3c
            r1 = 1
            goto L3d
        L3c:
            r1 = 0
        L3d:
            if (r1 == 0) goto L43
            r1 = 2131820949(0x7f110195, float:1.9274627E38)
            goto L46
        L43:
            r1 = 2131820950(0x7f110196, float:1.927463E38)
        L46:
            r0.setTitle(r1)
            r0 = 2131296717(0x7f0901cd, float:1.8211359E38)
            android.view.MenuItem r0 = r6.findItem(r0)
            java.lang.String r1 = "item"
            defpackage.im7.d(r0, r1)
            android.content.Context r4 = r5.getApplicationContext()
            kw6 r4 = defpackage.on6.h(r4)
            boolean r4 = r4.b
            r0.setChecked(r4)
            r0 = 2131296720(0x7f0901d0, float:1.8211365E38)
            android.view.MenuItem r6 = r6.findItem(r0)
            com.noinnion.android.greader.ui.item.ItemFragment r0 = r5.w
            if (r0 == 0) goto L72
            boolean r0 = r0.D
            if (r0 != r3) goto L72
            r2 = 1
        L72:
            defpackage.im7.d(r6, r1)
            r6.setChecked(r2)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.item.ItemActivity.onPrepareOptionsMenu(android.view.Menu):boolean");
    }
}
