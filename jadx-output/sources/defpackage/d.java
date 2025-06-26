package defpackage;

import android.content.Context;
import android.widget.CompoundButton;
import androidx.fragment.app.Fragment;
import com.noinnion.android.greader.ui.home.HomeBaseActivity;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment;

/* compiled from: java-style lambda group */
/* loaded from: classes.dex */
public final class d implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public d(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i = this.a;
        if (i == 0) {
            HomeBaseActivity homeBaseActivity = (HomeBaseActivity) this.b;
            int i2 = HomeBaseActivity.O;
            hw6 hw6VarG = on6.g(homeBaseActivity.getApplicationContext());
            hw6VarG.h = z;
            iw6.S(hw6VarG.a, "item_group_by_feed", z);
            HomeBaseActivity.L(homeBaseActivity, true, false, 2, null);
            return;
        }
        if (i == 1) {
            HomeBaseActivity homeBaseActivity2 = (HomeBaseActivity) this.b;
            int i3 = HomeBaseActivity.O;
            Context applicationContext = homeBaseActivity2.getApplicationContext();
            on6.g(applicationContext).d = z;
            iw6.S(applicationContext, "rich_article_list", z);
            Fragment fragment = homeBaseActivity2.G;
            ItemListFragment itemListFragment = (ItemListFragment) (fragment instanceof ItemListFragment ? fragment : null);
            if (itemListFragment != null) {
                itemListFragment.r(false, true);
                return;
            }
            return;
        }
        if (i != 2) {
            throw null;
        }
        HomeBaseActivity homeBaseActivity3 = (HomeBaseActivity) this.b;
        int i4 = HomeBaseActivity.O;
        iw6.S(homeBaseActivity3.getApplicationContext(), "item_list_mark_read_on_scroll", z);
        Fragment fragment2 = homeBaseActivity3.G;
        if (!(fragment2 instanceof ItemListFragment)) {
            fragment2 = null;
        }
        ItemListFragment itemListFragment2 = (ItemListFragment) fragment2;
        if (itemListFragment2 != null) {
            itemListFragment2.i = z;
            itemListFragment2.h(false);
            if (z) {
                itemListFragment2.vRecyclerView.setOnTouchListener(new wq6(itemListFragment2));
            } else {
                itemListFragment2.vRecyclerView.setOnTouchListener(null);
            }
        }
    }
}
