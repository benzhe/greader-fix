package com.noinnion.android.greader.ui.setting;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.Spinner;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.reader.R;
import defpackage.a0;
import defpackage.hy6;
import defpackage.iw6;
import defpackage.n56;
import defpackage.qw6;
import defpackage.rt6;
import defpackage.st6;
import defpackage.t75;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class PrefOfflineStorageDialog extends qw6 {

    @BindView(R.id.radio_auto)
    public RadioButton autoRadio;
    public String e;
    public ProgressDialog f;

    @BindView(R.id.radio_manual)
    public RadioButton manualRadio;

    @BindView(R.id.storages)
    public Spinner storageSpinner;

    public class a implements DialogInterface.OnClickListener {
        public a(PrefOfflineStorageDialog prefOfflineStorageDialog) {
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
                String string;
                PrefOfflineStorageDialog prefOfflineStorageDialog = PrefOfflineStorageDialog.this;
                if (!prefOfflineStorageDialog.autoRadio.isChecked()) {
                    string = prefOfflineStorageDialog.storageSpinner.getSelectedItem().toString();
                    if (TextUtils.isEmpty(string)) {
                    }
                    prefOfflineStorageDialog.new c(null).execute(prefOfflineStorageDialog.e, string);
                } else if (TextUtils.isEmpty(prefOfflineStorageDialog.e)) {
                    prefOfflineStorageDialog.dismiss();
                }
                string = null;
                prefOfflineStorageDialog.new c(null).execute(prefOfflineStorageDialog.e, string);
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

    public class c extends AsyncTask<String, Void, Boolean> {
        public String a = null;
        public String b = null;

        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            String absolutePath = strArr2[0];
            String absolutePath2 = strArr2[1];
            this.a = absolutePath2;
            if (absolutePath == null) {
                absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            }
            if (absolutePath2 == null) {
                absolutePath2 = Environment.getExternalStorageDirectory().getAbsolutePath();
            }
            if (!absolutePath.equals(absolutePath2)) {
                try {
                    File file = new File(absolutePath + "/gReader/cache/");
                    if (file.exists()) {
                        hy6.a(file, new File(absolutePath2 + "/gReader/cache/"));
                        hy6.c(file);
                    }
                    File file2 = new File(absolutePath + "/gReader/.image-cache/");
                    if (file2.exists()) {
                        hy6.a(file2, new File(absolutePath2 + "/gReader/.image-cache/"));
                        hy6.c(file2);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    this.b = e.getLocalizedMessage();
                    return Boolean.FALSE;
                }
            }
            return Boolean.TRUE;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            Boolean bool2 = bool;
            if (PrefOfflineStorageDialog.this.getActivity() == null) {
                return;
            }
            Context applicationContext = PrefOfflineStorageDialog.this.getActivity().getApplicationContext();
            ProgressDialog progressDialog = PrefOfflineStorageDialog.this.f;
            if (progressDialog != null && progressDialog.isShowing()) {
                PrefOfflineStorageDialog.this.f.dismiss();
            }
            if (!bool2.booleanValue()) {
                n56.X1(applicationContext, this.b);
            } else {
                iw6.V(applicationContext, "cache_offline_location", this.a);
                PrefOfflineStorageDialog.this.dismiss();
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (PrefOfflineStorageDialog.this.getActivity() == null) {
                return;
            }
            PrefOfflineStorageDialog prefOfflineStorageDialog = PrefOfflineStorageDialog.this;
            prefOfflineStorageDialog.f = ProgressDialog.show(prefOfflineStorageDialog.getActivity(), null, PrefOfflineStorageDialog.this.getText(R.string.msg_move_offline_contents), true, false);
        }
    }

    public void d(View view) {
        boolean zIsChecked = ((RadioButton) view).isChecked();
        switch (view.getId()) {
            case R.id.radio_auto /* 2131296860 */:
                if (zIsChecked) {
                    this.storageSpinner.setVisibility(8);
                    break;
                }
                break;
            case R.id.radio_manual /* 2131296861 */:
                if (zIsChecked) {
                    this.storageSpinner.setVisibility(0);
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x018f  */
    @Override // defpackage.rb, androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityCreated(android.os.Bundle r14) throws java.lang.InterruptedException, java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.setting.PrefOfflineStorageDialog.onActivityCreated(android.os.Bundle):void");
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        n56.y2(getActivity(), R.string.ga_screen_preference_offline_storage);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.m(R.string.preference_cache_offline_location_title);
        t75 t75VarH = t75Var.j(android.R.string.ok, null).h(android.R.string.cancel, new a(this));
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.pref_offline_storage, (ViewGroup) null);
        t75VarH.n(viewInflate);
        a0 a0VarA = t75VarH.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        ButterKnife.bind(this, viewInflate);
        this.autoRadio.setOnClickListener(new rt6(this));
        this.manualRadio.setOnClickListener(new st6(this));
        return a0VarA;
    }
}
