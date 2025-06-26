package defpackage;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.ResourceCursorTreeAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.download.DownloadActivity;
import com.noinnion.android.greader.ui.home.HomeActivity;
import com.noinnion.android.greader.ui.home.HomeBaseActivity;
import com.noinnion.android.greader.ui.subscription.ChangeFolderDialog;
import com.noinnion.android.greader.ui.subscription.ManageSourcesActivity;
import com.noinnion.android.greader.ui.subscription.SubEditDialog;
import com.noinnion.android.greader.ui.subscription.SubscribeActivity;
import com.noinnion.android.greader.ui.subscription.TagEditDialog;
import defpackage.gz6;
import defpackage.kp6;
import defpackage.ro;
import defpackage.sd;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import qu6.b;
import qu6.c;
import qu6.d;
import qu6.g;

/* loaded from: classes2.dex */
public class qu6 extends Fragment implements sd.a<Cursor>, View.OnClickListener, AdapterView.OnItemClickListener, ExpandableListView.OnChildClickListener, ExpandableListView.OnGroupClickListener, AdapterView.OnItemLongClickListener {
    public static final /* synthetic */ int x = 0;
    public ProgressDialog e;
    public ExpandableListView f;
    public f g;
    public View h;
    public SwipeRefreshLayout i;
    public TextView j;
    public int k = -1;
    public int l = -1;
    public long m = 0;
    public String n = "";
    public boolean o = true;
    public boolean p = true;
    public boolean q = false;
    public boolean r = false;
    public int s = 0;
    public int t = 0;
    public final BroadcastReceiver u = new a();
    public View v;
    public HashSet<Integer> w;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            qu6.this.i(false);
        }
    }

    public class b extends AsyncTask<String, Void, Void> {
        public b(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            if (qu6.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = qu6.this.getActivity().getApplicationContext();
            try {
                on6.i(applicationContext).g(lp6.b(applicationContext, strArr2[0], false));
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            qu6.this.i(false);
            ProgressDialog progressDialog = qu6.this.e;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            qu6.this.e.dismiss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (qu6.this.getActivity() == null) {
                return;
            }
            qu6 qu6Var = qu6.this;
            qu6Var.e = ProgressDialog.show(qu6Var.getActivity(), null, qu6.this.getText(R.string.msg_confirm_delete), true, true);
        }
    }

    public class c extends AsyncTask<Long, Void, Void> {
        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Long[] lArr) {
            Context applicationContext;
            ip6 ip6VarB;
            Long[] lArr2 = lArr;
            if (qu6.this.getActivity() == null || (ip6VarB = ip6.b((applicationContext = qu6.this.getActivity().getApplicationContext()), "_id", String.valueOf(lArr2[0].longValue()), false)) == null) {
                return null;
            }
            on6.i(applicationContext).Q(ip6VarB, System.currentTimeMillis(), true);
            return null;
        }
    }

    public class d extends AsyncTask<String, Void, Void> {
        public d(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(String[] strArr) {
            Context applicationContext;
            lp6 lp6VarA;
            String[] strArr2 = strArr;
            if (qu6.this.getActivity() == null || (lp6VarA = lp6.a((applicationContext = qu6.this.getActivity().getApplicationContext()), "uid", strArr2[0], false)) == null) {
                return null;
            }
            on6.i(applicationContext).R(lp6VarA, System.currentTimeMillis(), true);
            return null;
        }
    }

    public class e {
        public Object a = null;
        public ImageView b;
        public TextView c;
        public TextView d;
        public TextView e;

        public e(qu6 qu6Var, View view) {
            this.b = (ImageView) view.findViewById(R.id.icon);
            this.c = (TextView) view.findViewById(R.id.title);
            this.d = (TextView) view.findViewById(R.id.last_updated);
            this.e = (TextView) view.findViewById(R.id.unread);
            view.setTag(this);
        }
    }

    public class f extends ResourceCursorTreeAdapter {
        public kp6.a e;
        public ip6 f;

        public f(Context context, Cursor cursor, a aVar) {
            super(context, null, R.layout.tag_list_group_row, R.layout.tag_list_child_row);
            this.e = null;
            this.f = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.widget.CursorTreeAdapter
        public void bindChildView(View view, Context context, Cursor cursor, boolean z) throws Resources.NotFoundException {
            ip6 ip6Var = this.f;
            if (ip6Var == null) {
                this.f = new ip6(cursor);
            } else {
                ip6Var.g(cursor);
            }
            e eVar = (e) view.getTag();
            eVar.a = Long.valueOf(this.f.e);
            sx6 sx6VarN = sx6.n();
            sx6VarN.a(eVar.b);
            String strA = this.f.a();
            if (TextUtils.isEmpty(strA)) {
                eVar.b.setImageResource(R.drawable.ic_feed);
            } else {
                sx6VarN.e(on6.b);
                ImageView imageView = eVar.b;
                gz6.b bVar = new gz6.b();
                bVar.c = R.drawable.ic_feed_default;
                bVar.a = R.drawable.ic_feed_default;
                bVar.b = R.drawable.ic_feed_default;
                bVar.g = true;
                bVar.h = true;
                bVar.i = true;
                sx6VarN.g(strA, imageView, bVar.b());
            }
            eVar.c.setText(this.f.h);
            TextView textView = eVar.c;
            textView.setPaintFlags(this.f.p ? textView.getPaintFlags() | 16 : textView.getPaintFlags() & (-17));
            TextView textView2 = eVar.d;
            long j = this.f.n;
            textView2.setText(j > 0 ? n56.y0(context, j * 1000) : "");
            int i = this.f.m;
            if (i > 0) {
                eVar.e.setText(Integer.toString(i));
                eVar.e.setVisibility(0);
            } else {
                eVar.e.setVisibility(8);
            }
            ((fx6) view).setChecked(qu6.this.m == this.f.e);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.widget.CursorTreeAdapter
        public void bindGroupView(View view, Context context, Cursor cursor, boolean z) throws Resources.NotFoundException {
            kp6.a aVar = this.e;
            if (aVar == null) {
                this.e = new kp6.a(cursor);
            } else {
                aVar.b(cursor);
            }
            e eVar = (e) view.getTag();
            eVar.b.setOnClickListener(null);
            eVar.b.setClickable(false);
            sx6 sx6VarN = sx6.n();
            sx6VarN.a(eVar.b);
            kp6.a aVar2 = this.e;
            if (aVar2.c < 100) {
                eVar.a = aVar2.b;
                eVar.c.setText(aVar2.c(context).toUpperCase());
                eVar.d.setVisibility(8);
                int i = this.e.g;
                if (i > 0) {
                    eVar.e.setText(Integer.toString(i));
                    eVar.e.setVisibility(0);
                } else {
                    eVar.e.setVisibility(8);
                }
                TextView textView = eVar.c;
                textView.setPaintFlags(textView.getPaintFlags() & (-17));
                int i2 = this.e.c;
                if (i2 != 1) {
                    switch (i2) {
                        case 9:
                            eVar.b.setImageResource(R.drawable.ic_tag_search);
                            break;
                        case 10:
                            eVar.b.setImageResource(R.drawable.ic_tag_label);
                            break;
                        case 11:
                            eVar.b.setImageResource(z ? R.drawable.ic_arrow_down_default : R.drawable.ic_arrow_right_default);
                            eVar.b.setTag(Integer.valueOf(cursor.getPosition()));
                            eVar.b.setOnClickListener(qu6.this);
                            if (this.e.j) {
                                TextView textView2 = eVar.c;
                                textView2.setPaintFlags(textView2.getPaintFlags() | 16);
                                break;
                            }
                            break;
                    }
                } else {
                    eVar.b.setImageResource(R.drawable.ic_tag_star);
                }
                ((fx6) view).setChecked(qu6.this.n.equals(this.e.b));
                return;
            }
            eVar.a = Long.valueOf(aVar2.a);
            String strA = this.e.a();
            if (TextUtils.isEmpty(strA)) {
                eVar.b.setImageResource(R.drawable.ic_feed);
            } else {
                sx6VarN.e(on6.b);
                ImageView imageView = eVar.b;
                gz6.b bVar = new gz6.b();
                bVar.c = R.drawable.ic_feed_default;
                bVar.a = R.drawable.ic_feed_default;
                bVar.b = R.drawable.ic_feed_default;
                bVar.g = true;
                bVar.h = true;
                bVar.i = true;
                sx6VarN.g(strA, imageView, bVar.b());
            }
            eVar.c.setText(this.e.d);
            TextView textView3 = eVar.c;
            textView3.setPaintFlags(this.e.j ? textView3.getPaintFlags() | 16 : textView3.getPaintFlags() & (-17));
            eVar.d.setVisibility(0);
            TextView textView4 = eVar.d;
            long j = this.e.h;
            textView4.setText(j > 0 ? n56.y0(context, j * 1000) : "");
            int i3 = this.e.g;
            if (i3 > 0) {
                eVar.e.setText(Integer.toString(i3));
                eVar.e.setVisibility(0);
            } else {
                eVar.e.setVisibility(8);
            }
            ((fx6) view).setChecked(qu6.this.m == this.e.a);
        }

        @Override // android.widget.CursorTreeAdapter
        public Cursor getChildrenCursor(Cursor cursor) {
            if (qu6.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = qu6.this.getActivity().getApplicationContext();
            kp6.a aVar = new kp6.a(cursor);
            if (aVar.c == 11) {
                return ep6.x(applicationContext, aVar.b, on6.g(applicationContext).e, false).k();
            }
            return null;
        }

        @Override // android.widget.ResourceCursorTreeAdapter, android.widget.CursorTreeAdapter
        public View newChildView(Context context, Cursor cursor, boolean z, ViewGroup viewGroup) {
            View viewNewChildView = super.newChildView(context, cursor, z, viewGroup);
            viewNewChildView.setTag(new e(qu6.this, viewNewChildView));
            return viewNewChildView;
        }

        @Override // android.widget.ResourceCursorTreeAdapter, android.widget.CursorTreeAdapter
        public View newGroupView(Context context, Cursor cursor, boolean z, ViewGroup viewGroup) {
            View viewNewGroupView = super.newGroupView(context, cursor, z, viewGroup);
            viewNewGroupView.setTag(new e(qu6.this, viewNewGroupView));
            return viewNewGroupView;
        }
    }

    public class g extends AsyncTask<Long, Void, Void> {
        public g(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Long[] lArr) {
            Long[] lArr2 = lArr;
            if (qu6.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = qu6.this.getActivity().getApplicationContext();
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
        public void onPostExecute(Void r2) {
            if (qu6.this.getActivity() == null) {
                return;
            }
            n56.H1(qu6.this.getActivity(), true);
            ProgressDialog progressDialog = qu6.this.e;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            qu6.this.e.dismiss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (qu6.this.getActivity() == null) {
                return;
            }
            qu6 qu6Var = qu6.this;
            qu6Var.e = ProgressDialog.show(qu6Var.getActivity(), null, qu6.this.getText(R.string.msg_unsubscribe_feed_running), true, true);
            yo6.i(qu6.this.getActivity());
        }
    }

    public final void d(int i) {
        if (this.w == null) {
            this.w = new HashSet<>();
        }
        if (this.w.contains(Integer.valueOf(i))) {
            return;
        }
        this.w.add(Integer.valueOf(i));
    }

    public View e(Object obj) {
        int i = 0;
        while (true) {
            Object obj2 = null;
            if (i >= this.f.getChildCount()) {
                return null;
            }
            View childAt = this.f.getChildAt(i);
            Object tag = childAt.getTag();
            if (tag != null && (tag instanceof e)) {
                obj2 = ((e) tag).a;
            }
            if (obj2 != null && obj2.equals(obj)) {
                return childAt;
            }
            i++;
        }
    }

    @Override // sd.a
    public void f(wd<Cursor> wdVar, Cursor cursor) {
        int positionForView;
        Cursor cursor2 = cursor;
        if (getActivity() == null || cursor2 == null) {
            return;
        }
        Context applicationContext = getActivity().getApplicationContext();
        this.p = false;
        if (on6.i) {
            View viewE = null;
            long j = this.m;
            if (j > 0) {
                viewE = e(Long.valueOf(j));
            } else if (this.n.length() > 0) {
                viewE = e(this.n);
                this.f.collapseGroup(this.k);
            }
            if (viewE == null || this.f.getCount() <= (positionForView = this.f.getPositionForView(viewE) + 1)) {
                HomeActivity.T(getActivity());
            } else {
                Cursor cursor3 = (Cursor) this.f.getItemAtPosition(positionForView);
                if (cursor3.getColumnIndex(NSRSS20.ENC_TYPE) > -1) {
                    kp6.a aVar = new kp6.a(cursor3);
                    if (aVar.c < 100) {
                        lp6 lp6Var = new lp6(aVar);
                        this.m = 0L;
                        this.n = lp6Var.f;
                        on6.a.b();
                        on6.a.b = lp6Var;
                    } else {
                        ip6 ip6Var = new ip6(aVar);
                        this.m = aVar.a;
                        this.n = "";
                        on6.a.b();
                        on6.a.a = ip6Var;
                    }
                } else {
                    ip6 ip6Var2 = new ip6(cursor3);
                    this.m = ip6Var2.e;
                    this.n = "";
                    on6.a.b();
                    on6.a.a = ip6Var2;
                }
                yd.a(getActivity()).c(new Intent("com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST"));
                this.f.setItemChecked(positionForView, true);
            }
            on6.i = false;
        }
        this.g.changeCursor(cursor2);
        this.j.setText(String.valueOf(iw6.K(applicationContext)));
        if (this.q) {
            try {
                try {
                    HashSet<Integer> hashSet = this.w;
                    if (hashSet != null && hashSet.size() > 0) {
                        this.r = true;
                        Iterator<Integer> it = this.w.iterator();
                        while (it.hasNext()) {
                            this.f.expandGroup(it.next().intValue());
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                this.r = false;
                this.f.setSelectionFromTop(this.s, this.t);
                this.q = false;
            } catch (Throwable th) {
                this.r = false;
                throw th;
            }
        }
    }

    @Override // sd.a
    public wd<Cursor> g(int i, Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        Context applicationContext = getActivity().getApplicationContext();
        hw6 hw6VarG = on6.g(applicationContext);
        return ep6.y(applicationContext, hw6VarG.e, hw6VarG.b, false, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h(View view, int i, int i2) {
        try {
            int i3 = this.k;
            if (i3 == -2) {
                ((fx6) this.v).setChecked(false);
            } else {
                int i4 = this.l;
                if (i4 > -1) {
                    ExpandableListView expandableListView = this.f;
                    expandableListView.setItemChecked(expandableListView.getFlatListPosition(ExpandableListView.getPackedPositionForChild(i3, i4)), false);
                } else if (i3 > -1) {
                    ExpandableListView expandableListView2 = this.f;
                    expandableListView2.setItemChecked(expandableListView2.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(i3)), false);
                } else {
                    this.f.setItemChecked(-1, false);
                }
            }
        } catch (Exception unused) {
        }
        this.k = i;
        this.l = i2;
        ((fx6) view).setChecked(true);
        this.g.notifyDataSetChanged();
    }

    public void i(boolean z) {
        if (getActivity() == null) {
            return;
        }
        if (this.o || z) {
            getLoaderManager().c(2, null, this);
        } else {
            this.p = true;
        }
    }

    public final void j() {
        if (this.h.getVisibility() == 0) {
            View view = this.h;
            my6 my6Var = new my6(view, view.getMeasuredHeight());
            my6Var.setDuration((int) (r1 / view.getContext().getResources().getDisplayMetrics().density));
            view.startAnimation(my6Var);
            return;
        }
        View view2 = this.h;
        view2.measure(-1, -2);
        int measuredHeight = view2.getMeasuredHeight();
        view2.getLayoutParams().height = 0;
        view2.setVisibility(0);
        ly6 ly6Var = new ly6(view2, measuredHeight);
        ly6Var.setDuration((int) (measuredHeight / view2.getContext().getResources().getDisplayMetrics().density));
        view2.startAnimation(ly6Var);
    }

    @Override // sd.a
    public void k(wd<Cursor> wdVar) {
        this.g.changeCursor(null);
    }

    public void l() {
        ew6 ew6Var = on6.a;
        ip6 ip6Var = ew6Var.a;
        this.m = ip6Var == null ? 0L : ip6Var.e;
        lp6 lp6Var = ew6Var.b;
        this.n = lp6Var == null ? "" : lp6Var.f;
        i(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        LayoutInflater layoutInflater;
        super.onActivityCreated(bundle);
        boolean z = false;
        if (bundle != null) {
            this.k = bundle.getInt("checkedGroupPosition", -1);
            this.l = bundle.getInt("checkedChildPosition", -1);
            int[] intArray = bundle.getIntArray("expandedGroups");
            if (intArray != null && intArray.length > 0) {
                for (int i : intArray) {
                    d(i);
                }
            }
            this.s = bundle.getInt("scrollIndex", 0);
            this.t = bundle.getInt("scrollTop", 0);
            this.q = bundle.getBoolean("savedInstance", false);
        }
        ew6 ew6Var = on6.a;
        ip6 ip6Var = ew6Var.a;
        long j = ip6Var == null ? 0L : ip6Var.e;
        this.m = j;
        lp6 lp6Var = ew6Var.b;
        String str = lp6Var == null ? "" : lp6Var.f;
        this.n = str;
        if (j == 0 && str.equals("")) {
            this.k = -2;
        }
        if (getActivity() != null && (layoutInflater = (LayoutInflater) getActivity().getSystemService("layout_inflater")) != null) {
            View viewInflate = layoutInflater.inflate(R.layout.tag_list_group_row, (ViewGroup) null);
            this.v = viewInflate;
            viewInflate.findViewById(R.id.last_updated).setVisibility(8);
            ((TextView) this.v.findViewById(R.id.title)).setText(getString(R.string.label_all).toUpperCase());
            ((ImageView) this.v.findViewById(R.id.icon)).setImageResource(R.drawable.ic_tag_all);
            TextView textView = (TextView) this.v.findViewById(R.id.unread);
            this.j = textView;
            textView.setText(String.valueOf(iw6.K(getActivity())));
            this.f.addHeaderView(this.v);
            fx6 fx6Var = (fx6) this.v;
            if (this.m == 0 && this.n.equals("")) {
                z = true;
            }
            fx6Var.setChecked(z);
        }
        f fVar = new f(getActivity(), null, null);
        this.g = fVar;
        this.f.setAdapter(fVar);
        this.f.setChoiceMode(1);
        this.f.setOnItemClickListener(this);
        this.f.setOnChildClickListener(this);
        this.f.setOnGroupClickListener(this);
        this.f.setOnItemLongClickListener(this);
    }

    @Override // android.widget.ExpandableListView.OnChildClickListener
    public boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
        Object tag = view.getTag();
        Object obj = (tag == null || !(tag instanceof e)) ? null : ((e) tag).a;
        if (obj != null && (obj instanceof Long)) {
            this.m = ((Long) obj).longValue();
            this.n = "";
            n56.g2(getActivity(), new ip6(this.g.getChild(i, i2)));
        }
        h(view, i, i2);
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.icon /* 2131296579 */:
                int iIntValue = ((Integer) view.getTag()).intValue();
                if (!this.f.isGroupExpanded(iIntValue)) {
                    d(iIntValue);
                    this.f.expandGroup(iIntValue);
                    break;
                } else {
                    this.w.remove(Integer.valueOf(iIntValue));
                    this.f.collapseGroup(iIntValue);
                    break;
                }
            case R.id.manage_subscription_view /* 2131296660 */:
                j();
                break;
            case R.id.row_downloads /* 2131296888 */:
                Intent intent = new Intent(getActivity(), (Class<?>) DownloadActivity.class);
                intent.setFlags(268435456);
                startActivity(intent);
                j();
                break;
            case R.id.row_manage_sources /* 2131296890 */:
                startActivity(new Intent(getActivity(), (Class<?>) ManageSourcesActivity.class));
                j();
                break;
            case R.id.row_podcast /* 2131296891 */:
                FragmentActivity activity = getActivity();
                on6.a.a();
                on6.a.e = true;
                Intent intent2 = new Intent("com.noinnion.android.greader.reader.action.ITEM_LIST");
                intent2.putExtra("podcastItems", true);
                ((HomeBaseActivity) activity).J(intent2);
                l();
                j();
                break;
            case R.id.row_saved_items /* 2131296892 */:
                FragmentActivity activity2 = getActivity();
                on6.a.a();
                on6.a.d = true;
                Intent intent3 = new Intent("com.noinnion.android.greader.reader.action.ITEM_LIST");
                intent3.putExtra("cachedItems", true);
                ((HomeBaseActivity) activity2).J(intent3);
                l();
                j();
                break;
            case R.id.row_starred /* 2131296893 */:
                FragmentActivity activity3 = getActivity();
                lp6 lp6VarA = lp6.a(activity3, NSRSS20.ENC_TYPE, String.valueOf(1), false);
                if (lp6VarA == null) {
                    n56.X1(activity3, activity3.getText(R.string.tag_not_found));
                } else {
                    n56.h2(activity3, lp6VarA);
                }
                l();
                j();
                break;
            case R.id.subscribe_button /* 2131296985 */:
                startActivity(new Intent(getActivity(), (Class<?>) SubscribeActivity.class));
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.REFRESH_SUB_LIST");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED");
        yd.a(getActivity()).b(this.u, intentFilter);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.subscription_fragment, viewGroup, false);
        ExpandableListView expandableListView = (ExpandableListView) viewInflate.findViewById(R.id.expandable_list);
        this.f = expandableListView;
        expandableListView.setGroupIndicator(null);
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) viewInflate.findViewById(R.id.swipe_layout);
        this.i = swipeRefreshLayout;
        jw6.d(swipeRefreshLayout);
        this.i.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: eu6
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void c() {
                qu6 qu6Var = this.e;
                if (qu6Var.getActivity() == null) {
                    return;
                }
                yo6.f(qu6Var.getActivity(), false);
            }
        });
        viewInflate.findViewById(R.id.manage_subscription_view).setOnClickListener(this);
        viewInflate.findViewById(R.id.subscribe_button).setOnClickListener(this);
        viewInflate.findViewById(R.id.row_manage_sources).setOnClickListener(this);
        viewInflate.findViewById(R.id.row_downloads).setOnClickListener(this);
        viewInflate.findViewById(R.id.row_podcast).setOnClickListener(this);
        viewInflate.findViewById(R.id.row_saved_items).setOnClickListener(this);
        viewInflate.findViewById(R.id.row_starred).setOnClickListener(this);
        SwitchCompat switchCompat = (SwitchCompat) viewInflate.findViewById(R.id.feed_only);
        switchCompat.setChecked(on6.g(getActivity()).b);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cu6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                qu6 qu6Var = this.a;
                if (qu6Var.getActivity() == null) {
                    return;
                }
                hw6 hw6VarG = on6.g(qu6Var.getActivity());
                hw6VarG.b = z;
                iw6.S(hw6VarG.a, "feed_only", z);
                qu6Var.i(false);
                qu6Var.j();
            }
        });
        this.h = viewInflate.findViewById(R.id.manage_list);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.e = null;
        yd.a(getActivity()).d(this.u);
        super.onDestroy();
    }

    @Override // android.widget.ExpandableListView.OnGroupClickListener
    public boolean onGroupClick(ExpandableListView expandableListView, View view, int i, long j) {
        if (this.r) {
            this.w.remove(Integer.valueOf(i));
            return true;
        }
        kp6.a aVar = new kp6.a(this.g.getGroup(i));
        if (aVar.c < 100) {
            lp6 lp6Var = new lp6(aVar);
            this.m = 0L;
            this.n = lp6Var.f;
            n56.h2(getActivity(), lp6Var);
        } else {
            ip6 ip6Var = new ip6(aVar);
            this.m = ip6Var.e;
            this.n = "";
            n56.g2(getActivity(), ip6Var);
        }
        h(view, i, -1);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == 0) {
            this.m = 0L;
            this.n = "";
            FragmentActivity activity = getActivity();
            on6.a.a();
            ((HomeBaseActivity) activity).J(new Intent("com.noinnion.android.greader.reader.action.ITEM_LIST"));
        }
        h(view, -2, -1);
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        String string;
        if (getActivity() != null) {
            Context applicationContext = getActivity().getApplicationContext();
            e eVar = (e) view.getTag();
            final Object obj = eVar == null ? null : eVar.a;
            ro.c cVar = new ro.c(getActivity());
            if (obj instanceof Long) {
                ip6 ip6VarC = ip6.c(applicationContext, ((Long) obj).longValue(), true);
                string = ip6VarC != null ? ip6VarC.h : null;
                cVar.c(44, getText(R.string.menu_open_in_browser));
                cVar.c(21, getText(R.string.menu_preference));
                cVar.c(22, getText(R.string.menu_create_shortcut));
                cVar.c(1, getText(R.string.txt_share));
                cVar.c(23, getText(R.string.folder_change));
                cVar.c(24, getText(R.string.sub_unsubscribe));
                cVar.c(4, getText(R.string.menu_mark_read));
            } else if (obj instanceof String) {
                cVar.c(21, getText(R.string.menu_preference));
                cVar.c(22, getText(R.string.menu_create_shortcut));
                lp6 lp6VarB = lp6.b(applicationContext, String.valueOf(obj), true);
                string = lp6VarB != null ? lp6VarB.i : null;
                if (lp6VarB != null && !lp6VarB.e()) {
                    cVar.c(25, getText(R.string.txt_delete));
                }
                if (lp6VarB != null && lp6VarB.g != 9) {
                    cVar.c(4, getText(R.string.menu_mark_read));
                }
            } else {
                string = getString(R.string.label_all);
                cVar.c(21, getText(R.string.menu_preference));
                cVar.c(22, getText(R.string.menu_create_shortcut));
            }
            if (getActivity() != null) {
                hw6 hw6VarG = on6.g(getActivity());
                if (hw6VarG.o == -1) {
                    hw6VarG.o = iw6.J(hw6VarG.a);
                }
                if (hw6VarG.o > 0) {
                    cVar.c(26, getText(R.string.menu_read));
                }
            }
            cVar.d = string;
            cVar.f = new DialogInterface.OnClickListener() { // from class: du6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    Context applicationContext2;
                    lp6 lp6VarB2;
                    ip6 ip6VarC2;
                    ip6 ip6VarC3;
                    final qu6 qu6Var = this.e;
                    Object obj2 = obj;
                    Objects.requireNonNull(qu6Var);
                    if (!(obj2 instanceof Long)) {
                        if (!(obj2 instanceof String)) {
                            if (i2 == 21) {
                                TagEditDialog.h(qu6Var.getFragmentManager(), null);
                            } else if (i2 == 22) {
                                n56.N(qu6Var.getActivity(), 0L, null);
                                return;
                            } else {
                                if (i2 != 26) {
                                    return;
                                }
                                n56.F1(qu6Var.getActivity(), null);
                                return;
                            }
                        }
                        if (i2 == 4) {
                            qu6Var.new d(null).execute(String.valueOf(obj2));
                            return;
                        }
                        if (i2 == 21) {
                            TagEditDialog.h(qu6Var.getFragmentManager(), String.valueOf(obj2));
                            return;
                        }
                        if (i2 == 22) {
                            n56.N(qu6Var.getActivity(), 0L, String.valueOf(obj2));
                            return;
                        }
                        if (i2 != 25) {
                            if (i2 != 26) {
                                return;
                            }
                            n56.F1(qu6Var.getActivity(), String.valueOf(obj2));
                            return;
                        }
                        final String strValueOf = String.valueOf(obj2);
                        if (qu6Var.getActivity() == null || (lp6VarB2 = lp6.b((applicationContext2 = qu6Var.getActivity().getApplicationContext()), strValueOf, false)) == null) {
                            return;
                        }
                        t75 t75Var = new t75(qu6Var.getActivity());
                        t75Var.a.e = lp6VarB2.h(applicationContext2);
                        t75Var.g(R.string.msg_confirm_delete);
                        t75Var.k(qu6Var.getText(android.R.string.ok), new DialogInterface.OnClickListener() { // from class: bu6
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface2, int i3) {
                                qu6 qu6Var2 = qu6Var;
                                String str = strValueOf;
                                Objects.requireNonNull(qu6Var2);
                                qu6Var2.new b(null).execute(str);
                            }
                        });
                        t75Var.i(qu6Var.getText(android.R.string.cancel), new DialogInterface.OnClickListener() { // from class: gu6
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface2, int i3) {
                                int i4 = qu6.x;
                            }
                        });
                        t75Var.e();
                        return;
                    }
                    if (i2 == 1) {
                        ip6 ip6VarC4 = ip6.c(qu6Var.getActivity(), ((Long) obj2).longValue(), false);
                        if (ip6VarC4 != null) {
                            n56.P1(qu6Var.getActivity(), ip6VarC4.h, ip6VarC4.f.replaceFirst(RssReaderClient.USER_FEED, ""));
                            return;
                        }
                        return;
                    }
                    if (i2 == 4) {
                        qu6Var.new c(null).execute(Long.valueOf(((Long) obj2).longValue()));
                        return;
                    }
                    if (i2 == 26) {
                        FragmentActivity activity = qu6Var.getActivity();
                        long jLongValue = ((Long) obj2).longValue();
                        if (activity == null || (ip6VarC2 = ip6.c(activity, jLongValue, true)) == null) {
                            return;
                        }
                        n56.F1(activity, ip6VarC2.f);
                        return;
                    }
                    if (i2 == 44) {
                        ip6 ip6VarC5 = ip6.c(qu6Var.getActivity(), ((Long) obj2).longValue(), false);
                        if (ip6VarC5 != null) {
                            jw6.a(qu6Var.getActivity(), ip6VarC5.j);
                            return;
                        }
                        return;
                    }
                    switch (i2) {
                        case 21:
                            SubEditDialog.d(qu6Var.getFragmentManager(), ((Long) obj2).longValue());
                            break;
                        case 22:
                            n56.N(qu6Var.getActivity(), ((Long) obj2).longValue(), null);
                            break;
                        case 23:
                            ChangeFolderDialog.d(qu6Var.getFragmentManager(), ((Long) obj2).longValue());
                            break;
                        case 24:
                            final long jLongValue2 = ((Long) obj2).longValue();
                            if (qu6Var.getActivity() != null && (ip6VarC3 = ip6.c(qu6Var.getActivity(), jLongValue2, false)) != null) {
                                String str = ip6VarC3.h;
                                t75 t75Var2 = new t75(qu6Var.getActivity());
                                t75Var2.a.e = str;
                                t75Var2.g(R.string.msg_confirm_unsubscribe);
                                t75Var2.k(qu6Var.getText(android.R.string.ok), new DialogInterface.OnClickListener() { // from class: au6
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface2, int i3) {
                                        qu6 qu6Var2 = qu6Var;
                                        long j2 = jLongValue2;
                                        Objects.requireNonNull(qu6Var2);
                                        qu6Var2.new g(null).execute(Long.valueOf(j2));
                                    }
                                });
                                t75Var2.i(qu6Var.getText(android.R.string.cancel), new DialogInterface.OnClickListener() { // from class: fu6
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface2, int i3) {
                                        int i4 = qu6.x;
                                    }
                                });
                                t75Var2.e();
                                break;
                            }
                            break;
                    }
                }
            };
            cVar.d();
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.o = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.o = true;
        if (this.p) {
            i(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("checkedGroupPosition", this.k);
        bundle.putInt("checkedChildPosition", this.l);
        HashSet<Integer> hashSet = this.w;
        if (hashSet != null && hashSet.size() > 0) {
            int[] iArr = new int[this.w.size()];
            Iterator<Integer> it = this.w.iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = it.next().intValue();
                i++;
            }
            bundle.putIntArray("expandedGroups", iArr);
        }
        this.s = this.f.getFirstVisiblePosition();
        View childAt = this.f.getChildAt(0);
        this.t = childAt != null ? childAt.getTop() : 0;
        bundle.putInt("scrollIndex", this.s);
        bundle.putInt("scrollTop", this.t);
        bundle.putBoolean("savedInstance", true);
        super.onSaveInstanceState(bundle);
    }
}
