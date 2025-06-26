package com.noinnion.android.greader.ui.itemlist;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.android.material.snackbar.Snackbar;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.itemlist.SearchFilterDialog;
import defpackage.a0;
import defpackage.cn6;
import defpackage.ew6;
import defpackage.ip6;
import defpackage.lp6;
import defpackage.n56;
import defpackage.on6;
import defpackage.qb;
import defpackage.qw6;
import defpackage.t75;
import defpackage.wb;
import defpackage.xb;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SearchFilterDialog extends qw6 {
    public static final /* synthetic */ int g = 0;
    public ew6 e;
    public ProgressDialog f;

    @BindView(R.id.label)
    public EditText mLabelText;

    @BindView(R.id.location_icon)
    public ImageView mLocationIcon;

    @BindView(R.id.location_name)
    public TextView mLocationName;

    @BindView(R.id.query)
    public EditText mQueryText;

    public class a implements DialogInterface.OnClickListener {
        public a(SearchFilterDialog searchFilterDialog) {
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
                SearchFilterDialog searchFilterDialog = SearchFilterDialog.this;
                int i = SearchFilterDialog.g;
                Objects.requireNonNull(searchFilterDialog);
                searchFilterDialog.new c(null).execute(new Void[0]);
            }
        }

        public b(a0 a0Var) {
            this.a = a0Var;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            this.a.f(-1).setOnClickListener(new a());
        }
    }

    public class c extends AsyncTask<Void, Void, Void> {
        public String a;
        public String b;

        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (SearchFilterDialog.this.getActivity() == null) {
                return null;
            }
            on6.i(SearchFilterDialog.this.getActivity().getApplicationContext()).b(this.a, SearchFilterDialog.this.e.f(), this.b);
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            ProgressDialog progressDialog = SearchFilterDialog.this.f;
            if (progressDialog != null && progressDialog.isShowing()) {
                SearchFilterDialog.this.f.dismiss();
            }
            SearchFilterDialog.this.dismissAllowingStateLoss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            SearchFilterDialog searchFilterDialog = SearchFilterDialog.this;
            searchFilterDialog.f = ProgressDialog.show(searchFilterDialog.getActivity(), null, SearchFilterDialog.this.getText(R.string.msg_saving), true, true);
            this.a = SearchFilterDialog.this.mLabelText.getText().toString();
            this.b = SearchFilterDialog.this.mQueryText.getText().toString();
        }
    }

    public static void d(wb wbVar) {
        try {
            SearchFilterDialog searchFilterDialog = new SearchFilterDialog();
            xb xbVar = (xb) wbVar;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, searchFilterDialog, "fragment_search_save", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        n56.y2(getActivity(), R.string.ga_screen_search_filter);
        FragmentActivity activity = getActivity();
        if (activity == null || cn6.d0(activity)) {
            return;
        }
        Uri uri = lp6.n;
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = activity.getContentResolver().query(lp6.n, null, "type = 9", null, null);
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(new lp6(cursorQuery));
                } finally {
                    cursorQuery.close();
                }
            }
        }
        if (arrayList.size() > 0) {
            View viewFindViewById = activity.findViewById(android.R.id.content);
            n56.d1(activity, viewFindViewById);
            Snackbar snackbarJ = Snackbar.j(viewFindViewById, getText(R.string.limit_search_filter), -2);
            snackbarJ.k(getString(R.string.premium_get_premium), new View.OnClickListener() { // from class: br6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i = SearchFilterDialog.g;
                    Context context = view.getContext();
                    if (context instanceof Activity) {
                        n56.Z1((Activity) context);
                    }
                }
            });
            snackbarJ.l();
            dismiss();
        }
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        this.e = on6.a;
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.m(R.string.filter_search_filter);
        t75 t75VarH = t75Var.j(R.string.txt_save, null).h(android.R.string.cancel, new a(this));
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.dialog_search_filter, (ViewGroup) null);
        t75VarH.n(viewInflate);
        a0 a0VarA = t75VarH.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        ButterKnife.bind(this, viewInflate);
        this.mLabelText.setText(this.e.c);
        this.mQueryText.setText(this.e.c);
        FragmentActivity activity = getActivity();
        TextView textView = this.mLocationName;
        ImageView imageView = this.mLocationIcon;
        StringBuilder sb = new StringBuilder(128);
        ew6 ew6Var = on6.a;
        ip6 ip6Var = ew6Var.a;
        if (ip6Var != null) {
            sb.append(ip6Var.h);
            imageView.setImageResource(R.drawable.ic_feed);
        } else {
            lp6 lp6Var = ew6Var.b;
            if (lp6Var != null) {
                int i = lp6Var.g;
                if (i == 1) {
                    imageView.setImageResource(R.drawable.ic_tag_star);
                    sb.append(activity.getText(R.string.label_starred));
                } else if (i == 10) {
                    imageView.setImageResource(R.drawable.ic_tag_label);
                    sb.append(on6.a.b.i);
                } else if (i == 11) {
                    imageView.setImageResource(R.drawable.ic_tag_folder);
                    sb.append(on6.a.b.i);
                }
            } else if (ew6Var.d) {
                sb.append(activity.getText(R.string.label_saved));
                imageView.setImageResource(R.drawable.ic_download);
            } else if (ew6Var.e) {
                sb.append(activity.getText(R.string.label_podcast));
                imageView.setImageResource(R.drawable.ic_podcast);
            } else {
                imageView.setImageResource(R.drawable.ic_tag_all);
                sb.append(activity.getText(R.string.label_all));
            }
        }
        textView.setText(sb);
        return a0VarA;
    }
}
