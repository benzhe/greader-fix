package defpackage;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import com.noinnion.android.greader.reader.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class qt6 extends qw6 {
    public static final String[] f = {"login_method", "user_id", "oauth2_token_refresh", "google_login_id", "google_passwd", "google_auth", "google_auth_time", "pro_version_access", "current_version", "last_version", "last_sync_time", "unread_count", "service_ril_username", "service_ril_password", "service_pocket_consumer_key", "service_pocket_access_token", "service_instapaper_username", "service_instapaper_password"};
    public ProgressDialog e;

    public class a implements DialogInterface.OnClickListener {
        public a(qt6 qt6Var) {
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
                qt6 qt6Var = qt6.this;
                String[] strArr = qt6.f;
                Objects.requireNonNull(qt6Var);
                qt6Var.new c(null).execute(new Void[0]);
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

    public class c extends AsyncTask<Void, Void, Boolean> {
        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void[] voidArr) {
            try {
                return Boolean.valueOf(qt6.d(qt6.this));
            } catch (IOException e) {
                n56.X1(qt6.this.getActivity(), e.getLocalizedMessage());
                return Boolean.FALSE;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            ProgressDialog progressDialog = qt6.this.e;
            if (progressDialog != null && progressDialog.isShowing()) {
                qt6.this.e.dismiss();
            }
            if (bool2.booleanValue()) {
                qt6.this.dismiss();
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (qt6.this.getActivity() == null) {
                return;
            }
            qt6 qt6Var = qt6.this;
            qt6Var.e = ProgressDialog.show(qt6Var.getActivity(), null, qt6.this.getText(R.string.msg_saving), true, false);
        }
    }

    public static boolean d(qt6 qt6Var) throws IOException {
        if (qt6Var.getActivity() == null) {
            return false;
        }
        Context applicationContext = qt6Var.getActivity().getApplicationContext();
        if (!Environment.getExternalStorageState().equals("mounted")) {
            throw new IOException("Cannot access external storage: not mounted");
        }
        File filesDir = applicationContext.getFilesDir();
        StringBuilder sbZ = jo.z("../shared_prefs/");
        sbZ.append(applicationContext.getPackageName());
        sbZ.append("_preferences.xml");
        try {
            String strF = hy6.f(new File(filesDir, sbZ.toString()));
            Matcher matcher = Pattern.compile("<.*? name=\"(" + n56.e1(f, "|") + ")\".*?(/>|</.*?>)", 2).matcher(strF);
            for (boolean zFind = matcher.find(); zFind; zFind = matcher.find()) {
                try {
                    strF = strF.replace(matcher.group(0), "");
                } catch (Exception unused) {
                }
            }
            String str = ((strF.replace("</map>", "") + qt6Var.e()) + qt6Var.h()) + "\n</map>";
            String str2 = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(System.currentTimeMillis())) + "_settings.pref";
            hy6.g(dn6.d, str2, gy6.d(str.getBytes()));
            n56.Y1(applicationContext, "Backed up user prefs to " + str2, 1);
            return true;
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            e.printStackTrace();
            n56.X1(applicationContext, "Error: " + message);
            return false;
        }
    }

    public final String e() {
        if (getActivity() == null) {
            return null;
        }
        Context applicationContext = getActivity().getApplicationContext();
        StringBuilder sb = new StringBuilder();
        Iterator it = ((ArrayList) ip6.f(applicationContext, false)).iterator();
        while (it.hasNext()) {
            ip6 ip6Var = (ip6) it.next();
            sb.append("<subscription" + StringUtils.SPACE + "uid=\"" + n56.u0(ip6Var.f) + "\"" + StringUtils.SPACE + "sync_excluded=\"" + ip6Var.p + "\"" + StringUtils.SPACE + "hidden=\"" + ip6Var.q + "\"" + StringUtils.SPACE + "notification=\"" + ip6Var.r + "\"" + StringUtils.SPACE + "image_fit=\"" + ip6Var.s + "\"" + StringUtils.SPACE + "javascript=\"" + ip6Var.t + "\"" + StringUtils.SPACE + "offline_content=\"" + ip6Var.u + "\"" + StringUtils.SPACE + "display_content=\"" + ip6Var.v + "\"" + StringUtils.SPACE + "link_format=\"" + ip6Var.w + "\"" + StringUtils.SPACE + "auto_readability=\"" + ip6Var.x + "\" />\n");
        }
        return sb.toString();
    }

    public final String h() {
        if (getActivity() == null) {
            return null;
        }
        Context applicationContext = getActivity().getApplicationContext();
        StringBuilder sb = new StringBuilder();
        Iterator it = ((ArrayList) lp6.c(applicationContext, true, true, true)).iterator();
        while (it.hasNext()) {
            lp6 lp6Var = (lp6) it.next();
            sb.append("<tag" + StringUtils.SPACE + "uid=\"" + n56.u0(lp6Var.f) + "\"" + StringUtils.SPACE + "label=\"" + n56.u0(lp6Var.i) + "\"" + StringUtils.SPACE + "sync_excluded=\"" + lp6Var.l + "\"" + StringUtils.SPACE + "hidden=\"" + lp6Var.m + "\" />\n");
        }
        return sb.toString();
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        n56.y2(getActivity(), R.string.ga_screen_preference_backup);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        getActivity().getApplicationContext();
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.m(R.string.txt_backup);
        t75 t75VarH = t75Var.j(R.string.txt_backup, null).h(android.R.string.cancel, new a(this));
        t75VarH.n(getActivity().getLayoutInflater().inflate(R.layout.pref_backup, (ViewGroup) null));
        a0 a0VarA = t75VarH.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        return a0VarA;
    }
}
