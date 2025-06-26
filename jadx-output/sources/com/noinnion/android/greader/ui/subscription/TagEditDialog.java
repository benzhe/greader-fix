package com.noinnion.android.greader.ui.subscription;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.subscription.TagEditDialog;
import defpackage.a0;
import defpackage.ep6;
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
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class TagEditDialog extends qw6 {
    public static final /* synthetic */ int i = 0;
    public String e;
    public lp6 f;
    public List<ip6> g;
    public ProgressDialog h;

    @BindView(R.id.sync_excluded)
    public CheckBox mExcludeCheck;

    @BindView(R.id.hide)
    public CheckBox mHideCheck;

    @BindView(R.id.image_fit)
    public CheckBox mImageFitCheck;

    @BindView(R.id.javascript)
    public CheckBox mJavascriptCheck;

    @BindView(R.id.name)
    public EditText mNameText;

    @BindView(R.id.notification)
    public CheckBox mNotificationCheck;

    @BindView(R.id.sub_preferences)
    public View mSubPreferences;

    @BindView(R.id.tag_preferences)
    public View mTagPreferences;

    public class a implements DialogInterface.OnShowListener {
        public final /* synthetic */ a0 a;

        /* renamed from: com.noinnion.android.greader.ui.subscription.TagEditDialog$a$a, reason: collision with other inner class name */
        public class ViewOnClickListenerC0008a implements View.OnClickListener {
            public ViewOnClickListenerC0008a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TagEditDialog tagEditDialog = TagEditDialog.this;
                int i = TagEditDialog.i;
                if (tagEditDialog.getActivity() == null || tagEditDialog.f == null) {
                    tagEditDialog.dismissAllowingStateLoss();
                } else {
                    tagEditDialog.new b(null).execute(new Void[0]);
                }
            }
        }

        public a(a0 a0Var) {
            this.a = a0Var;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            this.a.f(-1).setOnClickListener(new ViewOnClickListenerC0008a());
        }
    }

    public class b extends AsyncTask<Void, Void, Void> {
        public String a;
        public boolean b;
        public boolean c;

        public b(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (TagEditDialog.this.getActivity() == null) {
                return null;
            }
            try {
                on6.i(TagEditDialog.this.getActivity().getApplicationContext()).l(TagEditDialog.this.f, this.a, this.b, this.c);
                return null;
            } catch (Exception e) {
                n56.X1(TagEditDialog.this.getActivity(), e.getLocalizedMessage());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            if (TagEditDialog.this.getActivity() == null) {
                return;
            }
            ProgressDialog progressDialog = TagEditDialog.this.h;
            if (progressDialog != null && progressDialog.isShowing() && !TagEditDialog.this.getActivity().isFinishing()) {
                TagEditDialog.this.h.dismiss();
            }
            TagEditDialog.this.dismissAllowingStateLoss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (TagEditDialog.this.getActivity() == null) {
                return;
            }
            TagEditDialog tagEditDialog = TagEditDialog.this;
            tagEditDialog.h = ProgressDialog.show(tagEditDialog.getActivity(), null, TagEditDialog.this.getText(R.string.msg_saving), true, true);
            this.a = TagEditDialog.this.mNameText.getText().toString();
            this.b = TagEditDialog.this.mExcludeCheck.isChecked();
            this.c = TagEditDialog.this.mHideCheck.isChecked();
        }
    }

    public static void h(wb wbVar, String str) {
        try {
            TagEditDialog tagEditDialog = new TagEditDialog();
            Bundle bundle = new Bundle();
            bundle.putString("tagUid", str);
            tagEditDialog.setArguments(bundle);
            xb xbVar = (xb) wbVar;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, tagEditDialog, "fragment_tag_edit", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    public final void d() {
        List<ip6> listF;
        lp6 lp6Var = this.f;
        if (lp6Var != null && lp6Var.e()) {
            this.mSubPreferences.setVisibility(8);
            return;
        }
        Context applicationContext = getActivity().getApplicationContext();
        lp6 lp6Var2 = this.f;
        int i2 = 0;
        if (lp6Var2 != null) {
            String str = lp6Var2.f;
            Uri uri = ip6.A;
            ArrayList arrayList = new ArrayList();
            Cursor cursorK = ep6.x(applicationContext, str, false, true).k();
            listF = arrayList;
            if (cursorK != null) {
                while (cursorK.moveToNext()) {
                    try {
                        arrayList.add(new ip6(cursorK));
                    } finally {
                        cursorK.close();
                    }
                }
            }
        } else {
            listF = ip6.f(applicationContext, true);
        }
        this.g = listF;
        if (listF == null || listF.size() == 0) {
            this.mSubPreferences.setVisibility(8);
            return;
        }
        int i3 = 0;
        int i4 = 0;
        for (ip6 ip6Var : this.g) {
            if (ip6Var.r) {
                i2++;
            }
            if (ip6Var.s) {
                i3++;
            }
            if (ip6Var.t) {
                i4++;
            }
        }
        int size = this.g.size();
        e(this.mNotificationCheck, i2, size);
        e(this.mImageFitCheck, i3, size);
        e(this.mJavascriptCheck, i4, size);
    }

    public final void e(CheckBox checkBox, int i2, int i3) {
        if (i2 == 0) {
            checkBox.setChecked(false);
            checkBox.setEnabled(true);
        } else if (i2 == i3) {
            checkBox.setChecked(true);
            checkBox.setEnabled(true);
        } else {
            checkBox.setChecked(true);
            checkBox.setEnabled(false);
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        n56.y2(getActivity(), R.string.ga_screen_subscription_tag_edit);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        Context applicationContext = getActivity().getApplicationContext();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.e = arguments.getString("tagUid");
        }
        if (!TextUtils.isEmpty(this.e)) {
            this.f = lp6.b(applicationContext, this.e, false);
        }
        setRetainInstance(true);
        t75 t75VarH = new t75(getActivity()).j(R.string.txt_save, null).h(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: hu6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                int i3 = TagEditDialog.i;
            }
        });
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.tag_edit, (ViewGroup) null);
        t75VarH.n(viewInflate);
        lp6 lp6Var = this.f;
        t75VarH.a.e = lp6Var != null ? lp6Var.i : getString(R.string.label_all);
        a0 a0VarA = t75VarH.a();
        a0VarA.getWindow().setSoftInputMode(2);
        a0VarA.setOnShowListener(new a(a0VarA));
        ButterKnife.bind(this, viewInflate);
        if (this.f == null) {
            this.mTagPreferences.setVisibility(8);
        } else {
            this.mNameText.setText(this.f.h(getActivity().getApplicationContext()));
            if (this.f.e()) {
                this.mNameText.setEnabled(false);
            }
            this.mExcludeCheck.setChecked(this.f.l);
            if (this.f.g == 9) {
                this.mExcludeCheck.setVisibility(8);
            }
            this.mHideCheck.setChecked(this.f.m);
        }
        d();
        return a0VarA;
    }
}
