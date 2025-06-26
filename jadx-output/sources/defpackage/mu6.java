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
import com.noinnion.android.greader.ui.subscription.TagEditDialog;
import com.noinnion.android.widget.TouchListView;
import defpackage.kp6;
import defpackage.sd;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class mu6 extends pc implements sd.a<Cursor>, View.OnClickListener, AdapterView.OnItemLongClickListener {
    public ProgressDialog o;
    public f p;
    public Spinner q;
    public boolean r = true;
    public final BroadcastReceiver s = new a();
    public final TouchListView.c t = new c();
    public final TouchListView.d u = new d();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            mu6.this.j();
        }
    }

    public class b implements AdapterView.OnItemSelectedListener {
        public b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            mu6 mu6Var = mu6.this;
            if (mu6Var.r) {
                on6.g(mu6Var.getActivity()).f = i;
                mu6.this.j();
            }
            mu6.this.r = true;
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
            kp6.a item = mu6.this.p.getItem(i);
            mu6.this.p.remove(item);
            mu6.this.p.insert(item, i2);
            mu6 mu6Var = mu6.this;
            mu6Var.r = false;
            mu6Var.q.setSelection(0);
            on6.g(mu6.this.getActivity()).f = 0;
        }
    }

    public class d implements TouchListView.d {
        public d() {
        }

        @Override // com.noinnion.android.widget.TouchListView.d
        public void remove(int i) {
            f fVar = mu6.this.p;
            fVar.remove(fVar.getItem(i));
        }
    }

    public class e extends AsyncTask<Void, Void, Void> {
        public e(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (mu6.this.getActivity() == null) {
                return null;
            }
            try {
                ContentResolver contentResolver = mu6.this.getActivity().getContentResolver();
                for (int i = 0; i < mu6.this.p.getCount(); i++) {
                    kp6.a item = mu6.this.p.getItem(i);
                    if (item.c < 100) {
                        String[] strArr = {String.valueOf(item.a)};
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("sort", Integer.valueOf(i));
                        contentResolver.update(lp6.n, contentValues, "_id = ?", strArr);
                    } else {
                        String[] strArr2 = {String.valueOf(item.a)};
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("sort", Integer.valueOf(i));
                        contentResolver.update(ip6.A, contentValues2, "_id = ?", strArr2);
                    }
                }
                return null;
            } catch (Exception e) {
                n56.X1(mu6.this.getActivity(), e.getLocalizedMessage());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            ProgressDialog progressDialog = mu6.this.o;
            if (progressDialog != null && progressDialog.isShowing()) {
                mu6.this.o.dismiss();
            }
            if (mu6.this.getActivity() == null) {
                return;
            }
            ((ManageSourcesActivity) mu6.this.getActivity()).B();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            mu6 mu6Var = mu6.this;
            mu6Var.o = ProgressDialog.show(mu6Var.getActivity(), null, mu6.this.getText(R.string.msg_saving), true, true);
        }
    }

    public class f extends ArrayAdapter<kp6.a> {
        public f(List<kp6.a> list) {
            super(mu6.this.getActivity(), R.layout.manage_list_row, list);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            if (mu6.this.getActivity() == null) {
                return null;
            }
            if (view == null) {
                view = mu6.this.getActivity().getLayoutInflater().inflate(R.layout.manage_list_row, viewGroup, false);
            }
            kp6.a item = getItem(i);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            View viewFindViewById = view.findViewById(R.id.delete);
            sx6.n().a(imageView);
            if (item.c < 100) {
                TextView textView = (TextView) view.findViewById(R.id.title);
                textView.setText(item.c(mu6.this.getActivity()).toUpperCase());
                if (lw6.k()) {
                    textView.setTextColor(item.k ? -7829368 : -1);
                } else {
                    textView.setTextColor(item.k ? -7829368 : -12303292);
                }
                viewFindViewById.setVisibility(4);
                int i2 = item.c;
                if (i2 != 1) {
                    switch (i2) {
                        case 9:
                            imageView.setImageResource(R.drawable.ic_tag_search);
                            break;
                        case 10:
                            imageView.setImageResource(R.drawable.ic_tag_label);
                            viewFindViewById.setVisibility(0);
                            break;
                        case 11:
                            imageView.setImageResource(R.drawable.ic_tag_folder);
                            viewFindViewById.setVisibility(0);
                            break;
                    }
                } else {
                    imageView.setImageResource(R.drawable.ic_tag_star);
                }
                viewFindViewById.setTag(item.b);
                view.setTag(item.b);
            } else {
                String strA = item.a();
                if (TextUtils.isEmpty(strA)) {
                    imageView.setImageResource(R.drawable.ic_feed);
                } else {
                    sx6.n().f(strA, imageView);
                }
                TextView textView2 = (TextView) view.findViewById(R.id.title);
                textView2.setText(item.d);
                if (lw6.k()) {
                    textView2.setTextColor(item.k ? -7829368 : -1);
                } else {
                    textView2.setTextColor(item.k ? -7829368 : -12303292);
                }
                viewFindViewById.setVisibility(0);
                viewFindViewById.setTag(Long.valueOf(item.a));
                view.setTag(Long.valueOf(item.a));
            }
            viewFindViewById.setOnClickListener(mu6.this);
            return view;
        }
    }

    @Override // defpackage.pc
    public void e(ListView listView, View view, int i, long j) {
        kp6.a item = this.p.getItem(i);
        int i2 = item.c;
        if (i2 != 11) {
            if (i2 == 9) {
                TagEditDialog.h(getFragmentManager(), item.b);
                return;
            } else {
                if (i2 == 100) {
                    SubEditDialog.d(getFragmentManager(), item.a);
                    return;
                }
                return;
            }
        }
        if (getActivity() instanceof ManageSourcesActivity) {
            ManageSourcesActivity manageSourcesActivity = (ManageSourcesActivity) getActivity();
            String str = item.b;
            manageSourcesActivity.y++;
            lu6 lu6Var = new lu6();
            Bundle bundle = new Bundle();
            bundle.putString("tagUid", str);
            lu6Var.setArguments(bundle);
            xb xbVar = (xb) manageSourcesActivity.o();
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.g(R.id.fragment_container, lu6Var, null);
            qbVar.f = 4097;
            if (!qbVar.i) {
                throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
            }
            qbVar.h = true;
            qbVar.j = null;
            qbVar.c();
        }
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
                arrayList.add(new kp6.a(cursor2));
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
                this.p.add((kp6.a) it.next());
            }
        }
    }

    @Override // sd.a
    public wd<Cursor> g(int i, Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        return ep6.y(getActivity(), false, false, true, true);
    }

    public void j() {
        getLoaderManager().c(0, null, this);
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
        touchListView.setDropListener(this.t);
        touchListView.setRemoveListener(this.u);
        j();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int id = view.getId();
        if (id == R.id.cancel) {
            if (getActivity() == null) {
                return;
            }
            on6.g(getActivity()).g = -1;
            ((ManageSourcesActivity) getActivity()).B();
            return;
        }
        if (id != R.id.delete) {
            if (id == R.id.save && getActivity() != null) {
                on6.g(getActivity().getApplicationContext()).d(this.q.getSelectedItemPosition());
                if (this.q.getSelectedItemPosition() == 0) {
                    new e(null).execute(new Void[0]);
                    return;
                } else {
                    ((ManageSourcesActivity) getActivity()).B();
                    return;
                }
            }
            return;
        }
        Object tag = view.getTag();
        if (tag == null || getActivity() == null || !(getActivity() instanceof ManageSourcesActivity)) {
            return;
        }
        if (tag instanceof String) {
            ((ManageSourcesActivity) getActivity()).C(String.valueOf(tag));
        } else if (tag instanceof Long) {
            ((ManageSourcesActivity) getActivity()).D(((Long) tag).longValue());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.REFRESH");
        intentFilter.addAction("com.noinnion.android.greader.reader.action.UNREAD_MODIFIED");
        yd.a(getActivity()).b(this.s, intentFilter);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.manage_list_fragment, viewGroup, false);
        viewInflate.findViewById(R.id.save).setOnClickListener(this);
        viewInflate.findViewById(R.id.cancel).setOnClickListener(this);
        this.q = (Spinner) viewInflate.findViewById(R.id.sort_spinner);
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(getActivity(), R.array.feed_sort_type_labels, R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.q.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
        this.r = false;
        this.q.setSelection(on6.g(getActivity()).f);
        this.q.setOnItemSelectedListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.o = null;
        yd.a(getActivity()).d(this.s);
        super.onDestroy();
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        kp6.a item = this.p.getItem(i);
        if (item.c == 100) {
            ChangeFolderDialog.d(getFragmentManager(), item.a);
            return false;
        }
        TagEditDialog.h(getFragmentManager(), item.b);
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.r = false;
        this.q.setSelection(on6.g(getActivity().getApplicationContext()).f);
    }
}
