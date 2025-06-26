package defpackage;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.ProgressBar;
import androidx.appcompat.app.AlertController;
import com.noinnion.android.reader.R$attr;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.R$layout;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class sw6 extends qw6 {
    public static final /* synthetic */ int o = 0;
    public WebView e;
    public View f;
    public ProgressBar g;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String h = "greader";
    public final Handler n = new Handler();

    public class b extends WebChromeClient {
        public b(a aVar) {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            sw6.this.g.setProgress(i);
            if (i == 100) {
                sw6.this.g.setVisibility(4);
            } else {
                sw6.this.g.setVisibility(0);
            }
        }
    }

    public class c extends WebViewClient {
        public boolean a = false;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                sw6.d(sw6.this);
            }
        }

        public c(a aVar) {
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            if (str.contains("&per_page")) {
                webView.pageUp(true);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            sw6.this.f.setVisibility(8);
            if (str.startsWith("http://disqus.com/logout")) {
                CookieManager.getInstance().removeAllCookie();
                sw6.d(sw6.this);
                return;
            }
            if (str.startsWith("http://disqus.com/next/login-success/") || str.startsWith("http://disqus.com/_ax/twitter/complete/")) {
                sw6.d(sw6.this);
                return;
            }
            if (str.startsWith("http://disqus.com/_ax/google/complete/") || str.startsWith("http://disqus.com/_ax/facebook/complete/")) {
                sw6.this.f.setVisibility(0);
                if (this.a) {
                    sw6.this.n.postDelayed(new a(), 1000L);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            sw6.this.f.setVisibility(0);
            if (str.startsWith("comment:")) {
                sw6.d(sw6.this);
            } else if (str.startsWith("http://disqus.com/_ax/google/complete/") || str.startsWith("http://disqus.com/_ax/facebook/complete/")) {
                this.a = true;
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.a = false;
            webView.loadUrl(str);
            return true;
        }
    }

    public class d extends AsyncTask<Void, Void, Boolean> {
        public d(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void[] voidArr) {
            String strGroup;
            String[] strArr = null;
            if (sw6.this.getActivity() == null || TextUtils.isEmpty(sw6.this.j)) {
                return null;
            }
            sw6 sw6Var = sw6.this;
            try {
                String[] strArr2 = new String[2];
                String str = new sy6(sw6Var.j).c;
                Matcher matcher = Pattern.compile("disqus_shortname[\\s\\t]*=[\\s\\t]*['\"](.*?)['\"]|http://([A-Za-z0-9]+).disqus.com/embed.js|http://disqus.com/\\?ref_noscript=([A-Za-z0-9]+)", 2).matcher(str);
                if (matcher.find()) {
                    strGroup = matcher.group(1);
                    if (strGroup == null) {
                        strGroup = matcher.group(2);
                    }
                    if (strGroup == null) {
                        strGroup = matcher.group(3);
                    }
                } else {
                    strGroup = null;
                }
                if (strGroup != null) {
                    strArr2[0] = strGroup;
                    Matcher matcher2 = Pattern.compile("disqus_([A-Za-z_]+)[\\s\\t]*=[\\s\\t]*['\"]?([^'\";]+)['\"]?[,;]", 2).matcher(str);
                    for (boolean zFind = matcher2.find(); zFind; zFind = matcher2.find()) {
                        if (matcher2.group(1).equals("identifier")) {
                            strArr2[1] = matcher2.group(2);
                        }
                        if (matcher2.group(1).equals("category_id")) {
                            sw6Var.l = matcher2.group(2);
                        } else if (matcher2.group(1).equals("developer")) {
                            sw6Var.m = matcher2.group(2);
                        }
                    }
                    if (strArr2[1] != null) {
                        strArr = strArr2;
                    }
                }
            } catch (IOException unused) {
            }
            if (strArr == null) {
                sw6.this.h = "greader";
            } else {
                sw6 sw6Var2 = sw6.this;
                sw6Var2.h = strArr[0];
                sw6Var2.i = strArr[1];
            }
            return Boolean.TRUE;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            if (sw6.this.getActivity() == null) {
                return;
            }
            if (bool2 == null) {
                sw6.this.dismiss();
            } else {
                sw6.d(sw6.this);
            }
        }
    }

    public static void d(sw6 sw6Var) {
        String string;
        if (sw6Var.h.equals("greader")) {
            StringBuilder sbZ = jo.z("http://greader.co/");
            sbZ.append(sw6Var.i);
            string = sbZ.toString();
        } else {
            string = sw6Var.j;
        }
        String str = string;
        if (str == null) {
            return;
        }
        WebView webView = sw6Var.e;
        StringBuilder sbC = jo.C("<html><head><title>Comments</title>", "<meta name=\"viewport\" content=\"width=device-width\"/>", "<style type=\"text/css\">");
        jo.J(sbC, lw6.k() ? "body {color:#eee;background:#1f1f1f;}" : "body {color:#464646;background:#f9f9f9;}", "</style>", "</head><body>", "<div id=\"disqus_thread\"></div><script type=\"text/javascript\">var disqus_shortname = '");
        sbC.append(sw6Var.h);
        sbC.append("';");
        if (!TextUtils.isEmpty(sw6Var.i)) {
            sbC.append("var disqus_identifier = \"");
            sbC.append(sw6Var.i);
            sbC.append("\";");
        }
        if (!TextUtils.isEmpty(sw6Var.j)) {
            sbC.append("var disqus_url = \"");
            sbC.append(sw6Var.j);
            sbC.append("\";");
        }
        if (!TextUtils.isEmpty(sw6Var.k)) {
            sbC.append("var disqus_title = \"");
            sbC.append(sw6Var.k);
            sbC.append("\";");
        }
        if (!TextUtils.isEmpty(sw6Var.l)) {
            sbC.append("var disqus_category_id = ");
            sbC.append(sw6Var.l);
            sbC.append(";");
        }
        if (!TextUtils.isEmpty(sw6Var.m)) {
            sbC.append("var disqus_developer = ");
            sbC.append(sw6Var.m);
            sbC.append(";");
        }
        webView.loadDataWithBaseURL(str, jo.s(sbC, "(function() {var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);})();</script><noscript>Please enable JavaScript to view comments</a></noscript>", "</body></html>"), "text/html", "UTF-8", "comment://");
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        new d(null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.i = arguments.getString("itemId");
            this.k = arguments.getString("title");
            this.j = arguments.getString("url");
        }
        setRetainInstance(true);
        View viewInflate = getActivity().getLayoutInflater().inflate(R$layout.item_comment_fragment, (ViewGroup) null);
        EditText editText = (EditText) viewInflate.findViewById(R$id.debug_edit);
        editText.setFocusable(true);
        editText.requestFocus();
        t75 t75Var = new t75(getActivity());
        AlertController.b bVar = t75Var.a;
        bVar.t = viewInflate;
        bVar.s = 0;
        this.f = viewInflate.findViewById(R$id.progress_bar);
        WebView webView = (WebView) viewInflate.findViewById(R$id.body);
        this.e = webView;
        webView.setLayerType(1, null);
        ProgressBar progressBar = new ProgressBar(getActivity(), null, R$attr.progressBarHorizontal);
        this.g = progressBar;
        this.e.addView(progressBar, new ViewGroup.LayoutParams(-1, -2));
        this.e.clearCache(true);
        this.e.setWebViewClient(new c(null));
        this.e.setWebChromeClient(new b(null));
        WebSettings settings = this.e.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setUseWideViewPort(true);
        settings.setDomStorageEnabled(true);
        settings.setSaveFormData(false);
        settings.setSavePassword(false);
        settings.setAppCacheEnabled(false);
        settings.setCacheMode(2);
        return t75Var.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.e.clearCache(true);
        this.e.destroy();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onResume();
        try {
            Class.forName("android.webkit.WebView").getMethod("onResume", null).invoke(this.e, null);
            this.e.resumeTimers();
        } catch (Exception unused) {
        }
    }
}
