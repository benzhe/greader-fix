package com.noinnion.android.greader.ui.setting;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import androidx.appcompat.app.AlertController;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseActivity;
import defpackage.a0;
import defpackage.cn6;
import defpackage.dn6;
import defpackage.hy6;
import defpackage.iw6;
import defpackage.jo;
import defpackage.lw6;
import defpackage.n56;
import defpackage.t75;
import defpackage.tt6;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class SendLogActivity extends BaseActivity {
    public static final String D = System.getProperty("line.separator");
    public String A;
    public String[] B;
    public String C;
    public a0 w;
    public Intent x;
    public c y;
    public ProgressDialog z;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SendLogActivity.this.finish();
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SendLogActivity sendLogActivity = SendLogActivity.this;
            Objects.requireNonNull(sendLogActivity);
            ArrayList arrayList = new ArrayList();
            if (sendLogActivity.C != null) {
                arrayList.add("-v");
                arrayList.add(sendLogActivity.C);
            }
            String[] strArr = sendLogActivity.B;
            if (strArr != null) {
                Collections.addAll(arrayList, strArr);
            }
            sendLogActivity.y = (c) sendLogActivity.new c(null).execute(arrayList);
        }
    }

    public class c extends AsyncTask<List<String>, Void, StringBuilder> {
        public c(a aVar) {
        }

        @Override // android.os.AsyncTask
        public StringBuilder doInBackground(List<String>[] listArr) throws IOException {
            List<String>[] listArr2 = listArr;
            StringBuilder sb = new StringBuilder();
            try {
                ArrayList arrayList = new ArrayList();
                arrayList.add("logcat");
                arrayList.add("-d");
                List<String> list = (listArr2 == null || listArr2.length <= 0) ? null : listArr2[0];
                if (list != null) {
                    arrayList.addAll(list);
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()])).getInputStream()));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append(SendLogActivity.D);
                }
            } catch (IOException e) {
                Log.e("SendLogActivity", "CollectLogTask.doInBackground failed", e);
            }
            return sb;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(StringBuilder sb) {
            StringBuilder sb2 = sb;
            if (sb2 == null) {
                SendLogActivity sendLogActivity = SendLogActivity.this;
                ProgressDialog progressDialog = sendLogActivity.z;
                if (progressDialog != null && progressDialog.isShowing()) {
                    sendLogActivity.z.dismiss();
                    sendLogActivity.z = null;
                }
                final SendLogActivity sendLogActivity2 = SendLogActivity.this;
                String string = sendLogActivity2.getString(R.string.log_failed_to_get_log_message);
                t75 t75Var = new t75(sendLogActivity2);
                String string2 = sendLogActivity2.getString(R.string.app_name);
                AlertController.b bVar = t75Var.a;
                bVar.e = string2;
                bVar.g = string;
                bVar.c = android.R.drawable.ic_dialog_alert;
                t75Var.j(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: vs6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        sendLogActivity2.finish();
                    }
                }).e();
                return;
            }
            int iMax = Math.max(sb2.length() - 100000, 0);
            if (iMax > 0) {
                sb2.delete(0, iMax);
            }
            if (Environment.getExternalStorageState().equals("mounted")) {
                StringBuilder sbZ = jo.z("log_");
                sbZ.append(System.currentTimeMillis());
                sbZ.append(".txt");
                String string3 = sbZ.toString();
                try {
                    hy6.g(Environment.getExternalStorageDirectory() + "/gReader/.log/", string3, sb2.toString());
                    SendLogActivity sendLogActivity3 = SendLogActivity.this;
                    String str = sendLogActivity3.A;
                    if (str != null) {
                        sendLogActivity3.x.putExtra("android.intent.extra.TEXT", str);
                    }
                    Context applicationContext = SendLogActivity.this.getApplicationContext();
                    SendLogActivity.this.x.putExtra("android.intent.extra.STREAM", FileProvider.a(applicationContext, applicationContext.getApplicationContext().getPackageName() + ".fileprovider").b(new File(dn6.b + string3)));
                    SendLogActivity.this.x.addFlags(1);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                if (SendLogActivity.this.A != null) {
                    sb2.insert(0, SendLogActivity.D);
                    sb2.insert(0, SendLogActivity.this.A);
                }
                SendLogActivity.this.x.putExtra("android.intent.extra.TEXT", sb2.toString());
            }
            SendLogActivity sendLogActivity4 = SendLogActivity.this;
            sendLogActivity4.startActivity(Intent.createChooser(sendLogActivity4.x, sendLogActivity4.getString(R.string.log_chooser_title)));
            SendLogActivity sendLogActivity5 = SendLogActivity.this;
            ProgressDialog progressDialog2 = sendLogActivity5.z;
            if (progressDialog2 != null && progressDialog2.isShowing()) {
                sendLogActivity5.z.dismiss();
                sendLogActivity5.z = null;
            }
            SendLogActivity sendLogActivity6 = SendLogActivity.this;
            a0 a0Var = sendLogActivity6.w;
            if (a0Var != null && a0Var.isShowing()) {
                sendLogActivity6.w.dismiss();
                sendLogActivity6.w = null;
            }
            SendLogActivity.this.finish();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            SendLogActivity sendLogActivity = SendLogActivity.this;
            String string = sendLogActivity.getString(R.string.log_acquiring_log_progress_dialog_message);
            Objects.requireNonNull(sendLogActivity);
            ProgressDialog progressDialog = new ProgressDialog(sendLogActivity);
            sendLogActivity.z = progressDialog;
            progressDialog.setIndeterminate(true);
            sendLogActivity.z.setMessage(string);
            sendLogActivity.z.setCancelable(true);
            sendLogActivity.z.setOnCancelListener(new tt6(sendLogActivity));
            sendLogActivity.z.show();
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws IOException {
        boolean booleanExtra;
        boolean booleanExtra2;
        boolean booleanExtra3;
        y(bundle, true, false);
        getWindow().setLayout(0, 0);
        n56.y2(this, R.string.ga_screen_send_log);
        this.x = null;
        Intent intent = getIntent();
        if (intent != null) {
            booleanExtra2 = intent.getBooleanExtra("com.noinnion.android.greader.reader.extra.SEND_LOG", false);
            booleanExtra3 = intent.getBooleanExtra("com.noinnion.android.greader.reader.extra.FEATURE_REQUEST", false);
            booleanExtra = intent.getBooleanExtra("com.noinnion.android.greader.reader.extra.BUG_REPORT", false);
        } else {
            booleanExtra = false;
            booleanExtra2 = false;
            booleanExtra3 = false;
        }
        this.B = new String[]{"*:W"};
        if (this.x == null) {
            Intent intent2 = new Intent("android.intent.action.SEND");
            this.x = intent2;
            intent2.setType("text/plain");
            this.x.putExtra("android.intent.extra.EMAIL", new String[]{"noinnion@gmail.com"});
            String string = booleanExtra3 ? getString(R.string.feedback_feature_request) : booleanExtra ? getString(R.string.feedback_bug_report) : getString(R.string.feedback_subject);
            String strA1 = n56.a1(this);
            if (strA1 == null) {
                strA1 = "?";
            }
            StringBuilder sbB = jo.B(string, StringUtils.SPACE);
            sbB.append((Object) getText(R.string.app_name));
            sbB.append(" (");
            sbB.append(strA1);
            sbB.append(")");
            this.x.putExtra("android.intent.extra.SUBJECT", sbB.toString());
            MessageFormat messageFormat = new MessageFormat(getText(R.string.log_device_info_fmt).toString());
            this.A = getString(R.string.feedback_text);
            this.A = jo.s(new StringBuilder(), this.A, "\n\n");
            StringBuilder sb = new StringBuilder();
            sb.append(this.A);
            String[] strArr = new String[5];
            StringBuilder sbB2 = jo.B(strA1, " (");
            sbB2.append(lw6.n(this, iw6.a0(this)) ? "tablet" : "phone");
            sbB2.append(", ");
            sbB2.append(cn6.c0(this));
            sbB2.append(")");
            strArr[0] = sbB2.toString();
            strArr[1] = Build.MODEL;
            strArr[2] = Build.VERSION.RELEASE;
            String str = "Unavailable";
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/version"), RecyclerView.a0.FLAG_TMP_DETACHED);
                try {
                    String line = bufferedReader.readLine();
                    bufferedReader.close();
                    Matcher matcher = Pattern.compile("\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\([^)]+\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)").matcher(line);
                    if (!matcher.matches()) {
                        Log.e("SendLogActivity", "Regex did not match on /proc/version: " + line);
                    } else if (matcher.groupCount() < 4) {
                        Log.e("SendLogActivity", "Regex match on /proc/version only returned " + matcher.groupCount() + " groups");
                    } else {
                        str = matcher.group(1) + "\n" + matcher.group(2) + StringUtils.SPACE + matcher.group(3) + "\n" + matcher.group(4);
                    }
                } catch (Throwable th) {
                    bufferedReader.close();
                    throw th;
                }
            } catch (IOException e) {
                Log.e("SendLogActivity", "IO Exception when getting kernel version for Device Info screen", e);
            }
            strArr[3] = str;
            strArr[4] = Build.DISPLAY;
            sb.append(messageFormat.format(strArr));
            this.A = sb.toString();
            this.C = "time";
        }
        if (!booleanExtra2) {
            this.x.putExtra("android.intent.extra.TEXT", this.A);
            startActivity(Intent.createChooser(this.x, getString(R.string.log_chooser_title)));
            finish();
        } else {
            t75 t75Var = new t75(this);
            t75Var.a.e = getString(R.string.array_feedback_send_log);
            t75Var.a.g = getString(R.string.log_main_dialog_text);
            t75 t75VarJ = t75Var.j(android.R.string.ok, new b());
            t75VarJ.h(android.R.string.cancel, new a());
            this.w = t75VarJ.e();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        z();
        ProgressDialog progressDialog = this.z;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.z.dismiss();
            this.z = null;
        }
        a0 a0Var = this.w;
        if (a0Var != null && a0Var.isShowing()) {
            this.w.dismiss();
            this.w = null;
        }
        super.onPause();
    }

    public void z() {
        c cVar = this.y;
        if (cVar == null || cVar.getStatus() != AsyncTask.Status.RUNNING) {
            return;
        }
        this.y.cancel(true);
        this.y = null;
    }
}
