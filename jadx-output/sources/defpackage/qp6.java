package defpackage;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.noinnion.android.greader.reader.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class qp6 extends pc implements View.OnClickListener {
    public c o;
    public TextView q;
    public ProgressDialog r;
    public List<b> p = new ArrayList();
    public TextWatcher s = new a();

    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            c cVar = qp6.this.o;
            if (cVar == null) {
                return;
            }
            cVar.getFilter().filter(charSequence);
        }
    }

    public static class b {
        public File a;
        public Context b;

        public b(Context context, File file) {
            this.b = context;
            this.a = file;
        }

        public String a() {
            return this.a.getName();
        }
    }

    public class c extends ArrayAdapter<b> {
        public List<b> e;
        public List<b> f;
        public Filter g;

        public class a extends Filter {
            public a(a aVar) {
            }

            @Override // android.widget.Filter
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                String lowerCase = charSequence.toString().toLowerCase();
                Filter.FilterResults filterResults = new Filter.FilterResults();
                if (lowerCase.toString().length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    synchronized (this) {
                        arrayList2.addAll(c.this.e);
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        b bVar = (b) it.next();
                        if (bVar.a().toLowerCase().startsWith(lowerCase.toString())) {
                            arrayList.add(bVar);
                        }
                    }
                    filterResults.count = arrayList.size();
                    filterResults.values = arrayList;
                } else {
                    synchronized (this) {
                        List<b> list = c.this.e;
                        filterResults.values = list;
                        filterResults.count = list.size();
                    }
                }
                return filterResults;
            }

            @Override // android.widget.Filter
            public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                c cVar = c.this;
                cVar.f = (List) filterResults.values;
                cVar.notifyDataSetChanged();
                c.this.clear();
                Iterator<b> it = c.this.f.iterator();
                while (it.hasNext()) {
                    c.this.add(it.next());
                }
                c.this.notifyDataSetInvalidated();
            }
        }

        public c(Context context, int i, List<b> list) {
            super(context, i, list);
            this.f = list;
            this.e = new ArrayList(list);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Filterable
        public Filter getFilter() {
            if (this.g == null) {
                this.g = new a(null);
            }
            return this.g;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) qp6.this.getActivity().getSystemService("layout_inflater")).inflate(R.layout.download_history_row, (ViewGroup) null);
            }
            b bVar = this.f.get(i);
            if (bVar != null) {
                ((TextView) view.findViewById(R.id.title)).setText(n56.S0(bVar.a()));
                ImageView imageView = (ImageView) view.findViewById(R.id.icon);
                String name = bVar.a.getName();
                imageView.setImageResource((name.endsWith("mp3") || name.endsWith("m4a")) ? R.drawable.enclosure_audio : (name.endsWith("jpg") || name.endsWith("jpeg") || name.endsWith("png") || name.endsWith("gif")) ? R.drawable.enclosure_picture : (name.endsWith("mp4") || name.endsWith("m4v") || name.endsWith("wmv")) ? R.drawable.enclosure_video : R.drawable.icon);
                ((TextView) view.findViewById(R.id.modified)).setText(n56.y0(bVar.b, new Date(bVar.a.lastModified()).getTime()));
                view.setTag(bVar.a());
            }
            return view;
        }
    }

    public class d extends AsyncTask<Void, Void, Void> {
        public List<b> a = new ArrayList();

        public d(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            try {
                File file = new File(dn6.c);
                if (!file.exists()) {
                    return null;
                }
                File[] fileArrListFiles = file.listFiles();
                mx6[] mx6VarArr = new mx6[fileArrListFiles.length];
                for (int i = 0; i < fileArrListFiles.length; i++) {
                    mx6VarArr[i] = new mx6(fileArrListFiles[i]);
                }
                Arrays.sort(mx6VarArr);
                for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
                    fileArrListFiles[i2] = mx6VarArr[i2].f;
                    qp6.this.getActivity();
                    String name = fileArrListFiles[i2].getName();
                    if (name.endsWith("mp3") || name.endsWith("m4a") || name.endsWith("jpg") || name.endsWith("jpeg") || name.endsWith("png") || name.endsWith("gif") || name.endsWith("mp4") || name.endsWith("m4v") || name.endsWith("wmv")) {
                        this.a.add(new b(qp6.this.getActivity(), fileArrListFiles[i2]));
                    }
                }
                return null;
            } catch (Exception unused) {
                qp6.this.p.clear();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r6) {
            if (qp6.this.getActivity() == null) {
                return;
            }
            qp6 qp6Var = qp6.this;
            qp6Var.o = null;
            qp6Var.p = this.a;
            qp6 qp6Var2 = qp6.this;
            qp6Var.o = qp6Var2.new c(qp6Var2.getActivity(), R.layout.download_history_row, qp6.this.p);
            qp6 qp6Var3 = qp6.this;
            qp6Var3.h(qp6Var3.o);
            View view = qp6.this.getView();
            if (view != null) {
                view.findViewById(R.id.loading).setVisibility(8);
                view.findViewById(R.id.empty_message).setVisibility(8);
            }
            ProgressDialog progressDialog = qp6.this.r;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            qp6.this.r.dismiss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            qp6 qp6Var = qp6.this;
            qp6Var.r = ProgressDialog.show(qp6Var.getActivity(), null, qp6.this.getText(R.string.msg_loading), true, true);
            qp6.this.p.clear();
        }
    }

    @Override // defpackage.pc
    public void e(ListView listView, View view, int i, long j) {
        n56.A1(getActivity(), this.p.get(i).a);
    }

    public final void j() {
        new d(null).execute(new Void[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        d();
        this.i.setTextFilterEnabled(true);
        d();
        registerForContextMenu(this.i);
        j();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.update) {
            return;
        }
        j();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        File file;
        int itemId;
        if (menuItem.getGroupId() != 2) {
            return false;
        }
        try {
            file = this.p.get(((AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo()).position).a;
            itemId = menuItem.getItemId();
        } catch (Exception e) {
            n56.X1(getActivity(), e.getLocalizedMessage());
        }
        if (itemId == 1) {
            n56.A1(getActivity(), file);
            return true;
        }
        if (itemId != 2) {
            return super.onContextItemSelected(menuItem);
        }
        if (file.exists()) {
            file.delete();
        }
        j();
        return true;
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.add(2, 1, 0, getText(R.string.txt_open));
        contextMenu.add(2, 2, 0, getText(R.string.txt_delete));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.download_history_fragment, viewGroup, false);
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) viewInflate.findViewById(R.id.query);
        this.q = autoCompleteTextView;
        autoCompleteTextView.addTextChangedListener(this.s);
        viewInflate.findViewById(R.id.update).setOnClickListener(this);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.q.removeTextChangedListener(this.s);
    }
}
