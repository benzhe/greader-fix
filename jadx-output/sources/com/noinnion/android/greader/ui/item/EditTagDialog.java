package com.noinnion.android.greader.ui.item;

import android.R;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import defpackage.a0;
import defpackage.ap6;
import defpackage.ep6;
import defpackage.gw6;
import defpackage.jp6;
import defpackage.kq6;
import defpackage.ky6;
import defpackage.lp6;
import defpackage.lq6;
import defpackage.n56;
import defpackage.on6;
import defpackage.qb;
import defpackage.qw6;
import defpackage.t75;
import defpackage.wb;
import defpackage.xb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes2.dex */
public class EditTagDialog extends qw6 {
    public static final /* synthetic */ int l = 0;
    public long e;
    public ap6 f;
    public Set<String> g = new HashSet();
    public List<ky6> h = new ArrayList();
    public Set<String> i = new HashSet();
    public Set<String> j = new HashSet();
    public ProgressDialog k;

    @BindView(R.id.list)
    public ListView mListView;

    public class a implements DialogInterface.OnClickListener {
        public a(EditTagDialog editTagDialog) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public class b implements DialogInterface.OnShowListener {
        public final /* synthetic */ a0 a;

        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditTagDialog editTagDialog = EditTagDialog.this;
                int i = EditTagDialog.l;
                Objects.requireNonNull(editTagDialog);
                editTagDialog.new e(null).execute(new Void[0]);
            }
        }

        /* renamed from: com.noinnion.android.greader.ui.item.EditTagDialog$b$b, reason: collision with other inner class name */
        public class ViewOnClickListenerC0005b implements View.OnClickListener {
            public ViewOnClickListenerC0005b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditTagDialog editTagDialog = EditTagDialog.this;
                Objects.requireNonNull(editTagDialog);
                t75 t75Var = new t75(editTagDialog.getActivity());
                t75Var.m(com.noinnion.android.greader.reader.R.string.tag_new_label);
                t75 t75VarH = t75Var.j(com.noinnion.android.greader.reader.R.string.txt_save, new lq6(editTagDialog)).h(R.string.cancel, new kq6(editTagDialog));
                t75VarH.o(com.noinnion.android.greader.reader.R.layout.dialog_input);
                t75VarH.e();
            }
        }

        public b(a0 a0Var) {
            this.a = a0Var;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            this.a.f(-1).setOnClickListener(new a());
            this.a.f(-3).setOnClickListener(new ViewOnClickListenerC0005b());
        }
    }

    public class c extends AsyncTask<String, Void, Void> {
        public String a;

        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            if (EditTagDialog.this.getActivity() == null) {
                return null;
            }
            ep6 ep6VarI = on6.i(EditTagDialog.this.getActivity().getApplicationContext());
            try {
                String str = strArr2[0];
                this.a = str;
                ep6VarI.D(EditTagDialog.this.f, str);
                ep6VarI.S(System.currentTimeMillis());
                return null;
            } catch (gw6 | IOException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            ProgressDialog progressDialog = EditTagDialog.this.k;
            if (progressDialog != null && progressDialog.isShowing()) {
                EditTagDialog.this.k.dismiss();
            }
            EditTagDialog editTagDialog = EditTagDialog.this;
            Objects.requireNonNull(editTagDialog);
            editTagDialog.new d(null).execute(new Void[0]);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (EditTagDialog.this.getActivity() == null) {
                return;
            }
            EditTagDialog editTagDialog = EditTagDialog.this;
            editTagDialog.k = ProgressDialog.show(editTagDialog.getActivity(), null, EditTagDialog.this.getText(com.noinnion.android.greader.reader.R.string.msg_saving), true, true);
        }
    }

    public class d extends AsyncTask<Void, Void, ArrayList<ky6>> {
        public d(a aVar) {
        }

        @Override // android.os.AsyncTask
        public ArrayList<ky6> doInBackground(Void[] voidArr) {
            Cursor cursorQuery;
            if (EditTagDialog.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = EditTagDialog.this.getActivity().getApplicationContext();
            String str = EditTagDialog.this.f.f;
            ArrayList arrayList = new ArrayList();
            if (str != null && str.length() > 0 && (cursorQuery = applicationContext.getContentResolver().query(jp6.e, new String[]{"tag_uid"}, "item_uid = ?", new String[]{str}, null)) != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        arrayList.add(cursorQuery.getString(0));
                    } finally {
                        cursorQuery.close();
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                EditTagDialog.this.g.add((String) it.next());
            }
            ArrayList<ky6> arrayList2 = new ArrayList<>();
            Iterator it2 = ((ArrayList) lp6.c(applicationContext, false, true, false)).iterator();
            while (it2.hasNext()) {
                lp6 lp6Var = (lp6) it2.next();
                ky6 ky6Var = new ky6(lp6Var.i, lp6Var.f);
                ky6Var.d = lp6Var;
                ky6Var.e = EditTagDialog.this.g.contains(lp6Var.f);
                arrayList2.add(ky6Var);
            }
            return arrayList2;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(ArrayList<ky6> arrayList) {
            ArrayList<ky6> arrayList2 = arrayList;
            if (EditTagDialog.this.getActivity() == null) {
                return;
            }
            EditTagDialog.this.h.clear();
            EditTagDialog.this.h.addAll(arrayList2);
            EditTagDialog editTagDialog = EditTagDialog.this;
            EditTagDialog.this.mListView.setAdapter((ListAdapter) editTagDialog.new f(editTagDialog.getActivity(), com.noinnion.android.greader.reader.R.layout.change_folder_row, EditTagDialog.this.h));
            EditTagDialog.this.i.clear();
            EditTagDialog.this.j.clear();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            EditTagDialog.this.h.clear();
            EditTagDialog.this.g.clear();
        }
    }

    public class e extends AsyncTask<Void, Void, Void> {
        public e(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (EditTagDialog.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = EditTagDialog.this.getActivity().getApplicationContext();
            ep6 ep6VarI = on6.i(applicationContext);
            try {
                if (EditTagDialog.this.j.size() > 0) {
                    EditTagDialog editTagDialog = EditTagDialog.this;
                    ap6 ap6Var = editTagDialog.f;
                    Set<String> set = editTagDialog.j;
                    ep6VarI.H(ap6Var, (String[]) set.toArray(new String[set.size()]));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (EditTagDialog.this.i.size() > 0) {
                    EditTagDialog editTagDialog2 = EditTagDialog.this;
                    ap6 ap6Var2 = editTagDialog2.f;
                    Set<String> set2 = editTagDialog2.i;
                    ep6VarI.c(ap6Var2, (String[]) set2.toArray(new String[set2.size()]));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            n56.H1(applicationContext, true);
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            ProgressDialog progressDialog = EditTagDialog.this.k;
            if (progressDialog != null && progressDialog.isShowing()) {
                EditTagDialog.this.k.dismiss();
            }
            EditTagDialog.this.dismissAllowingStateLoss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (EditTagDialog.this.getActivity() == null) {
                return;
            }
            EditTagDialog editTagDialog = EditTagDialog.this;
            editTagDialog.k = ProgressDialog.show(editTagDialog.getActivity(), null, EditTagDialog.this.getText(com.noinnion.android.greader.reader.R.string.msg_saving), true, true);
        }
    }

    public class f extends ArrayAdapter<ky6> {
        public List<ky6> e;

        public class a implements CompoundButton.OnCheckedChangeListener {
            public final /* synthetic */ int a;

            public a(int i) {
                this.a = i;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (this.a > f.this.e.size() - 1) {
                    return;
                }
                f.this.e.get(this.a).e = z;
                f fVar = f.this;
                EditTagDialog editTagDialog = EditTagDialog.this;
                String str = fVar.e.get(this.a).c;
                if (z) {
                    if (editTagDialog.j.contains(str)) {
                        editTagDialog.j.remove(str);
                        return;
                    } else {
                        editTagDialog.i.add(str);
                        return;
                    }
                }
                if (editTagDialog.i.contains(str)) {
                    editTagDialog.i.remove(str);
                } else {
                    editTagDialog.j.add(str);
                }
            }
        }

        public f(Context context, int i, List<ky6> list) {
            super(context, i, list);
            this.e = list;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ky6 ky6Var = null;
            if (view == null) {
                view = ((LayoutInflater) EditTagDialog.this.getActivity().getSystemService("layout_inflater")).inflate(com.noinnion.android.greader.reader.R.layout.change_folder_row, (ViewGroup) null);
            }
            try {
                ky6Var = this.e.get(i);
            } catch (Exception unused) {
            }
            if (ky6Var != null) {
                lp6 lp6Var = (lp6) ky6Var.d;
                ((TextView) view.findViewById(com.noinnion.android.greader.reader.R.id.title)).setText(lp6Var.i);
                ImageView imageView = (ImageView) view.findViewById(com.noinnion.android.greader.reader.R.id.icon);
                if (lp6Var.g == 11) {
                    imageView.setImageResource(com.noinnion.android.greader.reader.R.drawable.ic_tag_folder);
                }
                CheckBox checkBox = (CheckBox) view.findViewById(com.noinnion.android.greader.reader.R.id.tag_checkbox);
                if (ky6Var.e) {
                    checkBox.setChecked(true);
                } else {
                    checkBox.setChecked(false);
                }
                checkBox.setOnCheckedChangeListener(new a(i));
            }
            return view;
        }
    }

    public static void d(wb wbVar, long j) {
        try {
            EditTagDialog editTagDialog = new EditTagDialog();
            Bundle bundle = new Bundle();
            bundle.putLong("itemId", j);
            editTagDialog.setArguments(bundle);
            xb xbVar = (xb) wbVar;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, editTagDialog, "fragment_edit_tag", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        new d(null).execute(new Void[0]);
        n56.y2(getActivity(), com.noinnion.android.greader.reader.R.string.ga_screen_item_edit_tag);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        Context applicationContext = getActivity().getApplicationContext();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.e = arguments.getLong("itemId", 0L);
        }
        long j = this.e;
        if (j > 0) {
            this.f = ap6.l(applicationContext, j, false);
        }
        if (this.f == null) {
            n56.X1(applicationContext, getText(com.noinnion.android.greader.reader.R.string.item_not_found));
            dismiss();
        }
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.a.e = this.f.h;
        t75Var.d(com.noinnion.android.greader.reader.R.string.txt_save, null);
        t75Var.b(R.string.cancel, new a(this));
        t75Var.c(com.noinnion.android.greader.reader.R.string.tag_new_label, null);
        View viewInflate = getActivity().getLayoutInflater().inflate(com.noinnion.android.greader.reader.R.layout.change_folder, (ViewGroup) null);
        t75Var.n(viewInflate);
        a0 a0VarA = t75Var.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        ButterKnife.bind(this, viewInflate);
        this.mListView.setItemsCanFocus(true);
        return a0VarA;
    }
}
