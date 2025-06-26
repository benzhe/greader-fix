package com.noinnion.android.greader.ui.subscription;

import android.R;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
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
import defpackage.ep6;
import defpackage.gw6;
import defpackage.ip6;
import defpackage.iu6;
import defpackage.jo;
import defpackage.ju6;
import defpackage.kp6;
import defpackage.ky6;
import defpackage.lp6;
import defpackage.n56;
import defpackage.on6;
import defpackage.qb;
import defpackage.qw6;
import defpackage.t75;
import defpackage.wb;
import defpackage.xb;
import defpackage.yd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes2.dex */
public class ChangeFolderDialog extends qw6 {
    public static final /* synthetic */ int l = 0;
    public long e;
    public ip6 f;
    public Set<String> g = new HashSet();
    public ArrayList<ky6> h = new ArrayList<>();
    public Set<String> i = new HashSet();
    public Set<String> j = new HashSet();
    public ProgressDialog k;

    @BindView(R.id.list)
    public ListView mListView;

    public class a implements DialogInterface.OnClickListener {
        public a(ChangeFolderDialog changeFolderDialog) {
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
                ChangeFolderDialog changeFolderDialog = ChangeFolderDialog.this;
                int i = ChangeFolderDialog.l;
                Objects.requireNonNull(changeFolderDialog);
                changeFolderDialog.new e(null).execute(new Void[0]);
            }
        }

        /* renamed from: com.noinnion.android.greader.ui.subscription.ChangeFolderDialog$b$b, reason: collision with other inner class name */
        public class ViewOnClickListenerC0007b implements View.OnClickListener {
            public ViewOnClickListenerC0007b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChangeFolderDialog changeFolderDialog = ChangeFolderDialog.this;
                Objects.requireNonNull(changeFolderDialog);
                t75 t75Var = new t75(changeFolderDialog.getActivity());
                t75Var.m(com.noinnion.android.greader.reader.R.string.folder_create);
                t75 t75VarH = t75Var.j(com.noinnion.android.greader.reader.R.string.txt_save, new ju6(changeFolderDialog)).h(R.string.cancel, new iu6(changeFolderDialog));
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
            this.a.f(-3).setOnClickListener(new ViewOnClickListenerC0007b());
        }
    }

    public class c extends AsyncTask<String, Void, Void> {
        public String a;

        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            if (ChangeFolderDialog.this.getActivity() == null) {
                return null;
            }
            ep6 ep6VarI = on6.i(ChangeFolderDialog.this.getActivity().getApplicationContext());
            try {
                String str = strArr2[0];
                this.a = str;
                ep6VarI.C(ChangeFolderDialog.this.f, str);
                ep6VarI.S(System.currentTimeMillis());
                return null;
            } catch (gw6 | IOException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            ProgressDialog progressDialog = ChangeFolderDialog.this.k;
            if (progressDialog != null && progressDialog.isShowing()) {
                ChangeFolderDialog.this.k.dismiss();
            }
            ChangeFolderDialog changeFolderDialog = ChangeFolderDialog.this;
            Objects.requireNonNull(changeFolderDialog);
            changeFolderDialog.new d(null).execute(new Void[0]);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (ChangeFolderDialog.this.getActivity() == null) {
                return;
            }
            ChangeFolderDialog changeFolderDialog = ChangeFolderDialog.this;
            changeFolderDialog.k = ProgressDialog.show(changeFolderDialog.getActivity(), null, ChangeFolderDialog.this.getText(com.noinnion.android.greader.reader.R.string.msg_saving), true, true);
        }
    }

    public class d extends AsyncTask<Void, Void, ArrayList<ky6>> {
        public d(a aVar) {
        }

        @Override // android.os.AsyncTask
        public ArrayList<ky6> doInBackground(Void[] voidArr) {
            if (ChangeFolderDialog.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = ChangeFolderDialog.this.getActivity().getApplicationContext();
            long j = ChangeFolderDialog.this.f.e;
            ArrayList arrayList = new ArrayList();
            if (j > 0) {
                Cursor cursorQuery = applicationContext.getContentResolver().query(kp6.e, new String[]{"tag_uid"}, jo.j("sub_id = ", j), null, null);
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        try {
                            arrayList.add(cursorQuery.getString(0));
                        } finally {
                            cursorQuery.close();
                        }
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ChangeFolderDialog.this.g.add((String) it.next());
            }
            ArrayList<ky6> arrayList2 = new ArrayList<>();
            Iterator it2 = ((ArrayList) lp6.c(applicationContext, true, false, false)).iterator();
            while (it2.hasNext()) {
                lp6 lp6Var = (lp6) it2.next();
                ky6 ky6Var = new ky6(lp6Var.i, lp6Var.f);
                ky6Var.d = lp6Var;
                ky6Var.e = ChangeFolderDialog.this.g.contains(lp6Var.f);
                arrayList2.add(ky6Var);
            }
            return arrayList2;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(ArrayList<ky6> arrayList) {
            ArrayList<ky6> arrayList2 = arrayList;
            if (ChangeFolderDialog.this.getActivity() == null) {
                return;
            }
            ChangeFolderDialog.this.h.clear();
            ChangeFolderDialog.this.h.addAll(arrayList2);
            ChangeFolderDialog changeFolderDialog = ChangeFolderDialog.this;
            ChangeFolderDialog.this.mListView.setAdapter((ListAdapter) changeFolderDialog.new f(changeFolderDialog.getActivity(), com.noinnion.android.greader.reader.R.layout.change_folder_row, ChangeFolderDialog.this.h));
            ChangeFolderDialog.this.i.clear();
            ChangeFolderDialog.this.j.clear();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            ChangeFolderDialog.this.h.clear();
            ChangeFolderDialog.this.g.clear();
        }
    }

    public class e extends AsyncTask<Void, Void, Void> {
        public e(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (ChangeFolderDialog.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = ChangeFolderDialog.this.getActivity().getApplicationContext();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((ArrayList) ChangeFolderDialog.this.h.clone()).iterator();
            while (it.hasNext()) {
                ky6 ky6Var = (ky6) it.next();
                if (ky6Var.e) {
                    arrayList.add(ky6Var.c);
                } else {
                    arrayList2.add(ky6Var.c);
                }
            }
            ep6 ep6VarI = on6.i(applicationContext);
            if (arrayList2.size() > 0) {
                try {
                    ep6VarI.F(ChangeFolderDialog.this.f, (String[]) arrayList2.toArray(new String[arrayList2.size()]));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            try {
                ep6VarI.a(ChangeFolderDialog.this.f, (String[]) arrayList.toArray(new String[arrayList.size()]));
                return null;
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            ProgressDialog progressDialog = ChangeFolderDialog.this.k;
            if (progressDialog != null && progressDialog.isShowing()) {
                ChangeFolderDialog.this.k.dismiss();
            }
            if (ChangeFolderDialog.this.getActivity() != null) {
                Context applicationContext = ChangeFolderDialog.this.getActivity().getApplicationContext();
                n56.H1(applicationContext, true);
                int i = ManageSourcesActivity.A;
                yd.a(applicationContext).c(new Intent("com.noinnion.android.greader.reader.action.REFRESH"));
            }
            ChangeFolderDialog.this.dismissAllowingStateLoss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (ChangeFolderDialog.this.getActivity() == null) {
                return;
            }
            ChangeFolderDialog changeFolderDialog = ChangeFolderDialog.this;
            changeFolderDialog.k = ProgressDialog.show(changeFolderDialog.getActivity(), null, ChangeFolderDialog.this.getText(com.noinnion.android.greader.reader.R.string.msg_saving), true, true);
        }
    }

    public class f extends ArrayAdapter<ky6> {
        public ArrayList<ky6> e;

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
                ChangeFolderDialog changeFolderDialog = ChangeFolderDialog.this;
                String str = fVar.e.get(this.a).c;
                if (z) {
                    if (changeFolderDialog.j.contains(str)) {
                        changeFolderDialog.j.remove(str);
                        return;
                    } else {
                        changeFolderDialog.i.add(str);
                        return;
                    }
                }
                if (changeFolderDialog.i.contains(str)) {
                    changeFolderDialog.i.remove(str);
                } else {
                    changeFolderDialog.j.add(str);
                }
            }
        }

        public f(Context context, int i, ArrayList<ky6> arrayList) {
            super(context, i, arrayList);
            this.e = arrayList;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ky6 ky6Var = null;
            if (ChangeFolderDialog.this.getActivity() == null) {
                return null;
            }
            View viewInflate = ((LayoutInflater) ChangeFolderDialog.this.getActivity().getSystemService("layout_inflater")).inflate(com.noinnion.android.greader.reader.R.layout.change_folder_row, (ViewGroup) null);
            int size = this.e.size();
            if (size != 0 && i <= size - 1) {
                ky6Var = this.e.get(i);
            }
            if (ky6Var != null) {
                lp6 lp6Var = (lp6) ky6Var.d;
                ((TextView) viewInflate.findViewById(com.noinnion.android.greader.reader.R.id.title)).setText(lp6Var.i);
                ImageView imageView = (ImageView) viewInflate.findViewById(com.noinnion.android.greader.reader.R.id.icon);
                if (lp6Var.g == 11) {
                    imageView.setImageResource(com.noinnion.android.greader.reader.R.drawable.ic_tag_folder);
                }
                CheckBox checkBox = (CheckBox) viewInflate.findViewById(com.noinnion.android.greader.reader.R.id.tag_checkbox);
                if (ky6Var.e) {
                    checkBox.setChecked(true);
                } else {
                    checkBox.setChecked(false);
                }
                checkBox.setOnCheckedChangeListener(new a(i));
            }
            return viewInflate;
        }
    }

    public static void d(wb wbVar, long j) {
        try {
            ChangeFolderDialog changeFolderDialog = new ChangeFolderDialog();
            Bundle bundle = new Bundle();
            bundle.putLong("subId", j);
            changeFolderDialog.setArguments(bundle);
            xb xbVar = (xb) wbVar;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, changeFolderDialog, "fragment_change_folder", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        new d(null).execute(new Void[0]);
        n56.y2(getActivity(), com.noinnion.android.greader.reader.R.string.ga_screen_subscription_change_folder);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        Context applicationContext = getActivity().getApplicationContext();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.e = arguments.getLong("subId", 0L);
        }
        long j = this.e;
        if (j > 0) {
            this.f = ip6.c(applicationContext, j, false);
        }
        if (this.f == null) {
            n56.X1(getActivity(), getText(com.noinnion.android.greader.reader.R.string.sub_not_found));
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

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
    }
}
