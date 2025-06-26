package com.noinnion.android.greader.ui.setting;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.CheckBox;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.provider.ReaderProvider;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.setting.ClearCacheDialog;
import defpackage.a0;
import defpackage.ap6;
import defpackage.ep6;
import defpackage.hz6;
import defpackage.iw6;
import defpackage.jo;
import defpackage.n56;
import defpackage.on6;
import defpackage.ot6;
import defpackage.pt6;
import defpackage.qw6;
import defpackage.t75;
import defpackage.yo6;
import java.util.ArrayList;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class ClearCacheDialog extends qw6 {
    public static final /* synthetic */ int f = 0;

    @BindView(R.id.clear_articles)
    public CheckBox articlesCheck;

    @BindView(R.id.clear_complete)
    public CheckBox completeCheck;

    @BindView(R.id.clear_duplicates)
    public CheckBox duplicatesCheck;
    public ProgressDialog e;

    @BindView(R.id.clear_images)
    public CheckBox imagesCheck;

    public class a implements DialogInterface.OnShowListener {
        public final /* synthetic */ a0 a;

        /* renamed from: com.noinnion.android.greader.ui.setting.ClearCacheDialog$a$a, reason: collision with other inner class name */
        public class ViewOnClickListenerC0006a implements View.OnClickListener {
            public ViewOnClickListenerC0006a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ClearCacheDialog clearCacheDialog = ClearCacheDialog.this;
                int i = ClearCacheDialog.f;
                Objects.requireNonNull(clearCacheDialog);
                clearCacheDialog.new b(null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }

        public a(a0 a0Var) {
            this.a = a0Var;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            this.a.f(-1).setOnClickListener(new ViewOnClickListenerC0006a());
        }
    }

    public class b extends AsyncTask<Void, String, Void> {
        public boolean a;
        public boolean b;
        public boolean c;
        public boolean d;

        public b(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            Cursor cursorO;
            ContentResolver contentResolver;
            int iDelete;
            if (ClearCacheDialog.this.getActivity() != null) {
                Context applicationContext = ClearCacheDialog.this.getActivity().getApplicationContext();
                ep6 ep6VarI = on6.i(applicationContext);
                if (this.a) {
                    publishProgress(applicationContext.getString(R.string.cache_msg_clear_database));
                    n56.l0(applicationContext);
                    hz6.j().i().clear();
                }
                if (this.b) {
                    publishProgress(applicationContext.getString(R.string.cache_msg_clear_articles));
                    contentResolver = ep6VarI.a.getContentResolver();
                    contentResolver.query(ReaderProvider.h, null, null, null, null);
                    try {
                        contentResolver.delete(ap6.B, null, null);
                        ep6VarI.Y();
                        contentResolver.query(ReaderProvider.i, null, null, null, null);
                        contentResolver.query(ReaderProvider.j, null, null, null, null);
                        n56.I1(ep6VarI.a, true, true);
                        iw6.U(applicationContext, "last_sync_time", 0L);
                        iw6.T(applicationContext, "unread_count", 0);
                    } finally {
                    }
                }
                if (this.a || this.b) {
                    publishProgress(applicationContext.getString(R.string.cache_msg_clear_offline_cache));
                    n56.n0(applicationContext);
                }
                if (this.a || this.b || this.c) {
                    publishProgress(applicationContext.getString(R.string.cache_msg_clear_image_cache));
                    n56.m0(applicationContext);
                }
                if (this.d) {
                    publishProgress(applicationContext.getString(R.string.cache_msg_clear_duplicates));
                    ArrayList arrayList = new ArrayList();
                    int count = -1;
                    int i = 0;
                    while (true) {
                        if (count != -1 && count < 1000) {
                            break;
                        }
                        Context context = ep6VarI.a;
                        StringBuilder sbZ = jo.z(" item.link, item.read, item.updated_time DESC limit ");
                        sbZ.append(i * 1000);
                        sbZ.append(", 1000");
                        cursorO = ep6.o(context, false, null, false, false, sbZ.toString(), -1L);
                        if (cursorO == null || cursorO.getCount() == 0) {
                            break;
                        }
                        while (cursorO.moveToNext()) {
                            try {
                                int position = cursorO.getPosition();
                                if (position > 0) {
                                    long j = cursorO.getLong(cursorO.getColumnIndex("_id"));
                                    String string = cursorO.getString(cursorO.getColumnIndex(NSRSS20.LINK));
                                    cursorO.moveToPosition(position - 1);
                                    if (string.equals(cursorO.getString(cursorO.getColumnIndex(NSRSS20.LINK)))) {
                                        arrayList.add(Long.valueOf(j));
                                    }
                                    cursorO.moveToPosition(position);
                                }
                            } finally {
                            }
                        }
                        cursorO.close();
                        count = cursorO.getCount();
                        i++;
                    }
                    int count2 = -1;
                    int i2 = 0;
                    while (true) {
                        if (count2 != -1 && count2 < 1000) {
                            break;
                        }
                        Context context2 = ep6VarI.a;
                        StringBuilder sbZ2 = jo.z(" item.title, item.read, item.updated_time DESC limit ");
                        sbZ2.append(i2 * 1000);
                        sbZ2.append(", 1000");
                        cursorO = ep6.o(context2, false, null, false, false, sbZ2.toString(), -1L);
                        if (cursorO == null) {
                            break;
                        }
                        while (cursorO.moveToNext()) {
                            try {
                                int position2 = cursorO.getPosition();
                                if (position2 > 0) {
                                    long j2 = cursorO.getLong(cursorO.getColumnIndex("_id"));
                                    String string2 = cursorO.getString(cursorO.getColumnIndex("title"));
                                    cursorO.moveToPosition(position2 - 1);
                                    if (string2.equals(cursorO.getString(cursorO.getColumnIndex("title")))) {
                                        arrayList.add(Long.valueOf(j2));
                                    }
                                    cursorO.moveToPosition(position2);
                                }
                            } finally {
                            }
                        }
                        cursorO.close();
                        count2 = cursorO.getCount();
                        i2++;
                    }
                    if (arrayList.size() == 0) {
                        iDelete = 0;
                    } else {
                        contentResolver = ep6VarI.a.getContentResolver();
                        contentResolver.query(ReaderProvider.h, null, null, null, null);
                        try {
                            iDelete = contentResolver.delete(ap6.B, "_id IN (" + n56.e1(arrayList.toArray(), ",") + ")", null);
                            ep6VarI.Y();
                            contentResolver.query(ReaderProvider.i, null, null, null, null);
                            contentResolver.query(ReaderProvider.j, null, null, null, null);
                            n56.I1(ep6VarI.a, true, true);
                        } finally {
                        }
                    }
                    if (ClearCacheDialog.this.getActivity() != null) {
                        n56.X1(ClearCacheDialog.this.getActivity(), String.valueOf(iDelete) + StringUtils.SPACE + ((Object) ClearCacheDialog.this.getActivity().getText(R.string.cache_duplicates_removed)));
                    }
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            if (ClearCacheDialog.this.getActivity() == null) {
                return;
            }
            Context applicationContext = ClearCacheDialog.this.getActivity().getApplicationContext();
            ProgressDialog progressDialog = ClearCacheDialog.this.e;
            if (progressDialog != null && progressDialog.isShowing() && !ClearCacheDialog.this.getActivity().isFinishing()) {
                ClearCacheDialog.this.e.dismiss();
            }
            n56.X1(applicationContext, ClearCacheDialog.this.getText(R.string.msg_clean_up_success));
            n56.I1(applicationContext, true, true);
            ClearCacheDialog.this.dismissAllowingStateLoss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (ClearCacheDialog.this.getActivity() == null) {
                return;
            }
            yo6.i(ClearCacheDialog.this.getActivity());
            ClearCacheDialog.this.e = new ProgressDialog(ClearCacheDialog.this.getActivity());
            ClearCacheDialog.this.e.setIndeterminate(true);
            ClearCacheDialog clearCacheDialog = ClearCacheDialog.this;
            clearCacheDialog.e.setMessage(clearCacheDialog.getText(R.string.msg_cleanup_running));
            ClearCacheDialog.this.e.show();
            this.a = ClearCacheDialog.this.completeCheck.isChecked();
            this.b = ClearCacheDialog.this.articlesCheck.isChecked();
            this.c = ClearCacheDialog.this.imagesCheck.isChecked();
            this.d = ClearCacheDialog.this.duplicatesCheck.isChecked();
            if (this.a || this.b || this.c) {
                try {
                    new WebView(ClearCacheDialog.this.getActivity()).clearCache(true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // android.os.AsyncTask
        public void onProgressUpdate(String[] strArr) {
            ClearCacheDialog.this.e.setMessage(strArr[0]);
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        n56.y2(getActivity(), R.string.ga_screen_clear_cache);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.m(R.string.menu_clear_cache);
        t75 t75VarH = t75Var.j(R.string.txt_clear, null).h(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: ts6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                int i2 = ClearCacheDialog.f;
            }
        });
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.clear_data, (ViewGroup) null);
        t75VarH.n(viewInflate);
        a0 a0VarA = t75VarH.a();
        a0VarA.setOnShowListener(new a(a0VarA));
        ButterKnife.bind(this, viewInflate);
        this.completeCheck.setOnCheckedChangeListener(new ot6(this));
        this.duplicatesCheck.setOnCheckedChangeListener(new pt6(this));
        return a0VarA;
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
    }
}
