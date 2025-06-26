package com.noinnion.android.greader.ui.subscription;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.subscription.SubEditDialog;
import com.noinnion.android.greader.ui.subscription.SubEditDialog.b;
import defpackage.a0;
import defpackage.ew6;
import defpackage.ip6;
import defpackage.n56;
import defpackage.on6;
import defpackage.qb;
import defpackage.qw6;
import defpackage.t75;
import defpackage.wb;
import defpackage.xb;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubEditDialog extends qw6 {
    public static final /* synthetic */ int h = 0;

    @BindView(R.id.display_spinner)
    public Spinner displaySpinner;
    public long e = 0;

    @BindView(R.id.sync_excluded)
    public CheckBox excludeCheck;
    public ip6 f;

    @BindView(R.id.feed_url)
    public TextView feedUrlText;
    public ProgressDialog g;

    @BindView(R.id.hide)
    public CheckBox hideCheck;

    @BindView(R.id.image_fit)
    public CheckBox imageFitCheck;

    @BindView(R.id.javascript)
    public CheckBox javascriptCheck;

    @BindView(R.id.load_link_spinner)
    public Spinner loadLinkSpinner;

    @BindView(R.id.name)
    public EditText nameText;

    @BindView(R.id.notification)
    public CheckBox notificationCheck;

    @BindView(R.id.offline_spinner)
    public Spinner offlineSpinner;

    @BindView(R.id.reading_mode_spinner)
    public Spinner readingModeSpinner;

    @BindView(R.id.user_agent_spinner)
    public Spinner userAgentSpinner;

    public class b extends AsyncTask<Void, Void, Void> {
        public ip6 a;

        public b(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (SubEditDialog.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = SubEditDialog.this.getActivity().getApplicationContext();
            try {
                on6.k(SubEditDialog.this.f.e);
                on6.i(applicationContext).k(SubEditDialog.this.f, this.a);
                ew6 ew6Var = on6.a;
                if (ew6Var.a == null) {
                    return null;
                }
                ew6Var.a = SubEditDialog.this.f;
                return null;
            } catch (Exception e) {
                n56.X1(SubEditDialog.this.getActivity(), e.getLocalizedMessage());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            if (SubEditDialog.this.getActivity() == null) {
                return;
            }
            ProgressDialog progressDialog = SubEditDialog.this.g;
            if (progressDialog != null && progressDialog.isShowing() && !SubEditDialog.this.getActivity().isFinishing()) {
                SubEditDialog.this.g.dismiss();
            }
            SubEditDialog.this.dismissAllowingStateLoss();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (SubEditDialog.this.getActivity() == null) {
                return;
            }
            SubEditDialog subEditDialog = SubEditDialog.this;
            subEditDialog.g = ProgressDialog.show(subEditDialog.getActivity(), null, SubEditDialog.this.getText(R.string.msg_saving), true, true);
            ip6 ip6Var = new ip6();
            this.a = ip6Var;
            ip6Var.h = SubEditDialog.this.nameText.getText().toString();
            this.a.u = SubEditDialog.this.offlineSpinner.getSelectedItemPosition() == 0 ? -1 : SubEditDialog.this.offlineSpinner.getSelectedItemPosition() - 1;
            this.a.v = SubEditDialog.this.displaySpinner.getSelectedItemPosition() == 0 ? -1 : SubEditDialog.this.displaySpinner.getSelectedItemPosition() - 1;
            this.a.w = SubEditDialog.this.loadLinkSpinner.getSelectedItemPosition() == 0 ? -1 : SubEditDialog.this.loadLinkSpinner.getSelectedItemPosition() - 1;
            this.a.x = SubEditDialog.this.readingModeSpinner.getSelectedItemPosition() == 0 ? -1 : SubEditDialog.this.readingModeSpinner.getSelectedItemPosition() - 1;
            this.a.y = SubEditDialog.this.userAgentSpinner.getSelectedItemPosition() != 0 ? SubEditDialog.this.userAgentSpinner.getSelectedItemPosition() - 1 : -1;
            this.a.p = SubEditDialog.this.excludeCheck.isChecked();
            this.a.q = SubEditDialog.this.hideCheck.isChecked();
            this.a.r = SubEditDialog.this.notificationCheck.isChecked();
            this.a.s = SubEditDialog.this.imageFitCheck.isChecked();
            this.a.t = SubEditDialog.this.javascriptCheck.isChecked();
        }
    }

    public static void d(wb wbVar, long j) {
        try {
            SubEditDialog subEditDialog = new SubEditDialog();
            Bundle bundle = new Bundle();
            bundle.putLong("subId", j);
            subEditDialog.setArguments(bundle);
            xb xbVar = (xb) wbVar;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, subEditDialog, "fragment_sub_edit", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        n56.y2(getActivity(), R.string.ga_screen_subscription_edit);
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
            n56.X1(getActivity(), getText(R.string.sub_not_found));
            dismiss();
        }
        setRetainInstance(true);
        t75 t75VarH = new t75(getActivity()).j(R.string.txt_save, null).h(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: yt6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                int i2 = SubEditDialog.h;
            }
        });
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.sub_edit, (ViewGroup) null);
        t75VarH.n(viewInflate);
        t75VarH.a.e = this.f.h;
        final a0 a0VarA = t75VarH.a();
        a0VarA.getWindow().setSoftInputMode(2);
        a0VarA.setOnShowListener(new DialogInterface.OnShowListener() { // from class: wt6
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                final SubEditDialog subEditDialog = this.a;
                a0 a0Var = a0VarA;
                Objects.requireNonNull(subEditDialog);
                a0Var.f(-1).setOnClickListener(new View.OnClickListener() { // from class: xt6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SubEditDialog subEditDialog2 = subEditDialog;
                        Objects.requireNonNull(subEditDialog2);
                        subEditDialog2.new b(null).execute(new Void[0]);
                    }
                });
            }
        });
        ButterKnife.bind(this, viewInflate);
        getActivity().getApplicationContext();
        TextView textView = this.feedUrlText;
        ip6 ip6Var = this.f;
        textView.setText(!TextUtils.isEmpty(ip6Var.i) ? ip6Var.i : ip6Var.f.replaceFirst(RssReaderClient.USER_FEED, ""));
        this.nameText.setText(this.f.h);
        this.excludeCheck.setChecked(this.f.p);
        this.hideCheck.setChecked(this.f.q);
        this.notificationCheck.setChecked(this.f.r);
        this.imageFitCheck.setChecked(this.f.s);
        this.javascriptCheck.setChecked(this.f.t);
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(getActivity(), R.array.sub_offline_reading_labels, android.R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.offlineSpinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
        int i = this.f.u;
        this.offlineSpinner.setSelection(i == -1 ? 0 : i + 1);
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource2 = ArrayAdapter.createFromResource(getActivity(), R.array.sub_display_content_labels, android.R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.displaySpinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource2);
        int i2 = this.f.v;
        this.displaySpinner.setSelection(i2 == -1 ? 0 : i2 + 1);
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource3 = ArrayAdapter.createFromResource(getActivity(), R.array.sub_load_link_labels, android.R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource3.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.loadLinkSpinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource3);
        int i3 = this.f.w;
        this.loadLinkSpinner.setSelection(i3 == -1 ? 0 : i3 + 1);
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource4 = ArrayAdapter.createFromResource(getActivity(), R.array.sub_reading_mode_labels, android.R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource4.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.readingModeSpinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource4);
        int i4 = this.f.x;
        this.readingModeSpinner.setSelection(i4 == -1 ? 0 : i4 + 1);
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource5 = ArrayAdapter.createFromResource(getActivity(), R.array.sub_user_agent_labels, android.R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource5.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.userAgentSpinner.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource5);
        int i5 = this.f.y;
        this.userAgentSpinner.setSelection(i5 != -1 ? i5 + 1 : 0);
        return a0VarA;
    }
}
