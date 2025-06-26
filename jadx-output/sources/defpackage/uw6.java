package defpackage;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.R$layout;
import com.noinnion.android.reader.R$string;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import okhttp3.FormBody;
import okhttp3.Request;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class uw6 extends qw6 {
    public EditText e;
    public EditText f;
    public String g;
    public String h;
    public String i;
    public c j;

    public class a implements DialogInterface.OnClickListener {
        public a(uw6 uw6Var) {
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
            public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                uw6 uw6Var = uw6.this;
                String string = uw6Var.e.getText().toString();
                String string2 = uw6Var.f.getText().toString();
                if (string.length() <= 0 || string2.length() <= 0) {
                    n56.X1(uw6Var.getActivity(), uw6Var.getText(R$string.service_login_message));
                    return;
                }
                if (uw6Var.getActivity() != null) {
                    Context applicationContext = uw6Var.getActivity().getApplicationContext();
                    iw6.V(applicationContext, "service_instapaper_username", string);
                    iw6.V(applicationContext, "service_instapaper_password", string2);
                }
                uw6Var.d(string, string2, uw6Var.g, uw6Var.h);
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

    public interface c {
        void a(int i, String str);
    }

    public class d extends AsyncTask<Void, Void, Void> {
        public String a;
        public String b;
        public String c;
        public String d;

        public d(String str, String str2, String str3, String str4) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            String str;
            c cVar;
            try {
                FormBody.Builder builderAdd = new FormBody.Builder().add("username", this.a).add("password", this.b).add("url", this.d);
                StringBuilder sb = new StringBuilder();
                sb.append(this.c);
                if (TextUtils.isEmpty(uw6.this.i)) {
                    str = "";
                } else {
                    str = " [" + uw6.this.i + "]";
                }
                sb.append(str);
                int iCode = n56.L().newCall(new Request.Builder().url("https://www.instapaper.com/api/add").post(builderAdd.add("title", sb.toString()).build()).build()).execute().code();
                String str2 = iCode == 400 ? "Bad request or exceeded the rate limit. Probably missing a required parameter, such as url." : iCode == 403 ? "Invalid username or password." : iCode == 500 ? "The service encountered an error. Please try again later." : null;
                if (!TextUtils.isEmpty(str2) && (cVar = uw6.this.j) != null) {
                    cVar.a(iCode, str2);
                }
            } catch (Exception e) {
                c cVar2 = uw6.this.j;
                if (cVar2 != null) {
                    cVar2.a(405, e.getLocalizedMessage());
                }
                e.printStackTrace();
            }
            return null;
        }
    }

    public static void e(wb wbVar, String str, String str2, String str3, c cVar) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            uw6 uw6Var = new uw6();
            uw6Var.j = cVar;
            Bundle bundle = new Bundle();
            bundle.putString("url", str2);
            bundle.putString("title", str);
            bundle.putString("from", str3);
            uw6Var.setArguments(bundle);
            xb xbVar = (xb) wbVar;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, uw6Var, "fragment_instapaper", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    public final void d(String str, String str2, String str3, String str4) {
        if (getActivity() == null) {
            return;
        }
        n56.X1(getActivity().getApplicationContext(), ((Object) getText(R$string.service_send_to)) + StringUtils.SPACE + ((Object) getText(R$string.service_instapaper_title)));
        new d(str, str2, str3, str4).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        dismiss();
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Context applicationContext = getActivity().getApplicationContext();
        String strF = iw6.F(applicationContext, "service_instapaper_username");
        String strF2 = iw6.F(applicationContext, "service_instapaper_password");
        if (strF == null || strF.length() <= 0 || strF2 == null || strF2.length() <= 0) {
            return;
        }
        d(strF, strF2, this.g, this.h);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.h = arguments.getString("url");
            this.g = arguments.getString("title");
            this.i = arguments.getString("from");
        }
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.m(R$string.service_instapaper_title);
        t75 t75VarH = t75Var.j(R$string.txt_save, null).h(R.string.cancel, new a(this));
        View viewInflate = getActivity().getLayoutInflater().inflate(R$layout.service_instapaper, (ViewGroup) null);
        t75VarH.n(viewInflate);
        a0 a0VarA = t75VarH.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        this.e = (EditText) viewInflate.findViewById(R$id.username);
        this.f = (EditText) viewInflate.findViewById(R$id.password);
        return a0VarA;
    }
}
