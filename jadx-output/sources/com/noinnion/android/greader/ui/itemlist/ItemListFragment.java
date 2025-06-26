package com.noinnion.android.greader.ui.itemlist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.HeaderViewRecyclerAdapter;
import android.support.v7.widget.LayoutManagerHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.HomeActivity;
import com.noinnion.android.greader.ui.home.HomeBaseActivity;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;
import com.noinnion.android.greader.ui.item.EditTagDialog;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment.j;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment.k;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment.l;
import defpackage.ap6;
import defpackage.bn6;
import defpackage.dr6;
import defpackage.er6;
import defpackage.ew6;
import defpackage.fr6;
import defpackage.gr6;
import defpackage.hr6;
import defpackage.hw6;
import defpackage.hy6;
import defpackage.hz6;
import defpackage.ip6;
import defpackage.iw6;
import defpackage.jw6;
import defpackage.kz6;
import defpackage.lp6;
import defpackage.lw6;
import defpackage.n56;
import defpackage.nr6;
import defpackage.on6;
import defpackage.ro;
import defpackage.t07;
import defpackage.uw6;
import defpackage.vw6;
import defpackage.wq6;
import defpackage.yd;
import defpackage.yo6;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public class ItemListFragment extends Fragment implements View.OnClickListener, SwipeRefreshLayout.j {
    public er6 e;
    public HeaderViewRecyclerAdapter f;
    public RecyclerView.m g;
    public hr6 q;

    @BindView(R.id.v_empty_message)
    public TextView vEmptyMessage;

    @BindView(R.id.v_empty_swipe_layout)
    public SwipeRefreshLayout vEmptySwipeLayout;

    @BindView(R.id.v_list_swipe_layout)
    public SwipeRefreshLayout vListSwipeLayout;

    @BindView(R.id.v_progress_bar)
    public ProgressBar vProgressBar;

    @BindView(R.id.v_recycler_view)
    public RecyclerView vRecyclerView;
    public int h = -1;
    public boolean i = false;
    public boolean j = false;
    public int k = 0;
    public boolean l = true;
    public boolean m = true;
    public boolean n = false;
    public long o = -1;
    public long p = -1;
    public BroadcastReceiver r = new a();
    public boolean s = false;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED")) {
                ItemListFragment.this.r(false, false);
                return;
            }
            if (intent.getAction().equals("com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST")) {
                ItemListFragment itemListFragment = ItemListFragment.this;
                itemListFragment.s = true;
                itemListFragment.r(false, false);
                return;
            }
            if (!intent.getAction().equals("com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST_POSITION") || ItemListFragment.this.vRecyclerView == null) {
                return;
            }
            int intExtra = intent.getIntExtra("cursorPosition", -1);
            if (intExtra <= -1 || intExtra >= ItemListFragment.this.e.getCount()) {
                ItemListFragment.this.h = intExtra;
            } else {
                LayoutManagerHelper.scrollToPosition(ItemListFragment.this.g, intExtra);
                er6 er6Var = ItemListFragment.this.e;
                er6Var.o = er6Var.getItemId(intExtra);
                er6Var.notifyDataSetChanged();
                ItemListFragment.this.j = false;
            }
            long longExtra = intent.getLongExtra("itemId", 0L);
            if (longExtra > 0) {
                er6 er6Var2 = ItemListFragment.this.e;
                er6Var2.o = longExtra;
                er6Var2.notifyDataSetChanged();
            }
        }
    }

    public class b extends GridLayoutManager.c {
        public final /* synthetic */ int c;

        public b(int i) {
            this.c = i;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int c(int i) {
            return 6 / Math.max(ItemListFragment.this.vRecyclerView.getMeasuredWidth() / this.c, 1);
        }
    }

    public class c implements bn6 {
        public c(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof nr6) {
                nr6 nr6Var = (nr6) obj;
                Intent intent = new Intent("com.noinnion.android.greader.reader.action.ITEM_VIEW");
                intent.putExtra("itemId", nr6Var.e);
                intent.putExtra("cursorPosition", nr6Var.getAdapterPosition());
                ((HomeBaseActivity) ItemListFragment.this.getActivity()).J(intent);
                ItemListFragment.this.e.o = nr6Var.e;
            }
        }
    }

    public class d implements bn6 {
        public d(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) throws Resources.NotFoundException {
            if (obj instanceof View) {
                View view = (View) obj;
                hw6 hw6VarG = on6.g(ItemListFragment.this.getActivity());
                ItemListFragment.this.d(((Long) view.getTag()).longValue(), hw6VarG.q, view);
            }
        }
    }

    public class e implements bn6 {
        public e(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof Integer) {
                ItemListFragment.this.e(new ap6(ItemListFragment.this.e.getItem(((Integer) obj).intValue())), on6.g(ItemListFragment.this.getActivity()).s);
            }
        }
    }

    public class f implements bn6 {
        public f(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof Cursor) {
                Cursor cursor = (Cursor) obj;
                ItemListFragment.this.m = false;
                int count = cursor.getCount();
                if (ItemListFragment.this.n) {
                    cursor.moveToFirst();
                    long j = count == 0 ? 0L : cursor.getLong(cursor.getColumnIndex("_id"));
                    ItemListFragment itemListFragment = ItemListFragment.this;
                    if (j != itemListFragment.o || count != itemListFragment.p) {
                        on6.c = true;
                    }
                    itemListFragment.o = j;
                    itemListFragment.p = count;
                }
                if (count <= 0 || count < (on6.a.h + 1) * 50) {
                    ItemListFragment.this.e.m.set(false);
                } else {
                    ItemListFragment.this.e.m.set(true);
                }
                ItemListFragment.this.e.changeCursor(cursor);
                ItemListFragment.this.vProgressBar.setVisibility(8);
                if (count == 0) {
                    if (on6.a.f) {
                        ItemListFragment itemListFragment2 = ItemListFragment.this;
                        itemListFragment2.vEmptyMessage.setText(itemListFragment2.getText(R.string.msg_no_item_unread));
                    } else {
                        ItemListFragment itemListFragment3 = ItemListFragment.this;
                        itemListFragment3.vEmptyMessage.setText(itemListFragment3.getText(R.string.msg_no_item));
                    }
                }
                ItemListFragment itemListFragment4 = ItemListFragment.this;
                if (itemListFragment4.s) {
                    LayoutManagerHelper.scrollToPosition(itemListFragment4.g, 0);
                    ItemListFragment.this.s = false;
                    return;
                }
                int i = itemListFragment4.h;
                if (i > -1) {
                    LayoutManagerHelper.scrollToPosition(itemListFragment4.g, i);
                    ItemListFragment.this.h = -1;
                }
            }
        }
    }

    public class g implements bn6 {
        public g(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            final ap6 ap6VarL;
            if (obj instanceof nr6) {
                nr6 nr6Var = (nr6) obj;
                final ItemListFragment itemListFragment = ItemListFragment.this;
                if (itemListFragment.getActivity() == null) {
                    return;
                }
                final Context applicationContext = itemListFragment.getActivity().getApplicationContext();
                final long j = nr6Var.e;
                if (j == 0 || (ap6VarL = ap6.l(applicationContext, j, true)) == null) {
                    return;
                }
                ro.c cVar = new ro.c(itemListFragment.getActivity());
                cVar.d = ap6VarL.h;
                if (ap6VarL.v) {
                    cVar.c(5, itemListFragment.getText(R.string.menu_mark_unread));
                } else {
                    cVar.c(4, itemListFragment.getText(R.string.menu_mark_read));
                }
                cVar.c(6, itemListFragment.getText(R.string.menu_mark_read_until));
                if (ap6VarL.u) {
                    cVar.c(3, itemListFragment.getText(R.string.menu_remove_keep_unread));
                } else {
                    cVar.c(3, itemListFragment.getText(R.string.menu_keep_unread));
                }
                cVar.c(1, itemListFragment.getText(R.string.txt_share));
                if (ap6VarL.s) {
                    cVar.c(15, itemListFragment.getText(R.string.menu_unsave_page));
                } else {
                    cVar.c(13, itemListFragment.getText(R.string.menu_save_page));
                }
                if (on6.a.d) {
                    cVar.c(16, itemListFragment.getText(R.string.menu_unsave_pages_until));
                } else {
                    cVar.c(14, itemListFragment.getText(R.string.menu_save_pages_until));
                }
                if (ap6VarL.b()) {
                    cVar.c(17, itemListFragment.getText(R.string.download_podcast));
                }
                if (ap6VarL.r) {
                    cVar.c(11, itemListFragment.getText(R.string.menu_remove_star));
                } else {
                    cVar.c(11, itemListFragment.getText(R.string.menu_add_star));
                }
                cVar.c(12, itemListFragment.getText(R.string.menu_tag));
                cVar.f = new DialogInterface.OnClickListener() { // from class: yq6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        ItemListFragment itemListFragment2 = itemListFragment;
                        ap6 ap6Var = ap6VarL;
                        long j2 = j;
                        Context context = applicationContext;
                        Objects.requireNonNull(itemListFragment2);
                        if (i == 1) {
                            n56.O1(itemListFragment2.getActivity(), ap6Var, true);
                        }
                        if (i == 3) {
                            itemListFragment2.u(ap6Var);
                            return;
                        }
                        if (i == 4) {
                            itemListFragment2.m(new long[]{j2}, null, new long[]{ap6Var.g});
                            return;
                        }
                        if (i == 5) {
                            itemListFragment2.m(null, new long[]{j2}, new long[]{ap6Var.g});
                            return;
                        }
                        if (i == 6) {
                            itemListFragment2.new j(null).execute(Long.valueOf(j2));
                            return;
                        }
                        switch (i) {
                            case 11:
                                itemListFragment2.t(ap6Var);
                                break;
                            case 12:
                                EditTagDialog.d(itemListFragment2.getFragmentManager(), j2);
                                break;
                            case 13:
                                n56.L1(context, String.valueOf(j2));
                                break;
                            case 14:
                                itemListFragment2.new k(null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j2));
                                break;
                            case 15:
                                itemListFragment2.v(ap6.l(itemListFragment2.getActivity(), j2, false));
                                itemListFragment2.r(false, false);
                                break;
                            case 16:
                                itemListFragment2.new l(null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j2));
                                break;
                            case 17:
                                FragmentActivity activity = itemListFragment2.getActivity();
                                if (activity != null) {
                                    n56.U1(activity, ap6.l(activity, j2, false));
                                    break;
                                }
                                break;
                        }
                    }
                };
                cVar.d();
            }
        }
    }

    public class h implements bn6 {
        public h(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) throws Resources.NotFoundException {
            if (obj instanceof View) {
                View view = (View) obj;
                hw6 hw6VarG = on6.g(ItemListFragment.this.getActivity());
                ItemListFragment.this.d(((Long) view.getTag()).longValue(), hw6VarG.r, view);
            }
        }
    }

    public class i implements bn6 {
        public i(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof Integer) {
                ItemListFragment.this.e(new ap6(ItemListFragment.this.e.getItem(((Integer) obj).intValue())), on6.g(ItemListFragment.this.getActivity()).t);
            }
        }
    }

    public class j extends AsyncTask<Long, Void, Void> {
        public j(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Long[] lArr) throws Throwable {
            long j;
            Long[] lArr2 = lArr;
            ItemListFragment itemListFragment = ItemListFragment.this;
            Cursor cursor = itemListFragment.e.f;
            try {
                ew6 ew6Var = on6.a;
                ew6Var.g = -1L;
                if (ew6Var.f) {
                    itemListFragment.s = true;
                }
                int i = 0;
                long jLongValue = lArr2[0].longValue();
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                if (cursor.moveToFirst()) {
                    int columnIndex = cursor.getColumnIndex("_id");
                    int columnIndex2 = cursor.getColumnIndex("read");
                    int columnIndex3 = cursor.getColumnIndex("keep_unread");
                    int columnIndex4 = cursor.getColumnIndex("sub_id");
                    do {
                        j = cursor.getLong(columnIndex);
                        if (cursor.getInt(columnIndex2) == 0 && cursor.getInt(columnIndex3) == 0) {
                            arrayList.add(Long.valueOf(j));
                            hashSet.add(Long.valueOf(cursor.getLong(columnIndex4)));
                            i++;
                        }
                        if (!cursor.moveToNext()) {
                            break;
                        }
                    } while (j != jLongValue);
                }
                if (arrayList.size() > 0) {
                    try {
                        if (ItemListFragment.this.getActivity() != null) {
                            on6.i(ItemListFragment.this.getActivity().getApplicationContext()).A(n56.A(arrayList), null, n56.B(hashSet), true, false);
                        }
                    } catch (Exception unused) {
                    }
                }
                ew6 ew6Var2 = on6.a;
                ip6 ip6Var = ew6Var2.a;
                if (ip6Var != null) {
                    ip6Var.m -= i;
                    return null;
                }
                lp6 lp6Var = ew6Var2.b;
                if (lp6Var == null) {
                    return null;
                }
                lp6Var.j -= i;
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            if (ItemListFragment.this.getActivity() == null) {
                return;
            }
            ItemListFragment.this.r(false, false);
        }
    }

    public class k extends AsyncTask<Long, Void, String> {
        public k(a aVar) {
        }

        @Override // android.os.AsyncTask
        public String doInBackground(Long[] lArr) {
            StringBuilder sb;
            long j;
            Long[] lArr2 = lArr;
            if (ItemListFragment.this.getActivity() == null) {
                return null;
            }
            Cursor cursor = ItemListFragment.this.e.f;
            try {
                long jLongValue = lArr2[0].longValue();
                if (cursor.moveToFirst()) {
                    int columnIndex = cursor.getColumnIndex("_id");
                    sb = null;
                    do {
                        j = cursor.getLong(columnIndex);
                        if (sb == null) {
                            sb = new StringBuilder(String.valueOf(j));
                        } else {
                            sb.append("&");
                            sb.append(j);
                        }
                        if (!cursor.moveToNext()) {
                            break;
                        }
                    } while (j != jLongValue);
                } else {
                    sb = null;
                }
                if (sb == null) {
                    return null;
                }
                return sb.toString();
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            String str2 = str;
            if (str2 == null || str2.length() == 0 || ItemListFragment.this.getActivity() == null) {
                return;
            }
            n56.L1(ItemListFragment.this.getActivity(), str2);
        }
    }

    public class l extends AsyncTask<Long, Void, Void> {
        public l(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Long[] lArr) {
            long j;
            Long[] lArr2 = lArr;
            if (ItemListFragment.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = ItemListFragment.this.getActivity().getApplicationContext();
            Cursor cursor = ItemListFragment.this.e.f;
            try {
                long jLongValue = lArr2[0].longValue();
                if (!cursor.moveToFirst()) {
                    return null;
                }
                int columnIndex = cursor.getColumnIndex("_id");
                int columnIndex2 = cursor.getColumnIndex("uid");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                do {
                    j = cursor.getLong(columnIndex);
                    arrayList.add(Long.valueOf(j));
                    arrayList2.add(cursor.getString(columnIndex2));
                    if (!cursor.moveToNext()) {
                        break;
                    }
                } while (j != jLongValue);
                if (arrayList.size() <= 0) {
                    return null;
                }
                on6.i(applicationContext).i(n56.A(arrayList), 0);
                String strC = iw6.C(applicationContext);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    File file = new File(n56.E0(strC, (String) it.next()));
                    if (file.exists()) {
                        hy6.c(file);
                    }
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
    public void c() {
        if (getActivity() == null) {
            return;
        }
        yo6.h(getActivity(), false);
        new Handler().postDelayed(new Runnable() { // from class: xq6
            @Override // java.lang.Runnable
            public final void run() {
                ItemListFragment itemListFragment = this.e;
                itemListFragment.vListSwipeLayout.setRefreshing(false);
                itemListFragment.vEmptySwipeLayout.setRefreshing(false);
            }
        }, 2500L);
    }

    public void d(long j2, int i2, View view) throws Resources.NotFoundException {
        ap6 ap6VarL;
        if (getActivity() == null || (ap6VarL = ap6.l(getActivity().getApplicationContext(), j2, true)) == null) {
            return;
        }
        switch (i2) {
            case 1:
                if (view.isSelected()) {
                    m(null, new long[]{ap6VarL.e}, new long[]{ap6VarL.g});
                } else {
                    m(new long[]{ap6VarL.e}, null, new long[]{ap6VarL.g});
                }
                view.setSelected(!view.isSelected());
                break;
            case 2:
                if (view.isSelected()) {
                    long j3 = ap6VarL.e;
                    m(new long[]{j3}, new long[]{j3}, new long[]{ap6VarL.g});
                } else {
                    j(new long[]{ap6VarL.e}, new long[]{ap6VarL.g});
                }
                view.setSelected(!view.isSelected());
                break;
            case 3:
                t(ap6VarL);
                view.setSelected(!view.isSelected());
                break;
            case 4:
                s(ap6VarL);
                break;
            case 5:
                jw6.b(getActivity(), ap6VarL.k, iw6.Q(getActivity()));
                if (!ap6VarL.v) {
                    m(new long[]{ap6VarL.e}, null, new long[]{ap6VarL.g});
                    break;
                }
                break;
            case 6:
                n56.Q1(getActivity(), ap6VarL.h, ap6VarL.k);
                break;
            case 7:
                n56.R1(getActivity(), ap6VarL.h + " - " + ap6VarL.k);
                break;
            case 10:
                vw6.e(getFragmentManager(), "7fnd4H0ZTH078G9880A5166Da2g3T143", ap6VarL.h, ap6VarL.k, "gReader", new vw6.c() { // from class: ar6
                    @Override // vw6.c
                    public final void a(int i3, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                        ItemListFragment itemListFragment = this.a;
                        if (itemListFragment.getActivity() == null) {
                            return;
                        }
                        Context applicationContext = itemListFragment.getActivity().getApplicationContext();
                        if (str != null) {
                            n56.X1(applicationContext, str);
                        }
                        if (i3 == 401) {
                            iw6.Y(applicationContext);
                        }
                    }
                });
                break;
            case 11:
                uw6.e(getFragmentManager(), ap6VarL.h, ap6VarL.k, "gReader", new uw6.c() { // from class: zq6
                    @Override // uw6.c
                    public final void a(int i3, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                        ItemListFragment itemListFragment = this.a;
                        if (itemListFragment.getActivity() == null) {
                            return;
                        }
                        Context applicationContext = itemListFragment.getActivity().getApplicationContext();
                        if (str != null) {
                            n56.X1(applicationContext, str);
                        }
                        if (i3 == 401) {
                            iw6.W(applicationContext);
                        }
                    }
                });
                break;
            case 12:
                if (getActivity() != null) {
                    n56.V1(getActivity(), ap6VarL.e, iw6.J(getActivity().getApplicationContext()) == 2 ? (!ap6VarL.s || ap6VarL.t < 3) ? ap6VarL.k : "cache://" : null, ap6VarL.h);
                    break;
                }
                break;
            case 14:
                n56.O1(getActivity(), ap6VarL, true);
                break;
        }
    }

    public void e(ap6 ap6Var, int i2) {
        if (getActivity() == null || i2 == 0) {
            return;
        }
        if (i2 == 1) {
            long[] jArr = {ap6Var.e};
            long j2 = ap6Var.g;
            long[] jArr2 = j2 > 0 ? new long[]{j2} : null;
            if (ap6Var.v) {
                m(null, jArr, jArr2);
                return;
            } else {
                m(jArr, null, jArr2);
                return;
            }
        }
        if (i2 == 2) {
            u(ap6Var);
        } else if (i2 == 3) {
            t(ap6Var);
        } else {
            if (i2 != 4) {
                return;
            }
            s(ap6Var);
        }
    }

    public void h(boolean z) {
        this.s = z;
        this.j = false;
        this.k = 0;
        this.h = -1;
        er6 er6Var = this.e;
        if (er6Var != null) {
            er6Var.b();
        }
        kz6 kz6Var = hz6.j().b;
        if (!kz6Var.a.d) {
            ((ExecutorService) kz6Var.b).shutdownNow();
        }
        if (!kz6Var.a.e) {
            ((ExecutorService) kz6Var.c).shutdownNow();
        }
        kz6Var.e.clear();
        kz6Var.f.clear();
        if (getActivity() != null) {
            on6.i(getActivity().getApplicationContext()).O();
        }
    }

    public final void i(int i2) {
        if (getActivity() == null) {
            return;
        }
        Context applicationContext = getActivity().getApplicationContext();
        if (i2 == 1) {
            int dimensionPixelSize = applicationContext.getResources().getDimensionPixelSize(R.dimen.item_grid_span_size);
            GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), 6);
            this.g = gridLayoutManager;
            gridLayoutManager.M = new b(dimensionPixelSize);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.item_card_spacing);
            this.vRecyclerView.setPadding(dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2);
        } else if (i2 == 2) {
            this.g = new StaggeredGridLayoutManager(applicationContext.getResources().getInteger(R.integer.item_card_span_count), 1);
            int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.item_card_spacing);
            this.vRecyclerView.setPadding(dimensionPixelSize3, dimensionPixelSize3, dimensionPixelSize3, dimensionPixelSize3);
        } else {
            this.g = new LinearLayoutManager(getActivity());
            this.vRecyclerView.setPadding(0, 0, 0, 0);
        }
        this.vRecyclerView.setLayoutManager(this.g);
    }

    public void j(long[] jArr, long[] jArr2) {
        if (getActivity() == null) {
            return;
        }
        on6.i(getActivity().getApplicationContext()).B(null, jArr, jArr2, true, true);
    }

    public final void l(int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i4 = 0; i4 < i3; i4++) {
            Cursor item = this.e.getItem(i2 + i4);
            if (item != null) {
                int columnIndex = item.getColumnIndex("_id");
                int columnIndex2 = item.getColumnIndex("read");
                int columnIndex3 = item.getColumnIndex("keep_unread");
                int columnIndex4 = item.getColumnIndex("sub_id");
                if (item.getInt(columnIndex2) == 0 && item.getInt(columnIndex3) == 0) {
                    arrayList.add(Long.valueOf(item.getLong(columnIndex)));
                    hashSet.add(Long.valueOf(item.getLong(columnIndex4)));
                }
            }
        }
        if (arrayList.size() > 0) {
            long[] jArrA = n56.A(arrayList);
            long[] jArrB = n56.B(hashSet);
            if (getActivity() == null) {
                return;
            }
            on6.i(getActivity().getApplicationContext()).B(jArrA, null, jArrB, true, false);
        }
    }

    public void m(long[] jArr, long[] jArr2, long[] jArr3) {
        if (getActivity() == null) {
            return;
        }
        on6.i(getActivity().getApplicationContext()).B(jArr, jArr2, jArr3, false, false);
    }

    public void n(boolean z) {
        if (getActivity() != null && (this.g instanceof StaggeredGridLayoutManager)) {
            ((StaggeredGridLayoutManager) this.g).B1(z ? 1 : getActivity().getApplicationContext().getResources().getInteger(R.integer.item_card_span_count));
        }
    }

    public boolean o(int i2) {
        if (getActivity() == null) {
            return false;
        }
        return (i2 == 24 || i2 == 25) && on6.g(getActivity().getApplicationContext()).p > 0;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        er6 er6Var = new er6(getActivity().getApplicationContext(), null);
        this.e = er6Var;
        er6Var.setHasStableIds(true);
        this.e.registerAdapterDataObserver(new fr6(this));
        t07.b bVar = new t07.b(getActivity());
        bVar.e = false;
        bVar.b = R.layout.item_peek_view;
        bVar.c = this.vRecyclerView;
        t07 t07Var = new t07(bVar);
        er6 er6Var2 = this.e;
        er6Var2.q = t07Var;
        t07Var.m = new dr6(er6Var2, t07Var);
        er6Var2.s = new c(null);
        er6Var2.t = new g(null);
        er6Var2.u = new d(null);
        er6Var2.v = new h(null);
        er6Var2.r.a("EVENT_ITEM_LEFT_SWIPE_ACTION", new e(null));
        er6 er6Var3 = this.e;
        i iVar = new i(null);
        Objects.requireNonNull(er6Var3);
        er6Var3.r.a("EVENT_ITEM_RIGHT_SWIPE_ACTION", iVar);
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R.layout.item_list_footer, (ViewGroup) null);
        viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, 200));
        viewInflate.setOnClickListener(this);
        HeaderViewRecyclerAdapter headerViewRecyclerAdapter = new HeaderViewRecyclerAdapter(this.e);
        this.f = headerViewRecyclerAdapter;
        headerViewRecyclerAdapter.addFooterView(viewInflate);
        this.vRecyclerView.setAdapter(this.f);
        if (bundle == null) {
            on6.a.g = System.currentTimeMillis();
        } else if (bundle.containsKey("cursorPosition")) {
            this.h = bundle.getInt("cursorPosition", 0);
        }
        if (this.i) {
            this.vRecyclerView.setOnTouchListener(new wq6(this));
        } else {
            this.vRecyclerView.setOnTouchListener(null);
        }
        this.vRecyclerView.h(new gr6(this));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        if (getActivity() == null) {
            return;
        }
        Context applicationContext = getActivity().getApplicationContext();
        int id = view.getId();
        if (id != R.id.footer) {
            if (id == R.id.left_action || id == R.id.right_action) {
                hw6 hw6VarG = on6.g(applicationContext);
                d(((Long) view.getTag()).longValue(), view.getId() == R.id.left_action ? hw6VarG.q : hw6VarG.r, view);
                return;
            }
            return;
        }
        if (getActivity() instanceof HomeActivity) {
            ((HomeActivity) getActivity()).G();
        } else if (getActivity() instanceof HomeTabletActivity) {
            ((HomeTabletActivity) getActivity()).G();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context applicationContext = getActivity().getApplicationContext();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST_POSITION");
        yd.a(getActivity()).b(this.r, intentFilter);
        this.n = lw6.n(applicationContext, iw6.a0(applicationContext));
        this.i = iw6.f(applicationContext, "item_list_mark_read_on_scroll", false);
        this.q = new hr6(applicationContext);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws NoSuchMethodException, SecurityException {
        View viewInflate = layoutInflater.inflate(R.layout.item_list_fragment, viewGroup, false);
        ButterKnife.bind(this, viewInflate);
        Context applicationContext = getActivity().getApplicationContext();
        this.vRecyclerView.setHasFixedSize(true);
        i(on6.g(applicationContext).c);
        jw6.d(this.vListSwipeLayout);
        this.vListSwipeLayout.setOnRefreshListener(this);
        jw6.d(this.vEmptySwipeLayout);
        this.vEmptySwipeLayout.setOnRefreshListener(this);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        yd.a(getActivity()).d(this.r);
        this.r = null;
        if (getActivity() != null) {
            on6.i(getActivity().getApplicationContext()).O();
        }
        this.e.changeCursor(null);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.l = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.l = true;
        if (this.m) {
            r(false, false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("cursorPosition", LayoutManagerHelper.getFirstVisiblePosition(this.g));
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        hr6 hr6Var = this.q;
        hr6Var.b.b("DEFAULT_FINISHED_EVENT", new f(null));
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.q.b();
    }

    public boolean p(int i2) {
        if (getActivity() == null) {
            return false;
        }
        Context applicationContext = getActivity().getApplicationContext();
        if (i2 == 24) {
            int i3 = on6.g(applicationContext).p;
            if (i3 == 1 || i3 == 2) {
                int firstVisiblePosition = LayoutManagerHelper.getFirstVisiblePosition(this.g);
                int lastVisiblePosition = firstVisiblePosition - (LayoutManagerHelper.getLastVisiblePosition(this.g) - firstVisiblePosition);
                this.vRecyclerView.m0(lastVisiblePosition >= 0 ? lastVisiblePosition : 0);
                return true;
            }
        } else if (i2 == 25) {
            int i4 = on6.g(applicationContext).p;
            if (i4 == 1) {
                q(false);
                return true;
            }
            if (i4 == 2) {
                q(true);
                return true;
            }
        }
        return false;
    }

    public void q(boolean z) {
        int lastVisiblePosition = LayoutManagerHelper.getLastVisiblePosition(this.g);
        if (z) {
            int firstVisiblePosition = LayoutManagerHelper.getFirstVisiblePosition(this.g);
            int i2 = lastVisiblePosition - firstVisiblePosition;
            if (lastVisiblePosition + 1 >= this.e.getCount()) {
                i2++;
            }
            l(firstVisiblePosition, i2);
        }
        View childAt = this.vRecyclerView.getChildAt(r7.getChildCount() - 1);
        if (this.e.getCount() <= 0 || childAt == null) {
            HomeActivity.T(getActivity());
            return;
        }
        this.vRecyclerView.k0(0, (int) childAt.getY());
        View view = null;
        if (childAt.getTag() == null) {
            View childAt2 = this.vRecyclerView.getChildAt((r0.getChildCount() - 1) - this.f.getFooterCount());
            view = childAt;
            childAt = childAt2;
        }
        if (((nr6) childAt.getTag()).e != this.e.getItemId(r7.getCount() - 1) || view == null || view.getBottom() > this.vRecyclerView.getMeasuredHeight()) {
            return;
        }
        HomeActivity.T(getActivity());
    }

    public void r(boolean z, boolean z2) {
        if (getActivity() == null) {
            return;
        }
        if (this.l || z) {
            this.q.a();
            this.q.e(on6.a);
        } else {
            this.m = true;
        }
        this.e.p = z2;
    }

    public final void s(ap6 ap6Var) {
        if (ap6Var.s) {
            v(ap6Var);
        } else {
            n56.L1(getActivity(), String.valueOf(ap6Var.e));
        }
    }

    public final void t(ap6 ap6Var) {
        if (getActivity() == null || ap6Var == null) {
            return;
        }
        Context applicationContext = getActivity().getApplicationContext();
        on6.i(applicationContext).j(ap6Var, !ap6Var.r);
        if (ap6Var.r || ap6Var.s || !on6.g(applicationContext).u) {
            return;
        }
        n56.L1(getActivity(), String.valueOf(ap6Var.e));
    }

    public final void u(ap6 ap6Var) {
        if (ap6Var != null) {
            long[] jArr = {ap6Var.e};
            long j2 = ap6Var.g;
            long[] jArr2 = j2 > 0 ? new long[]{j2} : null;
            if (ap6Var.u) {
                m(jArr, jArr, jArr2);
            } else {
                j(jArr, jArr2);
            }
        }
    }

    public final void v(ap6 ap6Var) {
        if (getActivity() == null || ap6Var == null || !ap6Var.s) {
            return;
        }
        Context applicationContext = getActivity().getApplicationContext();
        try {
            File file = new File(n56.E0(iw6.C(applicationContext), ap6Var.f));
            if (file.exists()) {
                hy6.c(file);
            }
            on6.i(applicationContext).h(ap6Var.e, 0);
        } catch (Exception e2) {
            n56.X1(getActivity(), e2.getLocalizedMessage());
        }
    }
}
