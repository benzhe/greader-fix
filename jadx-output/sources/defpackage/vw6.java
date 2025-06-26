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
import okhttp3.Response;
import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes2.dex */
public class vw6 extends qw6 {
    public EditText e;
    public EditText f;
    public String g;
    public String h;
    public String i;
    public String j;
    public c k;

    public class a implements DialogInterface.OnClickListener {
        public a(vw6 vw6Var) {
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
                vw6 vw6Var = vw6.this;
                String string = vw6Var.e.getText().toString();
                String string2 = vw6Var.f.getText().toString();
                if (string.length() <= 0 || string2.length() <= 0) {
                    n56.X1(vw6Var.getActivity(), vw6Var.getText(R$string.service_login_message));
                    return;
                }
                if (vw6Var.getActivity() != null) {
                    Context applicationContext = vw6Var.getActivity().getApplicationContext();
                    iw6.V(applicationContext, "service_ril_username", string);
                    iw6.V(applicationContext, "service_ril_password", string2);
                }
                vw6Var.d(string, string2, vw6Var.h, vw6Var.i);
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
            String str2;
            c cVar;
            try {
                FormBody.Builder builderAdd = new FormBody.Builder().add("username", this.a).add("password", this.b).add("url", StringEscapeUtils.escapeJava(this.d));
                StringBuilder sb = new StringBuilder();
                sb.append(this.c);
                if (TextUtils.isEmpty(vw6.this.j)) {
                    str = "";
                } else {
                    str = " [" + vw6.this.j + "]";
                }
                sb.append(str);
                FormBody formBodyBuild = builderAdd.add("title", sb.toString()).build();
                Response responseExecute = n56.L().newCall(new Request.Builder().url("https://readitlaterlist.com/v2/add?apikey=" + vw6.this.g).header("Host", "getpocket.com").header(HttpConnection.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=UTF-8").header("X-Accept", HttpConnection.FORM_URL_ENCODED).post(formBodyBuild).build()).execute();
                responseExecute.header("X-Error-Code");
                int iCode = responseExecute.code();
                if (iCode == 400) {
                    str2 = "Invalid request, please make sure you follow the documentation for proper syntax";
                } else if (iCode == 401) {
                    str2 = "Username and/or password is incorrect";
                } else if (iCode == 403) {
                    str2 = "Rate limit exceeded, please wait a little bit before resubmitting";
                } else if (iCode / 100 == 5) {
                    str2 = "Pocket server issue.";
                } else if (iCode != 200) {
                    str2 = "Invalid http status " + iCode;
                } else {
                    str2 = null;
                }
                if (!TextUtils.isEmpty(str2) && (cVar = vw6.this.k) != null) {
                    cVar.a(iCode, str2);
                }
            } catch (Exception e) {
                c cVar2 = vw6.this.k;
                if (cVar2 != null) {
                    cVar2.a(405, e.getLocalizedMessage());
                }
                e.printStackTrace();
            }
            return null;
        }
    }

    public static void e(wb wbVar, String str, String str2, String str3, String str4, c cVar) {
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        try {
            vw6 vw6Var = new vw6();
            vw6Var.k = cVar;
            Bundle bundle = new Bundle();
            bundle.putString("url", str3);
            bundle.putString("title", str2);
            bundle.putString("api_key", str);
            bundle.putString("from", str4);
            vw6Var.setArguments(bundle);
            xb xbVar = (xb) wbVar;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, vw6Var, "fragment_pocket", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    public final void d(String str, String str2, String str3, String str4) {
        if (getActivity() == null) {
            return;
        }
        n56.X1(getActivity().getApplicationContext(), ((Object) getText(R$string.service_send_to)) + StringUtils.SPACE + ((Object) getText(R$string.service_ril_title)));
        new d(str, str2, str3, str4).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        dismiss();
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Context applicationContext = getActivity().getApplicationContext();
        String strF = iw6.F(applicationContext, "service_ril_username");
        String strF2 = iw6.F(applicationContext, "service_ril_password");
        if (TextUtils.isEmpty(strF) || TextUtils.isEmpty(strF2)) {
            return;
        }
        d(strF, strF2, this.h, this.i);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        getActivity().getApplicationContext();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.i = arguments.getString("url");
            this.h = arguments.getString("title");
            this.g = arguments.getString("api_key");
            this.j = arguments.getString("from");
        }
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.m(R$string.service_ril_title);
        t75 t75VarH = t75Var.j(R$string.txt_save, null).h(R.string.cancel, new a(this));
        View viewInflate = getActivity().getLayoutInflater().inflate(R$layout.service_pocket, (ViewGroup) null);
        t75VarH.n(viewInflate);
        a0 a0VarA = t75VarH.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        this.e = (EditText) viewInflate.findViewById(R$id.username);
        this.f = (EditText) viewInflate.findViewById(R$id.password);
        return a0VarA;
    }
}
