package com.noinnion.android.greader.ui.subscription;

import android.R;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.provider.ReaderProvider;
import defpackage.a0;
import defpackage.ip6;
import defpackage.ky6;
import defpackage.n56;
import defpackage.qb;
import defpackage.qw6;
import defpackage.t75;
import defpackage.wb;
import defpackage.xb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubscriptionSelectionDialog extends qw6 {
    public static final /* synthetic */ int j = 0;
    public ProgressDialog e;
    public f f;
    public List<ip6> g;
    public c h;
    public d i;

    @BindView(R.id.list)
    public ListView mListView;

    public class a implements DialogInterface.OnClickListener {
        public a(SubscriptionSelectionDialog subscriptionSelectionDialog) {
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
                SubscriptionSelectionDialog subscriptionSelectionDialog = SubscriptionSelectionDialog.this;
                int i = SubscriptionSelectionDialog.j;
                Objects.requireNonNull(subscriptionSelectionDialog);
                subscriptionSelectionDialog.new e(null).execute(new Void[0]);
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

    public class c extends ArrayAdapter<ky6> {
        public List<ky6> e;

        public class a implements View.OnClickListener {
            public final /* synthetic */ int e;

            public a(int i) {
                this.e = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.e.get(this.e).e = ((CheckBox) view).isChecked();
            }
        }

        public class b implements AdapterView.OnItemSelectedListener {
            public final /* synthetic */ int e;

            public b(int i) {
                this.e = i;
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                c.this.e.get(this.e).a = i - 1;
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        }

        public c(Context context, int i, List<ky6> list) {
            super(context, i, list);
            this.e = list;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ky6 ky6Var;
            if (view == null) {
                view = ((LayoutInflater) SubscriptionSelectionDialog.this.getActivity().getSystemService("layout_inflater")).inflate(com.noinnion.android.greader.reader.R.layout.subscription_selection_row, (ViewGroup) null);
            }
            try {
                ky6Var = this.e.get(i);
            } catch (Exception unused) {
                ky6Var = null;
            }
            if (ky6Var != null) {
                ip6 ip6Var = (ip6) ky6Var.d;
                View viewFindViewById = view.findViewById(com.noinnion.android.greader.reader.R.id.checkbox_selection);
                View viewFindViewById2 = view.findViewById(com.noinnion.android.greader.reader.R.id.spinner_selection);
                f fVar = SubscriptionSelectionDialog.this.f;
                if (fVar == f.NOTIFICATION || fVar == f.IMAGE_FIT || fVar == f.JAVASCRIPT) {
                    viewFindViewById.setVisibility(0);
                    viewFindViewById2.setVisibility(8);
                    ((TextView) view.findViewById(com.noinnion.android.greader.reader.R.id.title)).setText(ip6Var.h);
                    CheckBox checkBox = (CheckBox) view.findViewById(com.noinnion.android.greader.reader.R.id.checkbox);
                    checkBox.setChecked(ky6Var.e);
                    checkBox.setOnClickListener(new a(i));
                } else {
                    viewFindViewById.setVisibility(8);
                    viewFindViewById2.setVisibility(0);
                    ((TextView) view.findViewById(com.noinnion.android.greader.reader.R.id.spinner_title)).setText(ip6Var.h);
                    Spinner spinner = (Spinner) view.findViewById(com.noinnion.android.greader.reader.R.id.spinner);
                    spinner.setOnItemSelectedListener(null);
                    SubscriptionSelectionDialog subscriptionSelectionDialog = SubscriptionSelectionDialog.this;
                    f fVar2 = subscriptionSelectionDialog.f;
                    if (fVar2 == f.OFFLINE_FORMAT) {
                        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(subscriptionSelectionDialog.getActivity(), com.noinnion.android.greader.reader.R.array.sub_offline_reading_labels, R.layout.simple_spinner_item);
                        arrayAdapterCreateFromResource.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
                        int i2 = ip6Var.u;
                        spinner.setSelection(i2 != -1 ? i2 + 1 : 0);
                    } else if (fVar2 == f.DISPLAY_LOADING) {
                        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource2 = ArrayAdapter.createFromResource(subscriptionSelectionDialog.getActivity(), com.noinnion.android.greader.reader.R.array.sub_display_content_labels, R.layout.simple_spinner_item);
                        arrayAdapterCreateFromResource2.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource2);
                        int i3 = ip6Var.v;
                        spinner.setSelection(i3 != -1 ? i3 + 1 : 0);
                    } else if (fVar2 == f.LOAD_LINK) {
                        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource3 = ArrayAdapter.createFromResource(subscriptionSelectionDialog.getActivity(), com.noinnion.android.greader.reader.R.array.sub_load_link_labels, R.layout.simple_spinner_item);
                        arrayAdapterCreateFromResource3.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource3);
                        int i4 = ip6Var.w;
                        spinner.setSelection(i4 != -1 ? i4 + 1 : 0);
                    } else if (fVar2 == f.READING_MODE) {
                        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource4 = ArrayAdapter.createFromResource(subscriptionSelectionDialog.getActivity(), com.noinnion.android.greader.reader.R.array.sub_reading_mode_labels, R.layout.simple_spinner_item);
                        arrayAdapterCreateFromResource4.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource4);
                        int i5 = ip6Var.x;
                        spinner.setSelection(i5 != -1 ? i5 + 1 : 0);
                    } else if (fVar2 == f.USER_AGENT) {
                        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource5 = ArrayAdapter.createFromResource(subscriptionSelectionDialog.getActivity(), com.noinnion.android.greader.reader.R.array.sub_user_agent_labels, R.layout.simple_spinner_item);
                        arrayAdapterCreateFromResource5.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource5);
                        int i6 = ip6Var.y;
                        spinner.setSelection(i6 != -1 ? i6 + 1 : 0);
                    }
                    spinner.setOnItemSelectedListener(new b(i));
                }
            }
            return view;
        }
    }

    public interface d {
        void a();
    }

    public class e extends AsyncTask<Void, Void, Void> {
        public e(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (SubscriptionSelectionDialog.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = SubscriptionSelectionDialog.this.getActivity().getApplicationContext();
            c cVar = SubscriptionSelectionDialog.this.h;
            Objects.requireNonNull(cVar);
            ArrayList arrayList = new ArrayList();
            for (ky6 ky6Var : cVar.e) {
                ip6 ip6Var = (ip6) ky6Var.d;
                f fVar = SubscriptionSelectionDialog.this.f;
                if (fVar == f.NOTIFICATION) {
                    ip6Var.r = ky6Var.e;
                } else if (fVar == f.IMAGE_FIT) {
                    ip6Var.s = ky6Var.e;
                } else if (fVar == f.JAVASCRIPT) {
                    ip6Var.t = ky6Var.e;
                } else if (fVar == f.OFFLINE_FORMAT) {
                    ip6Var.u = (int) ky6Var.a;
                } else if (fVar == f.DISPLAY_LOADING) {
                    ip6Var.v = (int) ky6Var.a;
                } else if (fVar == f.LOAD_LINK) {
                    ip6Var.w = (int) ky6Var.a;
                } else if (fVar == f.READING_MODE) {
                    ip6Var.x = (int) ky6Var.a;
                } else if (fVar == f.USER_AGENT) {
                    ip6Var.y = (int) ky6Var.a;
                }
                arrayList.add(ip6Var);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ip6 ip6Var2 = (ip6) it.next();
                Objects.requireNonNull(ip6Var2);
                ContentResolver contentResolver = applicationContext.getContentResolver();
                contentResolver.query(ReaderProvider.h, null, null, null, null);
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("uid", ip6Var2.f);
                    contentValues.put("title", ip6Var2.h);
                    contentValues.put("feed_url", ip6Var2.i);
                    contentValues.put("html_url", ip6Var2.j);
                    contentValues.put("icon_url", ip6Var2.k);
                    contentValues.put("sortid", ip6Var2.g);
                    contentValues.put("unread_count", Integer.valueOf(ip6Var2.m));
                    contentValues.put("newest_item_time", Long.valueOf(ip6Var2.n));
                    contentValues.put("sync_time", Long.valueOf(ip6Var2.o));
                    contentValues.put("sync_excluded", Integer.valueOf(ip6Var2.p ? 1 : 0));
                    contentValues.put("image_fit", Integer.valueOf(ip6Var2.s ? 1 : 0));
                    contentValues.put("javascript", Integer.valueOf(ip6Var2.t ? 1 : 0));
                    contentValues.put("offline_content", Integer.valueOf(ip6Var2.u));
                    contentValues.put("display_content", Integer.valueOf(ip6Var2.v));
                    contentValues.put("link_format", Integer.valueOf(ip6Var2.w));
                    contentValues.put("auto_readability", Integer.valueOf(ip6Var2.x));
                    contentValues.put("notification", Integer.valueOf(ip6Var2.r ? 1 : 0));
                    contentValues.put("charset", ip6Var2.z);
                    contentValues.put("hidden", Integer.valueOf(ip6Var2.q ? 1 : 0));
                    long j = ip6Var2.e;
                    if (j > 0) {
                        contentResolver.update(ip6.A, contentValues, "_id = ?", new String[]{String.valueOf(j)});
                    } else {
                        contentResolver.insert(ip6.A, contentValues);
                    }
                    contentResolver.query(ReaderProvider.i, null, null, null, null);
                } finally {
                    contentResolver.query(ReaderProvider.j, null, null, null, null);
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            ProgressDialog progressDialog = SubscriptionSelectionDialog.this.e;
            if (progressDialog != null && progressDialog.isShowing()) {
                SubscriptionSelectionDialog.this.e.dismiss();
            }
            d dVar = SubscriptionSelectionDialog.this.i;
            if (dVar != null) {
                dVar.a();
            }
            SubscriptionSelectionDialog.this.dismissAllowingStateLoss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (SubscriptionSelectionDialog.this.getActivity() == null) {
                return;
            }
            SubscriptionSelectionDialog subscriptionSelectionDialog = SubscriptionSelectionDialog.this;
            subscriptionSelectionDialog.e = ProgressDialog.show(subscriptionSelectionDialog.getActivity(), null, SubscriptionSelectionDialog.this.getText(com.noinnion.android.greader.reader.R.string.msg_saving), true, true);
        }
    }

    public enum f {
        NOTIFICATION,
        IMAGE_FIT,
        JAVASCRIPT,
        OFFLINE_FORMAT,
        DISPLAY_LOADING,
        LOAD_LINK,
        READING_MODE,
        USER_AGENT
    }

    public SubscriptionSelectionDialog(f fVar, List<ip6> list) {
        this.f = fVar;
        this.g = list;
    }

    public static void d(wb wbVar, f fVar, List<ip6> list, d dVar) {
        try {
            SubscriptionSelectionDialog subscriptionSelectionDialog = new SubscriptionSelectionDialog(fVar, list);
            subscriptionSelectionDialog.i = dVar;
            xb xbVar = (xb) wbVar;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, subscriptionSelectionDialog, "fragment_edit_tag", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ArrayList arrayList = new ArrayList();
        for (ip6 ip6Var : this.g) {
            ky6 ky6Var = new ky6(ip6Var.h, ip6Var.f);
            ky6Var.d = ip6Var;
            f fVar = this.f;
            if (fVar == f.NOTIFICATION) {
                ky6Var.e = ip6Var.r;
            } else if (fVar == f.IMAGE_FIT) {
                ky6Var.e = ip6Var.s;
            } else if (fVar == f.JAVASCRIPT) {
                ky6Var.e = ip6Var.t;
            }
            arrayList.add(ky6Var);
        }
        c cVar = new c(getActivity(), com.noinnion.android.greader.reader.R.layout.change_folder_row, arrayList);
        this.h = cVar;
        this.mListView.setAdapter((ListAdapter) cVar);
        n56.y2(getActivity(), com.noinnion.android.greader.reader.R.string.ga_screen_item_edit_tag);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        String string;
        List<ip6> list = this.g;
        if (list == null || list.size() == 0) {
            dismiss();
        }
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        switch (this.f) {
            case NOTIFICATION:
                string = getString(com.noinnion.android.greader.reader.R.string.view_notification);
                break;
            case IMAGE_FIT:
                string = getString(com.noinnion.android.greader.reader.R.string.sub_image_fit);
                break;
            case JAVASCRIPT:
                string = getString(com.noinnion.android.greader.reader.R.string.sub_javascript);
                break;
            case OFFLINE_FORMAT:
                string = getString(com.noinnion.android.greader.reader.R.string.sub_offline_prompt);
                break;
            case DISPLAY_LOADING:
                string = getString(com.noinnion.android.greader.reader.R.string.sub_display_prompt);
                break;
            case LOAD_LINK:
                string = getString(com.noinnion.android.greader.reader.R.string.sub_load_link_prompt);
                break;
            case READING_MODE:
                string = getString(com.noinnion.android.greader.reader.R.string.sub_reading_mode_prompt);
                break;
            case USER_AGENT:
                string = getString(com.noinnion.android.greader.reader.R.string.sub_user_agent_prompt);
                break;
            default:
                string = null;
                break;
        }
        t75Var.a.e = string;
        t75Var.d(com.noinnion.android.greader.reader.R.string.txt_save, null);
        t75Var.b(R.string.cancel, new a(this));
        View viewInflate = getActivity().getLayoutInflater().inflate(com.noinnion.android.greader.reader.R.layout.subscription_selection, (ViewGroup) null);
        t75Var.n(viewInflate);
        a0 a0VarA = t75Var.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        ButterKnife.bind(this, viewInflate);
        this.mListView.setItemsCanFocus(true);
        return a0VarA;
    }
}
