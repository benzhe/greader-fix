package com.noinnion.android.reader.ui.widget;

import android.content.Context;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.noinnion.android.view.ExtendedWebView;
import defpackage.g08;
import defpackage.gj;
import defpackage.ij;
import defpackage.jj;
import java.util.HashSet;
import java.util.Iterator;
import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;

/* loaded from: classes2.dex */
public class ItemWebView extends ExtendedWebView {
    public boolean e;
    public int f;
    public boolean g;
    public int h;
    public boolean i;
    public boolean j;
    public int k;
    public boolean l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public ProgressBar q;
    public boolean r;

    public class b extends WebChromeClient {
        public b(a aVar) {
        }

        @Override // android.webkit.WebChromeClient
        public void onConsoleMessage(String str, int i, String str2) {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            ItemWebView itemWebView = ItemWebView.this;
            ProgressBar progressBar = itemWebView.q;
            if (progressBar == null || !itemWebView.e) {
                return;
            }
            if (i == 0) {
                i = 1;
            }
            progressBar.setProgress(i);
            if (i == 100) {
                ItemWebView.this.q.setVisibility(4);
            } else {
                ItemWebView.this.q.setVisibility(0);
            }
        }
    }

    public ItemWebView(Context context) {
        super(context);
        this.e = false;
        this.f = 0;
        this.g = false;
        this.h = -1;
        this.i = false;
        this.j = false;
        this.k = -1;
        this.l = false;
        this.m = 0;
        this.n = true;
        this.o = false;
        this.p = true;
        this.r = false;
        a();
    }

    public final void a() {
        setWebChromeClient(new b(null));
        setScrollBarStyle(0);
        setOverScrollMode(2);
        WebSettings settings = getSettings();
        settings.setGeolocationEnabled(false);
        settings.setDomStorageEnabled(true);
        settings.setSaveFormData(false);
        settings.setSavePassword(false);
        settings.setUseWideViewPort(true);
    }

    public boolean b() {
        return this.f == 2;
    }

    public boolean c() {
        return this.f == 0;
    }

    public boolean d() {
        return this.f == 1;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        super.destroy();
    }

    public void e() {
        getSettings().setJavaScriptEnabled(true);
        loadUrl("javascript:function addCss(cssCode){var styleElement = document.createElement(\"style\");styleElement.type=\"text/css\";if(styleElement.styleSheet){styleElement.styleSheet.cssText = cssCode;}else{styleElement.appendChild(document.createTextNode(cssCode));}document.getElementsByTagName(\"head\")[0].appendChild(styleElement);}addCss('p, h1, h2, h3, h4, h5, h6, .wrap_text {max-width: ' + (window.innerWidth-10)+ 'px !important}')");
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.r) {
            this.r = false;
            if (motionEvent.getAction() == 0) {
                onScrollChanged(0, 0, 0, 1);
            }
        }
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void setDarkMode(boolean z) {
        boolean z2;
        HashSet hashSet = new HashSet();
        ij[] ijVarArrValues = ij.values();
        for (int i = 0; i < 45; i++) {
            hashSet.add(ijVarArrValues[i]);
        }
        HashSet hashSet2 = new HashSet();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            gj gjVar = (gj) it.next();
            if (gjVar.i().equals("FORCE_DARK")) {
                hashSet2.add(gjVar);
            }
        }
        if (hashSet2.isEmpty()) {
            throw new RuntimeException("Unknown feature FORCE_DARK");
        }
        Iterator it2 = hashSet2.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (((gj) it2.next()).isSupported()) {
                    z2 = true;
                    break;
                }
            } else {
                z2 = false;
                break;
            }
        }
        if (z2) {
            this.g = z;
            WebSettings settings = getSettings();
            int i2 = z ? 2 : 0;
            if (!ij.FORCE_DARK.k()) {
                throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
            }
            ((WebSettingsBoundaryInterface) g08.a(WebSettingsBoundaryInterface.class, jj.a.a.convertSettings(settings))).setForceDark(i2);
        }
    }

    public ItemWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = 0;
        this.g = false;
        this.h = -1;
        this.i = false;
        this.j = false;
        this.k = -1;
        this.l = false;
        this.m = 0;
        this.n = true;
        this.o = false;
        this.p = true;
        this.r = false;
        a();
    }

    public ItemWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = 0;
        this.g = false;
        this.h = -1;
        this.i = false;
        this.j = false;
        this.k = -1;
        this.l = false;
        this.m = 0;
        this.n = true;
        this.o = false;
        this.p = true;
        this.r = false;
        a();
    }
}
