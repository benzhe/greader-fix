package defpackage;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
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
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.subscription.ChangeFolderDialog;
import com.noinnion.android.greader.ui.subscription.ManageSourcesActivity;
import com.noinnion.android.greader.ui.subscription.SubEditDialog;
import com.noinnion.android.widget.TouchListView;
import defpackage.sd;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class lu6 extends pc implements sd.a<Cursor>, View.OnClickListener, AdapterView.OnItemLongClickListener {
    public ProgressDialog o;
    public f p;
    public Spinner q;
    public boolean r = true;
    public String s = null;
    public final BroadcastReceiver t = new a();
    public final TouchListView.c u = new c();
    public final TouchListView.d v = new d();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            lu6.this.j();
        }
    }

    public class b implements AdapterView.OnItemSelectedListener {
        public b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            lu6 lu6Var = lu6.this;
            if (lu6Var.r) {
                on6.g(lu6Var.getActivity()).f = i;
                lu6.this.j();
            }
            lu6.this.r = true;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public class c implements TouchListView.c {
        public c() {
        }

        @Override // com.noinnion.android.widget.TouchListView.c
        public void m(int i, int i2) {
            ip6 item = lu6.this.p.getItem(i);
            lu6.this.p.remove(item);
            lu6.this.p.insert(item, i2);
            lu6 lu6Var = lu6.this;
            lu6Var.r = false;
            lu6Var.q.setSelection(0);
            on6.g(lu6.this.getActivity()).f = 0;
        }
    }

    public class d implements TouchListView.d {
        public d() {
        }

        @Override // com.noinnion.android.widget.TouchListView.d
        public void remove(int i) {
            f fVar = lu6.this.p;
            fVar.remove(fVar.getItem(i));
        }
    }

    public class e extends AsyncTask<Void, Void, Void> {
        public e(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (lu6.this.getActivity() == null) {
                return null;
            }
            try {
                ContentResolver contentResolver = lu6.this.getActivity().getContentResolver();
                for (int i = 0; i < lu6.this.p.getCount(); i++) {
                    String[] strArr = {String.valueOf(lu6.this.p.getItem(i).e)};
                    ContentValues contentValues = new ContentValues();
                    String str = lu6.this.s;
                    if (str == null || str.length() <= 0) {
                        contentValues.put("sort2", Integer.valueOf(i));
                    } else {
                        contentValues.put("sort", Integer.valueOf(i));
                    }
                    contentResolver.update(ip6.A, contentValues, "_id = ?", strArr);
                }
                return null;
            } catch (Exception e) {
                n56.X1(lu6.this.getActivity(), e.getLocalizedMessage());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            ProgressDialog progressDialog = lu6.this.o;
            if (progressDialog != null && progressDialog.isShowing()) {
                lu6.this.o.dismiss();
            }
            if (lu6.this.getActivity() == null) {
                return;
            }
            ((ManageSourcesActivity) lu6.this.getActivity()).B();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            lu6 lu6Var = lu6.this;
            lu6Var.o = ProgressDialog.show(lu6Var.getActivity(), null, lu6.this.getText(R.string.msg_saving), true, true);
        }
    }

    public class f extends ArrayAdapter<ip6> {
        public f(List<ip6> list) {
            super(lu6.this.getActivity(), R.layout.manage_list_row, list);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            if (view == null) {
                view = lu6.this.getActivity().getLayoutInflater().inflate(R.layout.manage_list_row, viewGroup, false);
            }
            ip6 item = getItem(i);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            sx6.n().a(imageView);
            String strA = item.a();
            if (TextUtils.isEmpty(strA)) {
                imageView.setImageResource(R.drawable.ic_feed);
            } else {
                sx6.n().f(strA, imageView);
            }
            TextView textView = (TextView) view.findViewById(R.id.title);
            textView.setText(item.h);
            if (lw6.k()) {
                textView.setTextColor(item.q ? -7829368 : -1118482);
            } else {
                textView.setTextColor(item.q ? -7829368 : -12303292);
            }
            View viewFindViewById = view.findViewById(R.id.delete);
            viewFindViewById.setTag(Long.valueOf(item.e));
            viewFindViewById.setOnClickListener(lu6.this);
            view.setTag(Long.valueOf(item.e));
            return view;
        }
    }

    @Override // defpackage.pc
    public void e(ListView listView, View view, int i, long j) {
        ip6 item = this.p.getItem(i);
        if (item == null) {
            return;
        }
        SubEditDialog.d(getFragmentManager(), item.e);
    }

    @Override // sd.a
    public void f(wd<Cursor> wdVar, Cursor cursor) {
        Cursor cursor2 = cursor;
        if (getActivity() == null || cursor2 == null || cursor2.getCount() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            cursor2.moveToFirst();
            do {
                arrayList.add(new ip6(cursor2));
            } while (cursor2.moveToNext());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        f fVar = this.p;
        if (fVar == null) {
            f fVar2 = new f(arrayList);
            this.p = fVar2;
            h(fVar2);
        } else {
            fVar.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.p.add((ip6) it.next());
            }
        }
    }

    @Override // sd.a
    public wd<Cursor> g(int i, Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        Context applicationContext = getActivity().getApplicationContext();
        if (!TextUtils.isEmpty(this.s)) {
            return ep6.x(applicationContext, this.s, false, true);
        }
        StringBuilder sb = new StringBuilder();
        return new vd(applicationContext, ip6.A, null, new String(sb), null, on6.e(applicationContext));
    }

    public void j() {
        if (getActivity() == null) {
            return;
        }
        getLoaderManager().c(1, null, this);
    }

    @Override // sd.a
    public void k(wd<Cursor> wdVar) {
        f fVar = this.p;
        if (fVar != null) {
            fVar.clear();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        d();
        TouchListView touchListView = (TouchListView) this.i;
        touchListView.setOnItemLongClickListener(this);
        touchListView.setDropListener(this.u);
        touchListView.setRemoveListener(this.v);
        j();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int id = view.getId();
        if (id == R.id.cancel) {
            if (getActivity() == null) {
                return;
            }
            if (this.s == null) {
                on6.g(getActivity()).g = -1;
            }
            ((ManageSourcesActivity) getActivity()).B();
            return;
        }
        if (id == R.id.delete) {
            Object tag = view.getTag();
            if (tag == null || getActivity() == null || !(getActivity() instanceof ManageSourcesActivity)) {
                return;
            }
            if (tag instanceof String) {
                ((ManageSourcesActivity) getActivity()).C(String.valueOf(tag));
                return;
            } else {
                if (tag instanceof Long) {
                    ((ManageSourcesActivity) getActivity()).D(((Long) tag).longValue());
                    return;
                }
                return;
            }
        }
        if (id == R.id.save && getActivity() != null) {
            if (this.s != null) {
                on6.g(getActivity()).d(0);
                new e(null).execute(new Void[0]);
                return;
            }
            on6.g(getActivity()).d(this.q.getSelectedItemPosition());
            if (this.q.getSelectedItemPosition() == 0) {
                new e(null).execute(new Void[0]);
            } else {
                ((ManageSourcesActivity) getActivity()).B();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.REFRESH");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED");
        yd.a(getActivity()).b(this.t, intentFilter);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.manage_list_fragment, viewGroup, false);
        viewInflate.findViewById(R.id.save).setOnClickListener(this);
        viewInflate.findViewById(R.id.cancel).setOnClickListener(this);
        this.q = (Spinner) viewInflate.findViewById(R.id.sort_spinner);
        String string = getArguments().getString("tagUid");
        this.s = string;
        if (string == null) {
            ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(getActivity(), R.array.feed_sort_type_labels, R.layout.simple_spinner_item);
            arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            this.q.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
            this.r = false;
            this.q.setSelection(on6.g(getActivity()).b());
            this.q.setOnItemSelectedListener(new b());
            viewInflate.findViewById(R.id.sorting).setVisibility(0);
        } else {
            viewInflate.findViewById(R.id.sorting).setVisibility(8);
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.o = null;
        yd.a(getActivity()).d(this.t);
        super.onDestroy();
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        ip6 item = this.p.getItem(i);
        if (item == null) {
            return false;
        }
        ChangeFolderDialog.d(getFragmentManager(), item.e);
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.r = false;
        this.q.setSelection(on6.g(getActivity()).b());
    }
}
