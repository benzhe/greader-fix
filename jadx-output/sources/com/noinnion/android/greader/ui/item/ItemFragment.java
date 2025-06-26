package com.noinnion.android.greader.ui.item;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.provider.ReaderProvider;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;
import com.noinnion.android.reader.ui.view.WebViewPager;
import com.noinnion.android.reader.ui.widget.ItemWebView;
import com.noinnion.android.view.viewpager.FixedViewPager;
import defpackage.ac7;
import defpackage.ap6;
import defpackage.ax6;
import defpackage.bj7;
import defpackage.co7;
import defpackage.ej7;
import defpackage.ep6;
import defpackage.ew6;
import defpackage.fc7;
import defpackage.gw6;
import defpackage.hy6;
import defpackage.ic7;
import defpackage.im7;
import defpackage.ip6;
import defpackage.iw6;
import defpackage.j4;
import defpackage.jo;
import defpackage.jw6;
import defpackage.kw6;
import defpackage.kx6;
import defpackage.lp6;
import defpackage.lx6;
import defpackage.mh7;
import defpackage.n56;
import defpackage.on6;
import defpackage.ox6;
import defpackage.oy6;
import defpackage.px6;
import defpackage.qb;
import defpackage.rh7;
import defpackage.ro;
import defpackage.rq6;
import defpackage.rw6;
import defpackage.ry6;
import defpackage.sd;
import defpackage.sq6;
import defpackage.sw6;
import defpackage.t75;
import defpackage.tq6;
import defpackage.tw6;
import defpackage.u;
import defpackage.u7;
import defpackage.vd;
import defpackage.vq6;
import defpackage.wb;
import defpackage.wd;
import defpackage.wn7;
import defpackage.xb;
import defpackage.yd;
import defpackage.zb7;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class ItemFragment extends rw6 implements sd.a<Cursor>, View.OnClickListener, View.OnLongClickListener {
    public static final /* synthetic */ int T = 0;
    public View A;
    public View B;
    public kw6 C;
    public boolean D;
    public kx6 E;
    public String F;
    public ViewGroup G;
    public AdView H;
    public NativeAd I;
    public RewardedInterstitialAd J;
    public final BroadcastReceiver K;
    public boolean L;
    public boolean M;
    public GestureDetector N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public long R;
    public final long S;
    public WebViewPager f;
    public b g;
    public ap6.a h;
    public ap6 i;
    public long k;
    public View q;
    public View r;
    public View s;
    public ImageView t;
    public ImageView u;
    public ProgressBar v;
    public View w;
    public final Animation x;
    public final Animation y;
    public View z;
    public int j = -1;
    public final HashSet<Long> l = new HashSet<>();
    public final HashSet<Long> m = new HashSet<>();
    public final HashSet<Long> n = new HashSet<>();
    public final HashSet<Long> o = new HashSet<>();
    public final j4<Integer> p = new j4<>();

    public final class a extends WebViewClient {
        public final String a;
        public int b;
        public boolean c;
        public String d;
        public String e;

        public a(Context context) {
            String strG = iw6.G(context, "ad_block_regex_general", ".*(adserver|adserv|adfarm|smartad|doubleclick|google-analytics\\.com/ga\\.js|google-analytics\\.com/analytics\\.js|ligatus\\.com|adnxs\\.com|intellitxt\\.com|veeseo\\.com|kalooga\\.com|plista\\.com|taboola\\.com|outbrain\\.com|(da|rc)\\.feedsportal\\.com.r).*");
            im7.d(strG, "Prefs.getAdBlockRegexGeneral(c)");
            this.a = strG;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x007d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:24:0x007e). Please report as a decompilation issue!!! */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onLoadResource(android.webkit.WebView r10, java.lang.String r11) {
            /*
                r9 = this;
                java.lang.String r0 = "view"
                defpackage.im7.e(r10, r0)
                java.lang.String r0 = "url"
                defpackage.im7.e(r11, r0)
                int r1 = r9.b
                r2 = 1
                if (r1 != r2) goto L19
                boolean r1 = r9.c
                if (r1 != 0) goto L19
                r1 = r10
                com.noinnion.android.reader.ui.widget.ItemWebView r1 = (com.noinnion.android.reader.ui.widget.ItemWebView) r1
                r1.e()
            L19:
                int r1 = r9.b
                int r1 = r1 + r2
                r9.b = r1
                defpackage.im7.e(r11, r0)
                r0 = 2
                java.lang.String r1 = "youtube.com"
                r3 = 0
                boolean r1 = defpackage.co7.b(r11, r1, r3, r0)
                if (r1 == 0) goto L7d
                java.lang.String r11 = defpackage.n56.O(r11)
                java.lang.String r1 = "decodedUrl"
                defpackage.im7.d(r11, r1)
                java.lang.String r1 = "get_video_info"
                boolean r1 = defpackage.co7.b(r11, r1, r3, r0)
                java.lang.String r4 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
                r5 = 4
                java.lang.String r6 = "&"
                r7 = -1
                r8 = 6
                if (r1 == 0) goto L59
                java.lang.String r0 = "video_id="
                int r0 = defpackage.co7.l(r11, r0, r3, r3, r8)     // Catch: java.lang.Exception -> L7d
                if (r0 <= r7) goto L7d
                int r0 = r0 + 9
                int r1 = defpackage.co7.l(r11, r6, r0, r3, r5)     // Catch: java.lang.Exception -> L7d
                java.lang.String r11 = r11.substring(r0, r1)     // Catch: java.lang.Exception -> L7d
                defpackage.im7.d(r11, r4)     // Catch: java.lang.Exception -> L7d
                goto L7e
            L59:
                java.lang.String r1 = "watch?ajax"
                boolean r1 = defpackage.co7.b(r11, r1, r3, r0)
                if (r1 == 0) goto L7d
                java.lang.String r1 = "watch?v="
                boolean r0 = defpackage.co7.b(r11, r1, r3, r0)
                if (r0 == 0) goto L7d
                int r0 = defpackage.co7.l(r11, r1, r3, r3, r8)     // Catch: java.lang.Exception -> L7d
                if (r0 <= r7) goto L7d
                int r0 = r0 + 8
                int r1 = defpackage.co7.l(r11, r6, r0, r3, r5)     // Catch: java.lang.Exception -> L7d
                java.lang.String r11 = r11.substring(r0, r1)     // Catch: java.lang.Exception -> L7d
                defpackage.im7.d(r11, r4)     // Catch: java.lang.Exception -> L7d
                goto L7e
            L7d:
                r11 = 0
            L7e:
                if (r11 == 0) goto L9d
                int r0 = r11.length()
                if (r0 <= 0) goto L87
                r3 = 1
            L87:
                if (r3 != r2) goto L9d
                com.noinnion.android.greader.ui.item.ItemFragment r0 = com.noinnion.android.greader.ui.item.ItemFragment.this
                androidx.fragment.app.FragmentActivity r0 = r0.getActivity()
                com.noinnion.android.greader.ui.item.ItemFragment r1 = com.noinnion.android.greader.ui.item.ItemFragment.this
                kw6 r1 = com.noinnion.android.greader.ui.item.ItemFragment.e(r1)
                boolean r1 = r1.n
                defpackage.lx6.a(r0, r11, r1)
                r10.stopLoading()
            L9d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.item.ItemFragment.a.onLoadResource(android.webkit.WebView, java.lang.String):void");
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            int i;
            int i2;
            im7.e(webView, "view");
            im7.e(str, "url");
            if (ItemFragment.this.getActivity() == null || (!im7.a(str, this.d)) || im7.a(str, this.e)) {
                return;
            }
            this.e = str;
            ItemFragment itemFragment = ItemFragment.this;
            int i3 = ItemFragment.T;
            WebView webViewO = itemFragment.o();
            ItemWebView itemWebView = (ItemWebView) webView;
            itemWebView.i = false;
            if (!itemWebView.j && ((itemWebView.d() && itemWebView.l) || (itemWebView.b() && (i = itemWebView.m) > 0 && (i == 1 || (((i2 = itemWebView.h) == 1 || i2 == 2) && i == 2))))) {
                ItemFragment.this.w(itemWebView);
                if (webViewO != null && im7.a(webViewO.getTag(), itemWebView.getTag())) {
                    ItemFragment.this.m(itemWebView.f, itemWebView.o, true);
                }
            } else {
                itemWebView.j = false;
            }
            if (itemWebView.n) {
                boolean zC = itemWebView.c();
                itemWebView.getSettings().setJavaScriptEnabled(true);
                itemWebView.loadUrl(zC ? "javascript:function resizeImages() {var minSize=200;var maxSize=window.innerWidth-20;for(x=0;x<document.images.length;x++) {var imageNode=document.images[x];iWidth=imageNode.width;if (iWidth > maxSize && iWidth > minSize) {imageNode.setAttribute('width','100%');imageNode.removeAttribute('height');imageNode.removeAttribute('style');}}} function resizeIFrames() {var i,frames;frames=document.getElementsByTagName(\"iframe\"); for(i=0;i<frames.length; ++i) {frames[i].setAttribute('width', '280');frames[i].setAttribute('height', '210');}}resizeImages();" : "javascript:function resizeImages() {var minSize=200;var maxSize=window.innerWidth-30;for(x=0;x<document.images.length;x++) {var imageNode=document.images[x];iWidth=imageNode.width;if (iWidth > maxSize && iWidth > minSize) {imageNode.setAttribute('width',maxSize);imageNode.removeAttribute('height');imageNode.removeAttribute('style');}}} resizeImages();");
            }
            webView.setBackgroundColor(-394759);
            if (itemWebView.b()) {
                WebSettings settings = webView.getSettings();
                im7.d(settings, "view.getSettings()");
                settings.setCacheMode(-1);
                if (webViewO == null || !im7.a(webViewO.getTag(), itemWebView.getTag())) {
                    return;
                }
                ItemFragment.this.m(2, itemWebView.o, itemWebView.i);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            im7.e(webView, "view");
            im7.e(str, "url");
            this.d = str;
            this.e = null;
            this.b = 0;
            if (co7.A(str, "about:blank", false, 2)) {
                this.c = true;
                return;
            }
            this.c = false;
            if (co7.A(str, "file:", false, 2)) {
                return;
            }
            if (co7.A(str, "feed:", false, 2)) {
                ItemFragment itemFragment = ItemFragment.this;
                itemFragment.v(webView, itemFragment.i);
                return;
            }
            ItemFragment itemFragment2 = ItemFragment.this;
            int i = ItemFragment.T;
            WebView webViewO = itemFragment2.o();
            ItemWebView itemWebView = (ItemWebView) webView;
            itemWebView.f = 1;
            if (webViewO == null || !im7.a(webViewO.getTag(), itemWebView.getTag())) {
                return;
            }
            ItemFragment.this.m(1, itemWebView.o, false);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            Context applicationContext;
            String str3;
            im7.e(webView, "view");
            im7.e(str, NSRSS20.DESCR);
            im7.e(str2, "failingUrl");
            super.onReceivedError(webView, i, str, str2);
            try {
                FragmentActivity activity = ItemFragment.this.getActivity();
                if (activity == null || (applicationContext = activity.getApplicationContext()) == null) {
                    return;
                }
                ap6 ap6Var = ItemFragment.this.i;
                if (ap6Var == null || (str3 = ap6Var.h) == null) {
                    str3 = "";
                }
                webView.loadDataWithBaseURL("file:///android_asset/html/", n56.I(applicationContext, str, str3, str2), "text/html", "utf-8", null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            im7.e(webView, "view");
            im7.e(webResourceRequest, "request");
            String string = webResourceRequest.getUrl().toString();
            im7.d(string, "request.url.toString()");
            String str = this.a;
            im7.e(str, "pattern");
            Pattern patternCompile = Pattern.compile(str);
            im7.d(patternCompile, "Pattern.compile(pattern)");
            im7.e(patternCompile, "nativePattern");
            im7.e(string, "input");
            if (!patternCompile.matcher(string).matches()) {
                im7.e(string, "url");
                boolean z = false;
                if (co7.b(string, "youtube.com", false, 2) && co7.b(string, "playerretry", false, 2)) {
                    z = true;
                }
                if (!z) {
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }
            byte[] bytes = "".getBytes(wn7.a);
            im7.d(bytes, "(this as java.lang.String).getBytes(charset)");
            return new WebResourceResponse("text/html", "UTF-8", new ByteArrayInputStream(bytes));
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) throws Resources.NotFoundException {
            im7.e(webView, "view");
            im7.e(str, "url");
            if (!co7.A(str, "file:", false, 2) && !co7.A(str, "//", false, 2)) {
                if (co7.A(str, "https://play.google.com/store/apps/details?id=", false, 2) || co7.A(str, "market:", false, 2) || co7.A(str, "vnd.youtube:", false, 2)) {
                    jw6.b(ItemFragment.this.getActivity(), str, iw6.Q(ItemFragment.this.getActivity()));
                } else if (co7.A(str, "readability:", false, 2)) {
                    ItemFragment itemFragment = ItemFragment.this;
                    int i = ItemFragment.T;
                    itemFragment.w(webView);
                } else if (co7.A(str, "readaloud:", false, 2)) {
                    ItemFragment.this.K();
                } else if (co7.A(str, "youtube://", false, 2)) {
                    lx6.a(ItemFragment.this.getActivity(), co7.u(str, "youtube://", "", false, 4), ItemFragment.e(ItemFragment.this).n);
                } else if (co7.A(str, "media://", false, 2)) {
                    String strU = co7.u(str, "media://", "", false, 4);
                    FragmentActivity activity = ItemFragment.this.getActivity();
                    if (activity != null) {
                        n56.U1(activity, ap6.k(activity, "uid", strU, false));
                    }
                } else if (co7.A(str, "comment:", false, 2)) {
                    ItemFragment itemFragment2 = ItemFragment.this;
                    ap6 ap6Var = itemFragment2.i;
                    if (ap6Var != null) {
                        wb fragmentManager = itemFragment2.getFragmentManager();
                        String str2 = ap6Var.f;
                        String str3 = ap6Var.h;
                        String str4 = ap6Var.k;
                        int i2 = sw6.o;
                        try {
                            sw6 sw6Var = new sw6();
                            Bundle bundle = new Bundle();
                            bundle.putString("itemId", str2);
                            bundle.putString("title", str3);
                            bundle.putString("url", str4);
                            sw6Var.setArguments(bundle);
                            xb xbVar = (xb) fragmentManager;
                            Objects.requireNonNull(xbVar);
                            qb qbVar = new qb(xbVar);
                            qbVar.f(0, sw6Var, "fragment_item_comment", 1);
                            qbVar.d();
                        } catch (Exception unused) {
                        }
                    }
                } else {
                    webView.loadUrl(str);
                }
            }
            return true;
        }
    }

    public final class b extends ry6 {
        public final SparseArray<WebView> c = new SparseArray<>(3);

        public b() {
        }

        @Override // defpackage.ry6
        public void a(ViewGroup viewGroup, int i, Object obj) {
            im7.e(viewGroup, "collection");
            im7.e(obj, "view");
            this.c.remove(i);
            viewGroup.removeView((WebView) obj);
            if (!(obj instanceof ItemWebView)) {
                obj = null;
            }
            ItemWebView itemWebView = (ItemWebView) obj;
            if (itemWebView != null) {
                itemWebView.destroy();
            }
        }

        @Override // defpackage.ry6
        public int b() {
            ap6.a aVar = ItemFragment.this.h;
            if (aVar != null) {
                return aVar.getCount();
            }
            return 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:111:0x0215  */
        /* JADX WARN: Removed duplicated region for block: B:113:0x0218  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x022d  */
        /* JADX WARN: Removed duplicated region for block: B:122:0x023d  */
        @Override // defpackage.ry6
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object c(android.view.ViewGroup r14, int r15) {
            /*
                Method dump skipped, instructions count: 594
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.item.ItemFragment.b.c(android.view.ViewGroup, int):java.lang.Object");
        }

        @Override // defpackage.ry6
        public boolean d(View view, Object obj) {
            im7.e(view, "view");
            im7.e(obj, "object");
            return view == obj;
        }
    }

    public final class c implements FixedViewPager.i {
        public c() {
        }

        @Override // com.noinnion.android.view.viewpager.FixedViewPager.i
        public void a(int i, float f, int i2) {
        }

        @Override // com.noinnion.android.view.viewpager.FixedViewPager.i
        public void b(int i) {
            ItemFragment.this.Q = i != 0;
        }

        @Override // com.noinnion.android.view.viewpager.FixedViewPager.i
        public void c(int i) {
            ItemFragment itemFragment;
            FragmentActivity activity;
            Context applicationContext;
            b bVar = ItemFragment.this.g;
            if (bVar != null) {
                ProgressBar progressBar = ItemFragment.this.v;
                if (progressBar != null) {
                    progressBar.setVisibility(8);
                }
                int size = bVar.c.size();
                for (int i2 = 0; i2 < size; i2++) {
                    WebView webViewValueAt = bVar.c.valueAt(i2);
                    if (!(webViewValueAt instanceof ItemWebView)) {
                        webViewValueAt = null;
                    }
                    ItemWebView itemWebView = (ItemWebView) webViewValueAt;
                    if (itemWebView != null) {
                        itemWebView.e = false;
                    }
                }
            }
            ItemFragment itemFragment2 = ItemFragment.this;
            itemFragment2.j = i;
            ap6.a aVar = itemFragment2.h;
            if (aVar != null) {
                aVar.moveToPosition(i);
            }
            ItemFragment.this.j(i);
            ItemFragment.this.D();
            ItemFragment.this.M(i);
            WebView webViewO = ItemFragment.this.o();
            if (!(webViewO instanceof ItemWebView)) {
                webViewO = null;
            }
            ItemWebView itemWebView2 = (ItemWebView) webViewO;
            ItemFragment.this.h(itemWebView2);
            ap6.a aVar2 = ItemFragment.this.h;
            int count = aVar2 != null ? aVar2.getCount() : -1;
            if (i == count - 1 && count % 50 == 0 && (activity = (itemFragment = ItemFragment.this).getActivity()) != null && (applicationContext = activity.getApplicationContext()) != null) {
                ap6.a aVar3 = itemFragment.h;
                int count2 = aVar3 != null ? aVar3.getCount() : -1;
                ew6 ew6Var = on6.a;
                int i3 = ew6Var.h + 1;
                if (i3 * 50 <= count2) {
                    ew6Var.h = i3;
                }
                yd.a(applicationContext).c(new Intent("com.noinnion.android.greader.reader.action.FORCE_REFRESH_UI"));
                sd.b(itemFragment).c(3, null, itemFragment);
            }
            if (itemWebView2 != null) {
                itemWebView2.r = true;
            }
        }
    }

    public final class d implements View.OnCreateContextMenuListener {

        public static final class a implements MenuItem.OnMenuItemClickListener {
            public final /* synthetic */ WebView.HitTestResult b;
            public final /* synthetic */ ItemWebView c;

            public a(WebView.HitTestResult hitTestResult, ItemWebView itemWebView) {
                this.b = hitTestResult;
                this.c = itemWebView;
            }

            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                String extra = this.b.getExtra();
                im7.d(menuItem, NSRSS20.ITEM);
                int itemId = menuItem.getItemId();
                if (itemId == 1) {
                    n56.P1(ItemFragment.this.getActivity(), extra, extra);
                    return true;
                }
                if (itemId == 41) {
                    FragmentActivity activity = ItemFragment.this.getActivity();
                    if (activity != null && !TextUtils.isEmpty(extra)) {
                        try {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setDataAndType(Uri.parse(extra), "image/*");
                            activity.startActivity(intent);
                        } catch (Exception e) {
                            n56.X1(activity, e.getLocalizedMessage());
                        }
                    }
                    return true;
                }
                switch (itemId) {
                    case 43:
                        if (extra != null) {
                            this.c.loadUrl(extra);
                        }
                        return true;
                    case 44:
                        jw6.b(ItemFragment.this.getActivity(), extra, iw6.Q(ItemFragment.this.getActivity()));
                        return true;
                    case 45:
                        FragmentActivity activity2 = ItemFragment.this.getActivity();
                        if (activity2 != null) {
                            try {
                                ((ClipboardManager) activity2.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("gReader", extra));
                            } catch (Error | Exception e2) {
                                n56.X1(activity2, e2.getLocalizedMessage());
                            }
                        }
                        return true;
                    case 46:
                        WebSettings settings = this.c.getSettings();
                        im7.d(settings, "webView.settings");
                        settings.setJavaScriptEnabled(true);
                        this.c.loadUrl("javascript:function findImageTitle(src){for(x=0;x<document.images.length;x++){if (document.images[x].src == src) {window.backdoor.showCaption(src, document.images[x].title);break;}}}findImageTitle(\"%src%\");".replace("%src%", extra));
                        return true;
                    case 47:
                        if (extra != null) {
                            ap6 ap6Var = ItemFragment.this.i;
                            String strI0 = n56.I0(extra, String.valueOf(ap6Var != null ? Long.valueOf(ap6Var.e) : null));
                            if (strI0 != null) {
                                if (co7.A(extra, "file:", false, 2)) {
                                    strI0 = jo.n(strI0, ".png");
                                }
                                n56.r0(ItemFragment.this.getActivity(), extra, strI0, "image/png");
                            }
                        }
                        return true;
                    default:
                        return false;
                }
            }
        }

        public d() {
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            WebView.HitTestResult hitTestResult;
            im7.e(contextMenu, "menu");
            im7.e(view, "v");
            if (!(view instanceof ItemWebView)) {
                view = null;
            }
            ItemWebView itemWebView = (ItemWebView) view;
            if (itemWebView == null || (hitTestResult = itemWebView.getHitTestResult()) == null) {
                return;
            }
            a aVar = new a(hitTestResult, itemWebView);
            if (hitTestResult.getType() == 5 || hitTestResult.getType() == 8) {
                contextMenu.add(0, 41, 0, ItemFragment.this.getText(R.string.item_view_image)).setOnMenuItemClickListener(aVar);
                contextMenu.add(0, 47, 0, ItemFragment.this.getText(R.string.item_save_image)).setOnMenuItemClickListener(aVar);
                contextMenu.add(0, 45, 0, ItemFragment.this.getText(R.string.item_copy_image_url)).setOnMenuItemClickListener(aVar);
                contextMenu.add(0, 46, 0, ItemFragment.this.getText(R.string.item_view_caption)).setOnMenuItemClickListener(aVar);
                contextMenu.setHeaderTitle(hitTestResult.getExtra());
                return;
            }
            if (hitTestResult.getType() == 7 || hitTestResult.getType() == 1) {
                contextMenu.add(0, 43, 0, ItemFragment.this.getText(R.string.txt_open)).setOnMenuItemClickListener(aVar);
                contextMenu.add(0, 44, 0, ItemFragment.this.getText(R.string.menu_open_in_browser)).setOnMenuItemClickListener(aVar);
                contextMenu.add(0, 45, 0, ItemFragment.this.getText(R.string.item_copy_link_url)).setOnMenuItemClickListener(aVar);
                contextMenu.add(0, 1, 0, ItemFragment.this.getText(R.string.item_share_link)).setOnMenuItemClickListener(aVar);
                contextMenu.setHeaderTitle(hitTestResult.getExtra());
            }
        }
    }

    public final class e extends GestureDetector.SimpleOnGestureListener {
        public e() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean z;
            im7.e(motionEvent, "e");
            ItemFragment itemFragment = ItemFragment.this;
            kw6 kw6Var = itemFragment.C;
            if (kw6Var == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            int i = kw6Var.r;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        itemFragment.J();
                    } else if (i == 4) {
                        itemFragment.C();
                    } else if (i == 5) {
                        jw6.b(itemFragment.getActivity(), itemFragment.n(), iw6.Q(itemFragment.getActivity()));
                    } else if (i == 9) {
                        itemFragment.x(true);
                    } else if (i == 13) {
                        FragmentActivity activity = itemFragment.getActivity();
                        if (!(activity instanceof ItemActivity)) {
                            activity = null;
                        }
                        ItemActivity itemActivity = (ItemActivity) activity;
                        if (itemActivity != null) {
                            itemActivity.onBackPressed();
                        }
                        FragmentActivity activity2 = itemFragment.getActivity();
                        HomeTabletActivity homeTabletActivity = (HomeTabletActivity) (activity2 instanceof HomeTabletActivity ? activity2 : null);
                        if (homeTabletActivity != null) {
                            homeTabletActivity.Y();
                        }
                    } else if (i != 14) {
                        z = false;
                    } else {
                        n56.O1(itemFragment.getActivity(), itemFragment.i, true);
                    }
                }
                return !z || super.onDoubleTap(motionEvent);
            }
            itemFragment.H();
            z = true;
            if (z) {
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            im7.e(motionEvent, "e");
            long jCurrentTimeMillis = System.currentTimeMillis();
            ItemFragment itemFragment = ItemFragment.this;
            if (jCurrentTimeMillis - itemFragment.R > itemFragment.S) {
                itemFragment.O = false;
            } else if (itemFragment.O) {
                itemFragment.P = true;
            }
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            im7.e(motionEvent, "e1");
            im7.e(motionEvent2, "e2");
            ItemFragment.this.R = System.currentTimeMillis();
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            im7.e(motionEvent, "e1");
            im7.e(motionEvent2, "e2");
            ItemFragment itemFragment = ItemFragment.this;
            itemFragment.O = true;
            itemFragment.P = false;
            itemFragment.p();
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onSingleTapUp(android.view.MotionEvent r6) {
            /*
                r5 = this;
                java.lang.String r0 = "e"
                defpackage.im7.e(r6, r0)
                com.noinnion.android.greader.ui.item.ItemFragment r0 = com.noinnion.android.greader.ui.item.ItemFragment.this
                boolean r1 = r0.P
                if (r1 == 0) goto L11
                r1 = 0
                r0.O = r1
                r0.P = r1
                goto L29
            L11:
                boolean r0 = r0.O
                if (r0 == 0) goto L24
                long r0 = java.lang.System.currentTimeMillis()
                com.noinnion.android.greader.ui.item.ItemFragment r2 = com.noinnion.android.greader.ui.item.ItemFragment.this
                long r3 = r2.R
                long r0 = r0 - r3
                long r2 = r2.S
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r4 <= 0) goto L29
            L24:
                com.noinnion.android.greader.ui.item.ItemFragment r0 = com.noinnion.android.greader.ui.item.ItemFragment.this
                r0.l()
            L29:
                boolean r6 = super.onSingleTapUp(r6)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.item.ItemFragment.e.onSingleTapUp(android.view.MotionEvent):boolean");
        }
    }

    public final class f {
        public f() {
        }

        @JavascriptInterface
        public final void showCaption(String str, String str2) {
            FragmentActivity activity = ItemFragment.this.getActivity();
            if (activity != null) {
                im7.d(activity, "activity ?: return");
                t75 t75Var = new t75(activity);
                AlertController.b bVar = t75Var.a;
                bVar.e = str;
                bVar.g = str2;
                t75 t75VarJ = t75Var.j(android.R.string.ok, null);
                t75VarJ.a.n = false;
                t75VarJ.a().show();
            }
        }

        @JavascriptInterface
        public final void showImage(String str) {
            if (ItemFragment.this.getActivity() != null) {
                wb fragmentManager = ItemFragment.this.getFragmentManager();
                int i = ax6.j;
                try {
                    ax6 ax6Var = new ax6();
                    Bundle bundle = new Bundle();
                    bundle.putString("url", str);
                    ax6Var.setArguments(bundle);
                    xb xbVar = (xb) fragmentManager;
                    Objects.requireNonNull(xbVar);
                    qb qbVar = new qb(xbVar);
                    qbVar.f(0, ax6Var, "fragment_gif", 1);
                    qbVar.d();
                } catch (Exception unused) {
                }
            }
        }
    }

    public final class g implements View.OnTouchListener {
        public g() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            im7.e(view, "v");
            im7.e(motionEvent, "event");
            GestureDetector gestureDetector = ItemFragment.this.N;
            if (gestureDetector != null) {
                return gestureDetector.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    public static final class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ItemFragment itemFragment = ItemFragment.this;
            if (itemFragment.Q) {
                return;
            }
            View view = itemFragment.A;
            if (view != null && view.getVisibility() == 0) {
                ItemFragment itemFragment2 = ItemFragment.this;
                View view2 = itemFragment2.A;
                if (view2 != null) {
                    view2.startAnimation(itemFragment2.x);
                }
                View view3 = ItemFragment.this.A;
                if (view3 != null) {
                    view3.setVisibility(8);
                }
            }
            View view4 = ItemFragment.this.z;
            if (view4 != null && view4.getVisibility() == 0) {
                ItemFragment itemFragment3 = ItemFragment.this;
                View view5 = itemFragment3.z;
                if (view5 != null) {
                    view5.startAnimation(itemFragment3.x);
                }
                View view6 = ItemFragment.this.z;
                if (view6 != null) {
                    view6.setVisibility(8);
                }
            }
            View view7 = ItemFragment.this.B;
            if (view7 == null || view7 == null || view7.getVisibility() != 0) {
                return;
            }
            ItemFragment itemFragment4 = ItemFragment.this;
            View view8 = itemFragment4.B;
            if (view8 != null) {
                view8.startAnimation(itemFragment4.x);
            }
            View view9 = ItemFragment.this.B;
            if (view9 != null) {
                view9.setVisibility(8);
            }
        }
    }

    public static final class i implements tw6.b {
        public i() {
        }

        @Override // tw6.b
        public final void a(int i, int i2, int i3) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            Context applicationContext;
            ItemFragment itemFragment;
            b bVar;
            FragmentActivity activity = ItemFragment.this.getActivity();
            if (activity == null || (applicationContext = activity.getApplicationContext()) == null || (bVar = (itemFragment = ItemFragment.this).g) == null) {
                return;
            }
            kw6 kw6Var = itemFragment.C;
            if (kw6Var == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            if (kw6Var.d != i) {
                ItemFragment.e(itemFragment).d = i;
                iw6.T(applicationContext, "item_font_type", i);
                int size = bVar.c.size();
                for (int i4 = 0; i4 < size; i4++) {
                    WebView webViewValueAt = bVar.c.valueAt(i4);
                    StringBuilder sbZ = jo.z("ft");
                    sbZ.append(String.valueOf(i));
                    String string = sbZ.toString();
                    webViewValueAt.loadUrl(String.format("javascript:document.body.setAttribute('class', document.body.className.replace('ft0', '%s').replace('ft1', '%s').replace('ft2', '%s').replace('ft3', '%s').replace('ft4', '%s').replace('ft5', '%s').replace('ft6', '%s'));", string, string, string, string, string, string, string));
                }
            }
            if (ItemFragment.e(ItemFragment.this).e != i2) {
                ItemFragment.e(ItemFragment.this).e = i2;
                iw6.T(applicationContext, "item_body_font_size", i2);
                int size2 = bVar.c.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    WebView webViewValueAt2 = bVar.c.valueAt(i5);
                    im7.d(webViewValueAt2, "webView");
                    WebSettings settings = webViewValueAt2.getSettings();
                    im7.d(settings, "webView.settings");
                    settings.setDefaultFontSize(i2);
                }
            }
            if (ItemFragment.e(ItemFragment.this).f != i3) {
                ItemFragment.e(ItemFragment.this).f = i3;
                iw6.T(applicationContext, "item_text_align", i3);
                int size3 = bVar.c.size();
                for (int i6 = 0; i6 < size3; i6++) {
                    WebView webViewValueAt3 = bVar.c.valueAt(i6);
                    StringBuilder sbZ2 = jo.z("ta");
                    sbZ2.append(String.valueOf(i3));
                    String string2 = sbZ2.toString();
                    webViewValueAt3.loadUrl(String.format("javascript:document.body.setAttribute('class', document.body.className.replace('ta1', '%s').replace('ta2', '%s').replace('ta3', '%s'));", string2, string2, string2));
                }
            }
        }
    }

    public ItemFragment() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(500L);
        this.x = alphaAnimation;
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation2.setDuration(500L);
        this.y = alphaAnimation2;
        this.D = true;
        this.E = kx6.PHONE;
        this.K = new BroadcastReceiver() { // from class: com.noinnion.android.greader.ui.item.ItemFragment$mItemReceiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) throws Resources.NotFoundException {
                ItemWebView itemWebView;
                int intExtra;
                WebViewPager webViewPager;
                im7.e(context, "context");
                im7.e(intent, "intent");
                String action = intent.getAction();
                if (action == null) {
                    return;
                }
                int iHashCode = action.hashCode();
                if (iHashCode != -502193979) {
                    if (iHashCode == 1329544128 && action.equals("com.noinnion.android.greader.reader.action.REFRESH_ITEM_POSITION") && (intExtra = intent.getIntExtra("cursorPosition", -1)) > -1 && (webViewPager = this.a.f) != null) {
                        webViewPager.setCurrentItem(intExtra);
                        return;
                    }
                    return;
                }
                if (action.equals("com.noinnion.android.greader.reader.action.DOWNLOADING_UPDATED")) {
                    long longExtra = intent.getLongExtra("itemId", 0L);
                    int intExtra2 = intent.getIntExtra("content_format", 0);
                    if (longExtra == 0 || intExtra2 == 0) {
                        return;
                    }
                    this.a.p.i(longExtra, Integer.valueOf(intExtra2));
                    ItemFragment itemFragment = this.a;
                    ap6 ap6Var = itemFragment.i;
                    if (ap6Var == null || ap6Var.e != longExtra || (itemWebView = (ItemWebView) itemFragment.o()) == null) {
                        return;
                    }
                    if (!ItemFragment.e(this.a).k) {
                        this.a.m(itemWebView.f, true, false);
                        return;
                    }
                    ap6Var.s = true;
                    itemWebView.o = true;
                    ap6Var.t = intExtra2;
                    this.a.r(itemWebView, ap6Var);
                }
            }
        };
        this.S = 400L;
    }

    public static final String d(ItemFragment itemFragment) {
        ItemWebView itemWebView;
        ap6 ap6Var = itemFragment.i;
        if (ap6Var == null || (itemWebView = (ItemWebView) itemFragment.o()) == null) {
            return null;
        }
        String str = ap6Var.h;
        if (itemWebView.d()) {
            String title = itemWebView.getTitle();
            if (title == null) {
                title = ap6Var.h;
            }
            str = title;
        }
        im7.d(str, "title");
        return (co7.A(str, "file:", false, 2) || co7.A(str, "feed:", false, 2)) ? ap6Var.h : str;
    }

    public static final /* synthetic */ kw6 e(ItemFragment itemFragment) {
        kw6 kw6Var = itemFragment.C;
        if (kw6Var != null) {
            return kw6Var;
        }
        im7.k("mReadingOptions");
        throw null;
    }

    public final boolean A(int i2) {
        FragmentActivity activity = getActivity();
        if (activity != null && activity.getApplicationContext() != null) {
            if (i2 == 24) {
                kw6 kw6Var = this.C;
                if (kw6Var == null) {
                    im7.k("mReadingOptions");
                    throw null;
                }
                int i3 = kw6Var.q;
                if (i3 == 1) {
                    if (this.L) {
                        B();
                        return true;
                    }
                    FragmentActivity activity2 = getActivity();
                    if (!(activity2 instanceof ItemActivity)) {
                        activity2 = null;
                    }
                    ItemActivity itemActivity = (ItemActivity) activity2;
                    if (itemActivity != null) {
                        itemActivity.onBackPressed();
                    }
                    FragmentActivity activity3 = getActivity();
                    HomeTabletActivity homeTabletActivity = (HomeTabletActivity) (activity3 instanceof HomeTabletActivity ? activity3 : null);
                    if (homeTabletActivity != null) {
                        homeTabletActivity.Y();
                    }
                    return true;
                }
                if (i3 == 2) {
                    WebView webViewO = o();
                    if (webViewO != null) {
                        if (webViewO.getScrollY() != 0) {
                            webViewO.pageUp(false);
                            p();
                        } else if (this.L) {
                            B();
                        }
                    }
                    return true;
                }
            } else if (i2 == 25) {
                kw6 kw6Var2 = this.C;
                if (kw6Var2 == null) {
                    im7.k("mReadingOptions");
                    throw null;
                }
                int i4 = kw6Var2.q;
                if (i4 == 1) {
                    if (this.M) {
                        y();
                        return true;
                    }
                    FragmentActivity activity4 = getActivity();
                    if (!(activity4 instanceof ItemActivity)) {
                        activity4 = null;
                    }
                    ItemActivity itemActivity2 = (ItemActivity) activity4;
                    if (itemActivity2 != null) {
                        itemActivity2.onBackPressed();
                    }
                    FragmentActivity activity5 = getActivity();
                    HomeTabletActivity homeTabletActivity2 = (HomeTabletActivity) (activity5 instanceof HomeTabletActivity ? activity5 : null);
                    if (homeTabletActivity2 != null) {
                        homeTabletActivity2.Y();
                    }
                    return true;
                }
                if (i4 == 2) {
                    WebView webViewO2 = o();
                    if (webViewO2 != null) {
                        if (webViewO2.getScrollY() + webViewO2.getHeight() < ((int) Math.floor(webViewO2.getScale() * webViewO2.getContentHeight()))) {
                            webViewO2.pageDown(false);
                            p();
                        } else if (this.M) {
                            y();
                        }
                    }
                    return true;
                }
            } else if (i2 == 82) {
                l();
            } else if (i2 == 84) {
                return true;
            }
        }
        return false;
    }

    public final void B() {
        int i2;
        WebViewPager webViewPager = this.f;
        if (webViewPager == null || (i2 = this.j) <= 0 || webViewPager == null) {
            return;
        }
        webViewPager.setCurrentItem(i2 - 1);
    }

    public final void C() {
        Context applicationContext;
        ap6 ap6Var;
        FragmentActivity activity = getActivity();
        if (activity == null || (applicationContext = activity.getApplicationContext()) == null || (ap6Var = this.i) == null) {
            return;
        }
        if (!ap6Var.s) {
            n56.L1(applicationContext, String.valueOf(ap6Var.e));
            ap6Var.s = true;
        } else {
            try {
                L();
            } catch (Exception e2) {
                n56.X1(getActivity(), e2.getLocalizedMessage());
            }
        }
    }

    public final void D() {
        Context applicationContext;
        FragmentActivity activity = getActivity();
        if (activity == null || (applicationContext = activity.getApplicationContext()) == null) {
            return;
        }
        ap6 ap6Var = new ap6(this.h);
        long j = ap6Var.g;
        ew6 ew6Var = on6.a;
        synchronized (on6.class) {
            if (j != 0) {
                if (on6.g.h(j) < 0) {
                    ip6 ip6VarC = ip6.c(applicationContext, j, true);
                    if (ip6VarC != null) {
                        on6.g.i(ip6VarC.e, ip6VarC);
                    }
                }
            }
        }
        this.i = ap6Var;
    }

    public final void E() {
        wb fragmentManager = getFragmentManager();
        kw6 kw6Var = this.C;
        if (kw6Var == null) {
            im7.k("mReadingOptions");
            throw null;
        }
        int i2 = kw6Var.d;
        if (kw6Var == null) {
            im7.k("mReadingOptions");
            throw null;
        }
        int i3 = kw6Var.e;
        if (kw6Var == null) {
            im7.k("mReadingOptions");
            throw null;
        }
        try {
            tw6 tw6Var = new tw6(i2, i3, kw6Var.f, new i());
            tw6Var.setStyle(1, 0);
            xb xbVar = (xb) fragmentManager;
            Objects.requireNonNull(xbVar);
            qb qbVar = new qb(xbVar);
            qbVar.f(0, tw6Var, "fragment_reading", 1);
            qbVar.d();
        } catch (Exception unused) {
        }
    }

    public final void F() {
        Context applicationContext;
        ItemWebView itemWebView;
        FragmentActivity activity = getActivity();
        if (activity == null || (applicationContext = activity.getApplicationContext()) == null || (itemWebView = (ItemWebView) o()) == null) {
            return;
        }
        WebSettings settings = itemWebView.getSettings();
        im7.d(settings, "webView.settings");
        settings.setJavaScriptEnabled(true);
        if (itemWebView.n) {
            itemWebView.getSettings().setJavaScriptEnabled(true);
            itemWebView.loadUrl("javascript:function resetImages(){for(x=0;x<document.images.length;x++){var imageNode=document.images[x];imageNode.removeAttribute('width');imageNode.removeAttribute('height');}}resetImages();function resetBody(){document.body.classList.remove('if')}resetBody();");
            iw6.S(applicationContext, "item_image_fit", false);
        } else {
            boolean zC = itemWebView.c();
            itemWebView.getSettings().setJavaScriptEnabled(true);
            itemWebView.loadUrl(zC ? "javascript:function resizeImages() {var minSize=200;var maxSize=window.innerWidth-20;for(x=0;x<document.images.length;x++) {var imageNode=document.images[x];iWidth=imageNode.width;if (iWidth > maxSize && iWidth > minSize) {imageNode.setAttribute('width','100%');imageNode.removeAttribute('height');imageNode.removeAttribute('style');}}} function resizeIFrames() {var i,frames;frames=document.getElementsByTagName(\"iframe\"); for(i=0;i<frames.length; ++i) {frames[i].setAttribute('width', '280');frames[i].setAttribute('height', '210');}}resizeImages();" : "javascript:function resizeImages() {var minSize=200;var maxSize=window.innerWidth-30;for(x=0;x<document.images.length;x++) {var imageNode=document.images[x];iWidth=imageNode.width;if (iWidth > maxSize && iWidth > minSize) {imageNode.setAttribute('width',maxSize);imageNode.removeAttribute('height');imageNode.removeAttribute('style');}}} resizeImages();");
            iw6.S(applicationContext, "item_image_fit", true);
        }
        itemWebView.n = !itemWebView.n;
    }

    public final void G() {
        WebView webViewO;
        if (getActivity() == null || (webViewO = o()) == null) {
            return;
        }
        ((ItemWebView) webViewO).setDarkMode(!r0.g);
    }

    public final void H() {
        ap6 ap6Var = this.i;
        if (ap6Var != null) {
            if (this.m.contains(Long.valueOf(ap6Var.e))) {
                ImageView imageView = this.u;
                if (imageView != null) {
                    imageView.setImageResource(R.drawable.ic_read_checked);
                }
                this.l.add(Long.valueOf(ap6Var.e));
                this.m.remove(Long.valueOf(ap6Var.e));
                n56.X1(getActivity(), getText(R.string.item_marked_as_read));
                Context applicationContext = getActivity().getApplicationContext();
                if (applicationContext != null) {
                    on6.i(applicationContext).B(new long[]{ap6Var.e}, null, null, false, true);
                }
                return;
            }
            ImageView imageView2 = this.u;
            if (imageView2 != null) {
                imageView2.setImageResource(R.drawable.ic_read_unchecked);
            }
            this.l.remove(Long.valueOf(ap6Var.e));
            this.m.add(Long.valueOf(ap6Var.e));
            n56.X1(getActivity(), getText(R.string.item_marked_as_unread));
            Context applicationContext = getActivity().getApplicationContext();
            if (applicationContext != null) {
                on6.i(applicationContext).B(null, new long[]{ap6Var.e}, null, false, true);
            }
        }
    }

    public final void I() {
        Context applicationContext;
        FragmentActivity activity = getActivity();
        if (activity == null || (applicationContext = activity.getApplicationContext()) == null) {
            return;
        }
        if (this.D) {
            kw6 kw6Var = this.C;
            if (kw6Var == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            kw6Var.c = 0;
            Method method = iw6.a;
            iw6.V(applicationContext, "item_images_loading", String.valueOf(0));
            kw6 kw6Var2 = this.C;
            if (kw6Var2 == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            this.D = iw6.b(applicationContext, kw6Var2.c);
        } else {
            kw6 kw6Var3 = this.C;
            if (kw6Var3 == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            kw6Var3.c = 1;
            Method method2 = iw6.a;
            iw6.V(applicationContext, "item_images_loading", String.valueOf(1));
            kw6 kw6Var4 = this.C;
            if (kw6Var4 == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            this.D = iw6.b(applicationContext, kw6Var4.c);
        }
        WebView webViewO = o();
        if (webViewO != null) {
            WebSettings settings = webViewO.getSettings();
            im7.d(settings, "webView1.settings");
            settings.setLoadsImagesAutomatically(this.D);
            WebSettings settings2 = webViewO.getSettings();
            im7.d(settings2, "webView1.settings");
            settings2.setBlockNetworkImage(!this.D);
        }
    }

    public final void J() {
        Context applicationContext;
        ap6 ap6Var;
        FragmentActivity activity = getActivity();
        if (activity == null || (applicationContext = activity.getApplicationContext()) == null || (ap6Var = this.i) == null) {
            return;
        }
        ep6 ep6VarI = on6.i(applicationContext);
        if (this.n.contains(Long.valueOf(ap6Var.e))) {
            ImageView imageView = this.t;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.ic_star_unchecked);
            }
            ap6Var.r = false;
            this.n.remove(Long.valueOf(ap6Var.e));
            ep6VarI.j(ap6Var, false);
            return;
        }
        ImageView imageView2 = this.t;
        if (imageView2 != null) {
            imageView2.setImageResource(R.drawable.ic_star_checked);
        }
        ap6Var.r = true;
        this.n.add(Long.valueOf(ap6Var.e));
        ep6VarI.j(ap6Var, true);
    }

    public final void K() throws Resources.NotFoundException {
        ap6 ap6Var;
        String url;
        WebView webViewO = o();
        String str = null;
        if (!(webViewO instanceof ItemWebView)) {
            webViewO = null;
        }
        ItemWebView itemWebView = (ItemWebView) webViewO;
        if (itemWebView == null || (ap6Var = this.i) == null) {
            return;
        }
        kw6 kw6Var = this.C;
        if (kw6Var == null) {
            im7.k("mReadingOptions");
            throw null;
        }
        if (kw6Var.m != 1) {
            if (!itemWebView.b() || itemWebView.h < 3) {
                url = ap6Var.k;
                str = url;
            }
            str = "cache://";
        } else if (!itemWebView.c()) {
            if (!itemWebView.b() || itemWebView.h < 3) {
                url = itemWebView.getUrl();
                if (url == null) {
                    url = ap6Var.k;
                }
                if (url != null && co7.b(url, "http://mobilizer.instapaper.com/m?u=", false, 2)) {
                    url = co7.u(url, "http://mobilizer.instapaper.com/m?u=", "", false, 4);
                }
                if (url != null && co7.b(url, "http://googleweblight.com/i?u=", false, 2)) {
                    url = co7.u(url, "http://googleweblight.com/i?u=", "", false, 4);
                }
                str = url;
            }
            str = "cache://";
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            n56.V1(activity, ap6Var.e, str, ap6Var.h);
        }
    }

    public final void L() throws gw6, IOException {
        Context applicationContext;
        ap6 ap6Var;
        ap6 ap6VarL;
        FragmentActivity activity = getActivity();
        if (activity == null || (applicationContext = activity.getApplicationContext()) == null || (ap6Var = this.i) == null || (ap6VarL = ap6.l(applicationContext, ap6Var.e, false)) == null || !ap6VarL.s) {
            return;
        }
        File file = new File(n56.E0(this.F, ap6VarL.f));
        if (file.exists()) {
            hy6.c(file);
        }
        on6.i(applicationContext).h(ap6VarL.e, 0);
        ap6Var.s = false;
        this.p.j(ap6VarL.e);
        WebView webViewO = o();
        if (!(webViewO instanceof ItemWebView)) {
            webViewO = null;
        }
        ItemWebView itemWebView = (ItemWebView) webViewO;
        if (itemWebView != null) {
            itemWebView.o = false;
        }
        u();
    }

    public final void M(int i2) {
        FragmentActivity activity;
        ap6 ap6Var = this.i;
        if (ap6Var == null || (activity = getActivity()) == null) {
            return;
        }
        Intent intent = new Intent("com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST_POSITION");
        intent.putExtra("cursorPosition", i2);
        intent.putExtra("itemId", ap6Var.e);
        yd.a(activity).c(intent);
    }

    @Override // sd.a
    public void f(wd<Cursor> wdVar, Cursor cursor) throws Resources.NotFoundException {
        boolean z;
        Cursor cursor2 = cursor;
        im7.e(wdVar, "loader");
        im7.e(cursor2, "csr");
        if (getActivity() != null) {
            ap6.a aVar = new ap6.a(cursor2);
            this.h = aVar;
            if (aVar.getCount() == 0) {
                aVar.close();
                return;
            }
            if (aVar.isClosed() || !aVar.moveToPosition(this.j)) {
                return;
            }
            long j = this.k;
            if (j > 0) {
                if (!aVar.isClosed() && j > 0) {
                    int position = aVar.getPosition();
                    if (position == -1 || aVar.getLong(aVar.e) != j) {
                        aVar.moveToFirst();
                        while (true) {
                            if (!aVar.moveToNext()) {
                                z = false;
                                break;
                            } else if (aVar.getLong(aVar.e) == j) {
                                z = true;
                                break;
                            }
                        }
                        if (!z) {
                            aVar.moveToPosition(position);
                        }
                    } else {
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    this.j = aVar.getPosition();
                    this.k = 0L;
                }
            }
            WebViewPager webViewPager = this.f;
            if (webViewPager != null) {
                webViewPager.setRestoredCurItem(this.j);
            }
            if (this.g == null) {
                b bVar = new b();
                WebViewPager webViewPager2 = this.f;
                if (webViewPager2 != null) {
                    webViewPager2.setAdapter(bVar);
                }
                this.g = bVar;
            }
            b bVar2 = this.g;
            if (bVar2 != null) {
                synchronized (bVar2) {
                    DataSetObserver dataSetObserver = bVar2.b;
                    if (dataSetObserver != null) {
                        dataSetObserver.onChanged();
                    }
                }
                bVar2.a.notifyChanged();
            }
            j(this.j);
            boolean z2 = !aVar.isLast();
            this.M = z2;
            View view = this.s;
            if (view != null) {
                view.setVisibility(z2 ? 0 : 4);
            }
            boolean zIsFirst = true ^ aVar.isFirst();
            this.L = zIsFirst;
            View view2 = this.r;
            if (view2 != null) {
                view2.setVisibility(zIsFirst ? 0 : 4);
            }
            if (this.j == 0) {
                aVar.moveToPosition(0);
                j(0);
                D();
                WebView webViewO = o();
                if (!(webViewO instanceof ItemWebView)) {
                    webViewO = null;
                }
                h((ItemWebView) webViewO);
                M(0);
            }
        }
    }

    @Override // sd.a
    public wd<Cursor> g(int i2, Bundle bundle) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        vd vdVarU;
        vd vdVar;
        Context applicationContext;
        FragmentActivity activity = getActivity();
        Context applicationContext2 = activity != null ? activity.getApplicationContext() : null;
        FragmentActivity activity2 = getActivity();
        if (activity2 != null && (applicationContext = activity2.getApplicationContext()) != null) {
            if (bundle != null) {
                if (bundle.getBoolean("force_recreate", false)) {
                    on6.a.b();
                    on6.a.g = System.currentTimeMillis();
                    on6.a.f = bundle.getBoolean("unreadOnly", false);
                } else if (bundle.containsKey("unreadOnly")) {
                    on6.a.f = true;
                }
                on6.a.g(applicationContext, bundle);
                long[] longArray = bundle.getLongArray("readIds");
                if (longArray != null) {
                    for (long j : longArray) {
                        this.l.add(Long.valueOf(j));
                    }
                }
                long[] longArray2 = bundle.getLongArray("keepUnreadIds");
                if (longArray2 != null) {
                    for (long j2 : longArray2) {
                        this.m.add(Long.valueOf(j2));
                    }
                }
                long[] longArray3 = bundle.getLongArray("starredIds");
                if (longArray3 != null) {
                    for (long j3 : longArray3) {
                        this.n.add(Long.valueOf(j3));
                    }
                }
                long[] longArray4 = bundle.getLongArray("subIds");
                if (longArray4 != null) {
                    for (long j4 : longArray4) {
                        this.o.add(Long.valueOf(j4));
                    }
                }
                this.j = bundle.getInt("cursorPosition", 0);
                this.k = bundle.getLong("itemId", 0L);
            }
            FragmentActivity activity3 = getActivity();
            ItemActivity itemActivity = (ItemActivity) (activity3 instanceof ItemActivity ? activity3 : null);
            if (itemActivity != null) {
                String strC = on6.a.c(applicationContext);
                u uVarT = itemActivity.t();
                if (uVarT != null) {
                    uVarT.u(strC);
                }
            }
        }
        ew6 ew6Var = on6.a;
        if (applicationContext2 == null) {
            vdVarU = new vd(applicationContext2);
        } else if (ew6Var.d) {
            vdVarU = ep6.u(applicationContext2, ew6Var.f, ew6Var.c, true, false, ew6Var.e(applicationContext2), ew6Var.d());
        } else if (ew6Var.e) {
            vdVarU = ep6.u(applicationContext2, ew6Var.f, ew6Var.c, false, true, ew6Var.e(applicationContext2), ew6Var.d());
        } else {
            ip6 ip6Var = ew6Var.a;
            if (ip6Var != null) {
                long j5 = ip6Var.e;
                boolean z = ew6Var.f;
                String str = ew6Var.c;
                String strE = ew6Var.e(applicationContext2);
                StringBuilder sb = new StringBuilder(ep6.v(z, str, ew6Var.d()));
                sb.append(sb.length() <= 0 ? "" : " AND ");
                sb.append("item.sub_id = ?");
                vdVarU = new vd(applicationContext2, ReaderProvider.t, null, new String(sb), new String[]{String.valueOf(j5)}, strE);
            } else {
                lp6 lp6Var = ew6Var.b;
                if (lp6Var != null) {
                    if (lp6Var.g == 11) {
                        String str2 = lp6Var.f;
                        boolean z2 = ew6Var.f;
                        String str3 = ew6Var.c;
                        String strE2 = ew6Var.e(applicationContext2);
                        StringBuilder sb2 = new StringBuilder(ep6.v(z2, str3, ew6Var.d()));
                        sb2.append(sb2.length() <= 0 ? "" : " AND ");
                        sb2.append("item.sub_id IN (SELECT tag2sub.sub_id FROM tag2sub WHERE tag2sub.tag_uid = ?)");
                        vdVar = new vd(applicationContext2, ReaderProvider.t, null, new String(sb2), new String[]{str2}, strE2);
                    } else {
                        String str4 = lp6Var.f;
                        boolean z3 = ew6Var.f;
                        String str5 = ew6Var.c;
                        String strE3 = ew6Var.e(applicationContext2);
                        StringBuilder sb3 = new StringBuilder(ep6.v(z3, str5, ew6Var.d()));
                        sb3.append(sb3.length() <= 0 ? "" : " AND ");
                        sb3.append("tag2item.item_uid = item.uid AND tag2item.tag_uid = ? AND tag2item.action >= 0");
                        vdVar = new vd(applicationContext2, ReaderProvider.t, null, new String(sb3), new String[]{str4}, strE3);
                    }
                    vdVarU = vdVar;
                } else {
                    vdVarU = ep6.u(applicationContext2, ew6Var.f, ew6Var.c, false, false, ew6Var.e(applicationContext2), ew6Var.d());
                }
            }
        }
        im7.d(vdVarU, "ReaderManager.getItemLoa…(c, ReaderVar.itemFilter)");
        return vdVarU;
    }

    public final void h(ItemWebView itemWebView) {
        View viewFindViewById;
        if (this.h != null) {
            this.M = !r0.isLast();
            this.L = !r0.isFirst();
            View view = this.s;
            if (view != null) {
                view.setVisibility(this.M ? 0 : 4);
            }
            View view2 = this.r;
            if (view2 != null) {
                view2.setVisibility(this.L ? 0 : 4);
            }
            ap6 ap6Var = this.i;
            if (ap6Var != null) {
                if (!ap6Var.v) {
                    this.l.add(Long.valueOf(ap6Var.e));
                    this.o.add(Long.valueOf(ap6Var.g));
                    on6.i(getActivity().getApplicationContext()).B(new long[]{ap6Var.e}, null, null, false, true);
                }
                if (ap6Var.r) {
                    this.n.add(Long.valueOf(ap6Var.e));
                }
                if (this.p.h(ap6Var.e) >= 0) {
                    ap6Var.s = true;
                }
                ImageView imageView = this.t;
                if (imageView != null) {
                    imageView.setImageResource(this.n.contains(Long.valueOf(ap6Var.e)) ? R.drawable.ic_star_checked : R.drawable.ic_star_unchecked);
                }
                ImageView imageView2 = this.u;
                if (imageView2 != null) {
                    imageView2.setImageResource(this.m.contains(Long.valueOf(ap6Var.e)) ? R.drawable.ic_read_unchecked : R.drawable.ic_read_checked);
                }
                View view3 = this.q;
                if (view3 != null && (viewFindViewById = view3.findViewById(R.id.icon_media)) != null) {
                    viewFindViewById.setVisibility(ap6Var.b() ? 0 : 8);
                }
                if (itemWebView != null) {
                    itemWebView.e = true;
                    m(itemWebView.f, ap6Var.s, itemWebView.i);
                    itemWebView.requestFocus(2);
                } else {
                    m(0, ap6Var.s, false);
                }
                l();
            }
        }
    }

    public final void i(boolean z, boolean z2) {
        View view;
        ImageView imageView;
        if (getActivity() == null || (view = this.q) == null || (imageView = (ImageView) view.findViewById(R.id.readability)) == null) {
            return;
        }
        imageView.setVisibility(z ? 0 : 8);
        imageView.setImageResource(z2 ? R.drawable.ic_readability_checked : R.drawable.ic_readability_unchecked);
    }

    public final void j(int i2) {
        StringBuilder sb = new StringBuilder();
        ap6.a aVar = this.h;
        if (aVar != null) {
            int count = aVar.getCount();
            sb.append(i2 + 1);
            sb.append("/");
            sb.append(count);
            if (count % 50 == 0) {
                sb.append("+");
            }
        }
        FragmentActivity activity = getActivity();
        if (!(activity instanceof ItemActivity)) {
            activity = null;
        }
        ItemActivity itemActivity = (ItemActivity) activity;
        if (itemActivity != null) {
            String string = sb.toString();
            u uVarT = itemActivity.t();
            if (uVarT != null) {
                uVarT.s(string);
            }
        }
        FragmentActivity activity2 = getActivity();
        HomeTabletActivity homeTabletActivity = (HomeTabletActivity) (activity2 instanceof HomeTabletActivity ? activity2 : null);
        if (homeTabletActivity != null) {
            String string2 = sb.toString();
            TextView textView = homeTabletActivity.T;
            if (textView != null) {
                textView.setText(string2);
            }
        }
    }

    @Override // sd.a
    public void k(wd<Cursor> wdVar) {
        im7.e(wdVar, "loader");
    }

    public final void l() {
        View view;
        View view2 = this.z;
        if (view2 == null || view2.getVisibility() != 0) {
            View view3 = this.A;
            if (view3 == null || view3.getVisibility() != 0) {
                kw6 kw6Var = this.C;
                if (kw6Var == null) {
                    im7.k("mReadingOptions");
                    throw null;
                }
                if (kw6Var.u && (view = this.A) != null) {
                    view.setVisibility(0);
                }
            }
            View view4 = this.z;
            if (view4 == null || view4.getVisibility() != 0) {
                kw6 kw6Var2 = this.C;
                if (kw6Var2 == null) {
                    im7.k("mReadingOptions");
                    throw null;
                }
                if (kw6Var2.t) {
                    View view5 = this.z;
                    if (view5 != null) {
                        view5.startAnimation(this.y);
                    }
                    View view6 = this.z;
                    if (view6 != null) {
                        view6.setVisibility(0);
                    }
                }
            }
            View view7 = this.B;
            if (view7 != null) {
                if (view7 == null || view7.getVisibility() != 0) {
                    kw6 kw6Var3 = this.C;
                    if (kw6Var3 == null) {
                        im7.k("mReadingOptions");
                        throw null;
                    }
                    if (kw6Var3.s) {
                        View view8 = this.B;
                        if (view8 != null) {
                            view8.startAnimation(this.y);
                        }
                        View view9 = this.B;
                        if (view9 != null) {
                            view9.setVisibility(0);
                        }
                    }
                }
            }
        }
    }

    public final void m(int i2, boolean z, boolean z2) {
        if (i2 == 1) {
            i(true, z2);
            View view = this.w;
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (i2 != 2) {
            i(false, z2);
            View view2 = this.w;
            if (view2 != null) {
                view2.setVisibility(8);
            }
        } else {
            i(true, z2);
            View view3 = this.w;
            if (view3 != null) {
                view3.setVisibility(8);
            }
        }
        FragmentActivity activity = getActivity();
        if (!(activity instanceof ItemActivity)) {
            activity = null;
        }
        ItemActivity itemActivity = (ItemActivity) activity;
        if (itemActivity != null && itemActivity.z != null && itemActivity.x != null && itemActivity.y != null) {
            int iB = u7.b(itemActivity.getApplicationContext(), n56.T0(itemActivity, R.attr.actionbarTextHighlight));
            if (i2 == 1) {
                TextView textView = itemActivity.z;
                if (textView != null) {
                    textView.setTextColor(-1);
                }
                TextView textView2 = itemActivity.x;
                if (textView2 != null) {
                    textView2.setTextColor(-1);
                }
                TextView textView3 = itemActivity.y;
                if (textView3 != null) {
                    textView3.setTextColor(iB);
                }
            } else if (i2 != 2) {
                TextView textView4 = itemActivity.z;
                if (textView4 != null) {
                    textView4.setTextColor(-1);
                }
                TextView textView5 = itemActivity.x;
                if (textView5 != null) {
                    textView5.setTextColor(iB);
                }
                TextView textView6 = itemActivity.y;
                if (textView6 != null) {
                    textView6.setTextColor(-1);
                }
            } else {
                TextView textView7 = itemActivity.z;
                if (textView7 != null) {
                    textView7.setTextColor(iB);
                }
                TextView textView8 = itemActivity.x;
                if (textView8 != null) {
                    textView8.setTextColor(-1);
                }
                TextView textView9 = itemActivity.y;
                if (textView9 != null) {
                    textView9.setTextColor(-1);
                }
            }
            if (z || i2 == 2) {
                TextView textView10 = itemActivity.z;
                if (textView10 != null) {
                    textView10.setVisibility(0);
                }
            } else {
                TextView textView11 = itemActivity.z;
                if (textView11 != null) {
                    textView11.setVisibility(8);
                }
            }
        }
        FragmentActivity activity2 = getActivity();
        HomeTabletActivity homeTabletActivity = (HomeTabletActivity) (activity2 instanceof HomeTabletActivity ? activity2 : null);
        if (homeTabletActivity == null || homeTabletActivity.S == null || homeTabletActivity.Q == null || homeTabletActivity.R == null || homeTabletActivity.U == null) {
            return;
        }
        int iB2 = u7.b(homeTabletActivity.getApplicationContext(), n56.T0(homeTabletActivity, R.attr.actionbarTextHighlight));
        if (i2 == 1) {
            homeTabletActivity.S.setTextColor(-1);
            homeTabletActivity.Q.setTextColor(-1);
            homeTabletActivity.R.setTextColor(iB2);
        } else if (i2 != 2) {
            homeTabletActivity.S.setTextColor(-1);
            homeTabletActivity.Q.setTextColor(iB2);
            homeTabletActivity.R.setTextColor(-1);
        } else {
            homeTabletActivity.S.setTextColor(iB2);
            homeTabletActivity.Q.setTextColor(-1);
            homeTabletActivity.R.setTextColor(-1);
        }
        if (z || i2 == 2) {
            homeTabletActivity.S.setVisibility(0);
            homeTabletActivity.U.setImageResource(R.drawable.ic_menu_unsave);
        } else {
            homeTabletActivity.S.setVisibility(8);
            homeTabletActivity.U.setImageResource(R.drawable.ic_menu_save);
        }
    }

    public final String n() {
        ItemWebView itemWebView;
        ap6 ap6Var = this.i;
        if (ap6Var == null || (itemWebView = (ItemWebView) o()) == null) {
            return null;
        }
        String url = ap6Var.k;
        if (itemWebView.d()) {
            url = itemWebView.getUrl();
            if (url == null) {
                url = ap6Var.k;
            }
            im7.d(url, NSRSS20.LINK);
            if (co7.b(url, "http://mobilizer.instapaper.com/m?u=", false, 2)) {
                url = co7.u(url, "http://mobilizer.instapaper.com/m?u=", "", false, 4);
            }
            im7.d(url, NSRSS20.LINK);
            if (co7.b(url, "http://googleweblight.com/i?u=", false, 2)) {
                url = co7.u(url, "http://googleweblight.com/i?u=", "", false, 4);
            }
        }
        im7.d(url, NSRSS20.LINK);
        if (co7.A(url, "file:", false, 2) || co7.A(url, "feed:", false, 2)) {
            url = ap6Var.k;
        }
        return n56.O(url);
    }

    public final WebView o() {
        WebViewPager webViewPager = this.f;
        if (webViewPager == null) {
            return null;
        }
        int currentItem = webViewPager.getCurrentItem();
        b bVar = this.g;
        if (bVar != null) {
            return bVar.c.get(currentItem);
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle == null) {
            bundle = getArguments();
        } else {
            bundle.putAll(getArguments());
        }
        getLoaderManager().c(3, bundle, this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        im7.e(view, "v");
        switch (view.getId()) {
            case R.id.browser /* 2131296385 */:
                jw6.b(getActivity(), n(), iw6.Q(getActivity()));
                break;
            case R.id.fullscreen /* 2131296555 */:
                FragmentActivity activity = getActivity();
                if (!(activity instanceof ItemActivity)) {
                    if (activity instanceof HomeTabletActivity) {
                        n56.x2(getActivity());
                        break;
                    }
                } else {
                    FragmentActivity activity2 = getActivity();
                    if (!(activity2 instanceof ItemActivity)) {
                        activity2 = null;
                    }
                    ItemActivity itemActivity = (ItemActivity) activity2;
                    if (itemActivity != null) {
                        ImageView imageView = (ImageView) view;
                        im7.e(imageView, "view");
                        Context applicationContext = itemActivity.getApplicationContext();
                        if (on6.g(applicationContext).m) {
                            u uVarT = itemActivity.t();
                            if (uVarT != null) {
                                uVarT.w();
                            }
                            imageView.setImageResource(R.drawable.ic_expand);
                        } else {
                            u uVarT2 = itemActivity.t();
                            if (uVarT2 != null) {
                                uVarT2.f();
                            }
                            imageView.setImageResource(R.drawable.ic_contract);
                        }
                        on6.g(applicationContext).m = true ^ on6.g(applicationContext).m;
                        n56.x2(itemActivity);
                        break;
                    }
                }
                break;
            case R.id.go_back /* 2131296559 */:
                WebView webViewO = o();
                if (webViewO != null) {
                    webViewO.goBack();
                    break;
                }
                break;
            case R.id.icon_media /* 2131296585 */:
                ap6 ap6Var = this.i;
                if (ap6Var != null) {
                    FragmentActivity activity3 = getActivity();
                    long j = ap6Var.e;
                    if (activity3 != null) {
                        n56.U1(activity3, ap6.l(activity3, j, false));
                        break;
                    }
                }
                break;
            case R.id.icon_star /* 2131296590 */:
                J();
                break;
            case R.id.keep_unread /* 2131296627 */:
                H();
                break;
            case R.id.next /* 2131296783 */:
                y();
                break;
            case R.id.previous /* 2131296847 */:
                B();
                break;
            case R.id.readability /* 2131296864 */:
                ItemWebView itemWebView = (ItemWebView) o();
                if (itemWebView != null) {
                    w(itemWebView);
                    m(itemWebView.f, itemWebView.o, itemWebView.i);
                    break;
                }
                break;
            case R.id.service /* 2131296931 */:
                FragmentActivity activity4 = getActivity();
                if (activity4 != null) {
                    im7.d(activity4, "fragmentActivity");
                    Context applicationContext2 = activity4.getApplicationContext();
                    if (applicationContext2 != null) {
                        ro.c cVar = new ro.c(activity4);
                        cVar.d = getText(R.string.preference_category_services);
                        cVar.e = true;
                        if (iw6.f(applicationContext2, "service_translate", true)) {
                            cVar.b(1, R.drawable.ic_service_translate, R.string.menu_translate);
                        }
                        if (iw6.f(applicationContext2, "service_everclip", true)) {
                            cVar.b(2, R.drawable.ic_service_everclip, R.string.service_everclip_title);
                        }
                        if (iw6.f(applicationContext2, "service_facebook", true)) {
                            cVar.b(3, R.drawable.ic_service_facebook, R.string.service_facebook_title);
                        }
                        if (iw6.f(applicationContext2, "service_twitter", true)) {
                            cVar.b(4, R.drawable.ic_service_twitter, R.string.service_twitter_title);
                        }
                        if (iw6.f(applicationContext2, "service_ril", true)) {
                            cVar.b(6, R.drawable.ic_service_pocket, R.string.service_ril_title);
                        }
                        if (iw6.f(applicationContext2, "service_instapaper", true)) {
                            cVar.b(8, R.drawable.ic_service_instapaper, R.string.service_instapaper_title);
                        }
                        if (iw6.f(applicationContext2, "service_google_mobilizer", true)) {
                            cVar.b(9, R.drawable.ic_service_mobilizer_google, R.string.service_google_mobilizer_title);
                        }
                        if (iw6.f(applicationContext2, "service_readability_mobilizer", true)) {
                            cVar.b(11, R.drawable.ic_service_mobilizer_readability, R.string.service_readability_mobilizer_title);
                        }
                        cVar.f = new vq6(this);
                        cVar.d();
                        break;
                    }
                }
                break;
            case R.id.share /* 2131296935 */:
                ap6 ap6Var2 = this.i;
                if (ap6Var2 != null) {
                    n56.O1(getActivity(), ap6Var2, true);
                    break;
                }
                break;
            case R.id.voice_reading /* 2131297116 */:
                K();
                break;
            case R.id.zoom_in /* 2131297138 */:
                WebView webViewO2 = o();
                if (webViewO2 != null && webViewO2.zoomIn()) {
                    ((ItemWebView) webViewO2).e();
                    break;
                }
                break;
            case R.id.zoom_out /* 2131297139 */:
                WebView webViewO3 = o();
                if (webViewO3 != null && webViewO3.zoomOut()) {
                    ((ItemWebView) webViewO3).e();
                    break;
                }
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        if (bundle == null) {
            bundle = getArguments();
        }
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.noinnion.android.greader.reader.action.DOWNLOADING_UPDATED");
            intentFilter.addAction("com.noinnion.android.greader.reader.action.REFRESH_ITEM_POSITION");
            im7.d(activity, "activity");
            yd.a(activity.getApplicationContext()).b(this.K, intentFilter);
            if (getResources().getBoolean(R.bool.isTablet10Inch)) {
                this.E = kx6.TABLET_10;
            }
            if (getResources().getBoolean(R.bool.isTablet7Inch)) {
                this.E = kx6.TABLET_7;
            }
            n56.y2(activity, R.string.ga_screen_item_view);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03f9  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onCreateView(android.view.LayoutInflater r18, android.view.ViewGroup r19, android.os.Bundle r20) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1033
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.item.ItemFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    @Override // defpackage.rw6, androidx.fragment.app.Fragment
    public void onDestroy() {
        Context applicationContext;
        Context applicationContext2;
        FragmentActivity activity = getActivity();
        if (activity != null && (applicationContext2 = activity.getApplicationContext()) != null) {
            yd.a(applicationContext2).d(this.K);
        }
        HashSet<Long> hashSet3 = this.o;
        long[] jArrB3 = hashSet3.size() != 0 ? n56.B(hashSet3) : null;
        FragmentActivity activity2 = getActivity();
        if (activity2 != null && (applicationContext = activity2.getApplicationContext()) != null) {
            on6.i(applicationContext).B(null, null, jArrB3, false, true);
        }
        ap6.a aVar = this.h;
        if (aVar != null && !aVar.isClosed()) {
            aVar.close();
        }
        this.h = null;
        b bVar = this.g;
        if (bVar != null) {
            int size = bVar.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                WebView webViewValueAt = bVar.c.valueAt(i2);
                if (!(webViewValueAt instanceof ItemWebView)) {
                    webViewValueAt = null;
                }
                ItemWebView itemWebView = (ItemWebView) webViewValueAt;
                if (itemWebView != null) {
                    itemWebView.stopLoading();
                    itemWebView.destroy();
                }
            }
            SparseArray<WebView> sparseArray = bVar.c;
            sparseArray.removeAtRange(0, sparseArray.size());
        }
        AdView adView = this.H;
        if (adView != null) {
            adView.destroy();
        }
        this.H = null;
        NativeAd nativeAd = this.I;
        if (nativeAd != null) {
            nativeAd.destroy();
        }
        this.I = null;
        RewardedInterstitialAd rewardedInterstitialAd = this.J;
        if (rewardedInterstitialAd != null) {
            im7.e(rewardedInterstitialAd, "$this$destroy");
            rewardedInterstitialAd.setFullScreenContentCallback(null);
        }
        this.J = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        im7.e(view, "v");
        int id = view.getId();
        if (id == R.id.browser) {
            jw6.b(getActivity(), n(), false);
            return true;
        }
        if (id != R.id.share || this.i == null) {
            return false;
        }
        n56.O1(getActivity(), this.i, false);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        AdView adView = this.H;
        if (adView != null) {
            adView.pause();
        }
        b bVar = this.g;
        if (bVar != null) {
            int size = bVar.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                WebView webViewValueAt = bVar.c.valueAt(i2);
                if (!(webViewValueAt instanceof ItemWebView)) {
                    webViewValueAt = null;
                }
                ItemWebView itemWebView = (ItemWebView) webViewValueAt;
                if (itemWebView != null) {
                    try {
                        Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(itemWebView, null);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        WebView webViewO = o();
        if (webViewO != null) {
            webViewO.pauseTimers();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onResume();
        WebView webViewO = o();
        if (webViewO != null) {
            webViewO.resumeTimers();
        }
        AdView adView = this.H;
        if (adView != null) {
            adView.resume();
        }
        b bVar = this.g;
        if (bVar != null) {
            int size = bVar.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                WebView webViewValueAt = bVar.c.valueAt(i2);
                if (!(webViewValueAt instanceof ItemWebView)) {
                    webViewValueAt = null;
                }
                ItemWebView itemWebView = (ItemWebView) webViewValueAt;
                if (itemWebView != null) {
                    try {
                        Class.forName("android.webkit.WebView").getMethod("onResume", null).invoke(itemWebView, null);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        im7.e(bundle, "outState");
        int i2 = 0;
        if (this.l.size() > 0) {
            long[] jArr = new long[this.l.size()];
            Iterator<Long> it = this.l.iterator();
            int i3 = 0;
            while (it.hasNext()) {
                Long next = it.next();
                im7.d(next, "id");
                jArr[i3] = next.longValue();
                i3++;
            }
            bundle.putLongArray("readIds", jArr);
        }
        if (this.m.size() > 0) {
            long[] jArr2 = new long[this.m.size()];
            Iterator<Long> it2 = this.m.iterator();
            int i4 = 0;
            while (it2.hasNext()) {
                Long next2 = it2.next();
                im7.d(next2, "id");
                jArr2[i4] = next2.longValue();
                i4++;
            }
            bundle.putLongArray("keepUnreadIds", jArr2);
        }
        if (this.n.size() > 0) {
            long[] jArr3 = new long[this.n.size()];
            Iterator<Long> it3 = this.n.iterator();
            int i5 = 0;
            while (it3.hasNext()) {
                Long next3 = it3.next();
                im7.d(next3, "id");
                jArr3[i5] = next3.longValue();
                i5++;
            }
            bundle.putLongArray("starredIds", jArr3);
        }
        if (this.o.size() > 0) {
            long[] jArr4 = new long[this.o.size()];
            Iterator<Long> it4 = this.o.iterator();
            while (it4.hasNext()) {
                Long next4 = it4.next();
                im7.d(next4, "id");
                jArr4[i2] = next4.longValue();
                i2++;
            }
            bundle.putLongArray("subIds", jArr4);
        }
        ap6 ap6Var = this.i;
        if (ap6Var != null) {
            bundle.putLong("itemId", ap6Var.e);
        }
        bundle.putInt("cursorPosition", this.j);
        on6.a.h(bundle);
        super.onSaveInstanceState(bundle);
    }

    public final void p() {
        kw6 kw6Var = this.C;
        if (kw6Var == null) {
            im7.k("mReadingOptions");
            throw null;
        }
        if (kw6Var.v) {
            new Handler().postDelayed(new h(), 400L);
        }
    }

    public final boolean q() {
        ItemWebView itemWebView = (ItemWebView) o();
        return itemWebView == null || itemWebView.n;
    }

    public final boolean r(WebView webView, ap6 ap6Var) {
        FragmentActivity activity;
        Context applicationContext;
        NetworkInfo.State state;
        if (webView != null && ap6Var != null && (activity = getActivity()) != null && (applicationContext = activity.getApplicationContext()) != null) {
            File file = new File(n56.E0(this.F, ap6Var.f), "content.html");
            if (file.exists()) {
                ItemWebView itemWebView = (ItemWebView) webView;
                itemWebView.f = 2;
                itemWebView.h = ap6Var.t;
                NetworkInfo networkInfo = ((ConnectivityManager) applicationContext.getSystemService("connectivity")).getNetworkInfo(1);
                if (!(networkInfo != null && ((state = networkInfo.getState()) == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING))) {
                    WebSettings settings = itemWebView.getSettings();
                    im7.d(settings, "webView.settings");
                    settings.setCacheMode(3);
                }
                WebSettings settings2 = itemWebView.getSettings();
                im7.d(settings2, "webView.settings");
                settings2.setJavaScriptEnabled(false);
                WebSettings settings3 = itemWebView.getSettings();
                im7.d(settings3, "webView.settings");
                settings3.setDefaultTextEncodingName("UTF-8");
                itemWebView.loadUrl("file://" + file.getAbsolutePath());
                return true;
            }
            n56.X1(getActivity(), getText(R.string.download_not_found));
        }
        return false;
    }

    public final void s() {
        ap6 ap6Var = this.i;
        if (ap6Var != null) {
            ItemWebView itemWebView = (ItemWebView) o();
            String str = ap6Var.k;
            im7.d(str, "currentItem.link");
            t(itemWebView, str);
            m(1, ap6Var.s, false);
        }
    }

    public final void t(ItemWebView itemWebView, String str) {
        if (itemWebView == null) {
            return;
        }
        if (itemWebView.k == 1) {
            str = n56.K0(str);
            im7.d(str, "UrlUtils.getGoogleMobilizerUrl(newLink)");
        }
        WebSettings settings = itemWebView.getSettings();
        im7.d(settings, "webView.settings");
        settings.setCacheMode(-1);
        itemWebView.loadUrl(str);
    }

    public final void u() {
        ap6 ap6Var = this.i;
        if (ap6Var != null) {
            v(o(), ap6Var);
            m(0, ap6Var.s, false);
        }
    }

    public final void v(WebView webView, ap6 ap6Var) {
        FragmentActivity activity;
        Context applicationContext;
        ip6 ip6VarC;
        if (webView == null || ap6Var == null || (activity = getActivity()) == null || (applicationContext = activity.getApplicationContext()) == null) {
            return;
        }
        ItemWebView itemWebView = (ItemWebView) webView;
        if (itemWebView.getSettings() == null) {
            return;
        }
        WebSettings settings = itemWebView.getSettings();
        im7.d(settings, "webView.settings");
        settings.setCacheMode(-1);
        long j = ap6Var.g;
        ew6 ew6Var = on6.a;
        synchronized (on6.class) {
            ip6VarC = on6.c(applicationContext, j, true);
        }
        kw6 kw6Var = this.C;
        if (kw6Var == null) {
            im7.k("mReadingOptions");
            throw null;
        }
        itemWebView.loadDataWithBaseURL(null, n56.H(applicationContext, "com.noinnion.android.greader.reader.imageloader", ap6Var, ip6VarC, kw6Var, itemWebView.k, itemWebView.n), "text/html", "UTF-8", "feed://");
        itemWebView.f = 0;
    }

    public final void w(WebView webView) {
        if (!(webView instanceof ItemWebView)) {
            webView = null;
        }
        ItemWebView itemWebView = (ItemWebView) webView;
        if (itemWebView == null || itemWebView.c()) {
            return;
        }
        if (itemWebView.i) {
            if (itemWebView.d() || itemWebView.b()) {
                itemWebView.reload();
            } else {
                h(itemWebView);
            }
            itemWebView.i = false;
            itemWebView.j = true;
            return;
        }
        WebSettings settings = itemWebView.getSettings();
        im7.d(settings, "webView.settings");
        settings.setJavaScriptEnabled(true);
        kx6 kx6Var = this.E;
        char c2 = kx6Var == kx6.TABLET_10 ? (char) 3 : kx6Var == kx6.TABLET_7 ? (char) 2 : (char) 1;
        StringBuilder sb = new StringBuilder(itemWebView.b() ? "javascript:readConvertLinksToFootnotes=false;readStyle='style-newspaper';readSize='size-medium';readMargin='margin-x-narrow';var readability={iframeLoads:0,convertLinksToFootnotes:false,reversePageScroll:false,frameHack:false,biggestFrame:false,bodyCache:null,flags:0x1|0x2|0x4,FLAG_STRIP_UNLIKELYS:0x1,FLAG_WEIGHT_CLASSES:0x2,FLAG_CLEAN_CONDITIONALLY:0x4,maxPages:30,parsedPages:{},pageETags:{},regexps:{unlikelyCandidates:/combx|comment|community|disqus|extra|foot|header|menu|remark|rss|shoutbox|sidebar|sponsor|ad-break|agegate|pagination|pager|popup|tweet|twitter/i,okMaybeItsACandidate:/and|article|body|column|main|shadow/i,positive:/article|body|content|entry|hentry|main|page|pagination|post|text|blog|story/i,negative:/combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|shoutbox|sidebar|sponsor|shopping|tags|tool|widget/i,extraneous:/print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single/i,divToPElements:/<(a|blockquote|dl|div|img|ol|p|pre|table|ul)/i,replaceBrs:/(<br[^>]*>[ \\n\\r\\t]*){2,}/gi,replaceFonts:/<(\\/?)font[^>]*>/gi,trim:/^\\s+|\\s+$/g,normalize:/\\s{2,}/g,killBreaks:/(<br\\s*\\/?>(\\s|&nbsp;?)*){1,}/g,videos:/http:\\/\\/(www\\.)?(youtube|vimeo)\\.com/i,skipFootnoteLink:/^\\s*(\\[?[a-z0-9]{1,2}\\]?|^|edit|citation needed)\\s*$/i,nextLink:/(next|weiter|continue|>([^\\|]|$)|»([^\\|]|$))/i,prevLink:/(prev|earl|old|new|<|«)/i},init:function(){window.onload=window.onunload=function(){};readability.removeScripts(document);if(document.body&&!readability.bodyCache){readability.bodyCache=document.body.innerHTML;}readability.parsedPages[window.location.href.replace(/\\/$/,'')]=true;readability.prepDocument();var overlay=document.createElement(\"div\");var innerDiv=document.createElement(\"div\");var articleTitle=readability.getArticleTitle();var articleContent=readability.grabArticle();var articleFooter=readability.getArticleFooter();if(!articleContent){window.location.href='readability://';articleContent=document.createElement(\"div\");articleContent.id=\"readability-content\";articleContent.innerHTML=[\"<p>Sorry, this page was unable to parse for the content.</p><div class='box'><a href='readability://'>Turn off reading mode</a></div>\"].join('');}overlay.id=\"readOverlay\";innerDiv.id=\"readInner\";document.body.className=readStyle;document.dir=readability.getSuggestedDirection(articleTitle.innerHTML);if(readStyle==\"style-athelas\"||readStyle==\"style-apertura\"){overlay.className=readStyle+\" rdbTypekit\";}else{overlay.className=readStyle;}innerDiv.className=readMargin+\" \"+readSize;if(typeof(readConvertLinksToFootnotes)!=='undefined'&&readConvertLinksToFootnotes===true){readability.convertLinksToFootnotes=true;}innerDiv.appendChild(articleTitle);innerDiv.appendChild(articleContent);innerDiv.appendChild(articleFooter);overlay.appendChild(innerDiv);document.body.innerHTML=\"\";document.body.insertBefore(overlay,document.body.firstChild);document.body.removeAttribute('style');if(readability.frameHack){var readOverlay=document.getElementById('readOverlay');readOverlay.style.height='100%';readOverlay.style.overflow='auto';}if((window.location.protocol+\"//\"+window.location.host+\"/\")==window.location.href){innerDiv.insertBefore(articleContent);}readability.postProcessContent(articleContent);window.scrollTo(0,0);},postProcessContent:function(articleContent){if(readability.convertLinksToFootnotes&&!window.location.href.match(/wikipedia\\.org/g)){readability.addFootnotes(articleContent);}readability.fixImageFloats(articleContent);},fixImageFloats:function(articleContent){var imageWidthThreshold=Math.min(articleContent.offsetWidth,800)*0.55,images=articleContent.getElementsByTagName('img');for(var i=0,il=images.length;i<il;i++){var image=images[i];if(image.offsetWidth>imageWidthThreshold){image.className+=\" blockImage\";}}},getSuggestedDirection:function(text){function sanitizeText(){return text.replace(/@\\w+/,\"\");}function countMatches(match){var matches=text.match(new RegExp(match,\"g\"));return matches!=null?matches.length:0;}function isRTL(){var count_heb=countMatches(\"[\\\\u05B0-\\\\u05F4\\\\uFB1D-\\\\uFBF4]\");var count_arb=countMatches(\"[\\\\u060C-\\\\u06FE\\\\uFB50-\\\\uFEFC]\");return(count_heb+count_arb)*100/text.length>20;}text=sanitizeText(text);return isRTL()?\"rtl\":\"ltr\";},getArticleTitle:function(){var curTitle=\"\",origTitle=\"\";try{curTitle=origTitle=document.title;if(typeof curTitle!=\"string\"){curTitle=origTitle=readability.getInnerText(document.getElementsByTagName('title')[0]);}}catch(e){}if(curTitle.match(/ [\\|\\-] /)){curTitle=origTitle.replace(/(.*)[\\|\\-] .*/gi,'$1');if(curTitle.split(' ').length<3){curTitle=origTitle.replace(/[^\\|\\-]*[\\|\\-](.*)/gi,'$1');}}else if(curTitle.indexOf(': ')!==-1){curTitle=origTitle.replace(/.*:(.*)/gi,'$1');if(curTitle.split(' ').length<3){curTitle=origTitle.replace(/[^:]*[:](.*)/gi,'$1');}}else if(curTitle.length>150||curTitle.length<15){var hOnes=document.getElementsByTagName('h1');if(hOnes.length==1){curTitle=readability.getInnerText(hOnes[0]);}}curTitle=curTitle.replace(readability.regexps.trim,\"\");if(curTitle.split(' ').length<=4){curTitle=origTitle;}var articleTitle=document.createElement(\"h1\");articleTitle.innerHTML=curTitle;return articleTitle;},getArticleFooter:function(){var articleFooter=document.createElement(\"div\");articleFooter.id=\"readFooter\";articleFooter.innerHTML=[\"<div id='rdb-footer-print'>\",\"</div>\",\"<div id='rdb-footer-wrapper'>\",\"</div>\"].join('');return articleFooter;},prepDocument:function(){if(document.body===null){var body=document.createElement(\"body\");try{document.body=body;}catch(e){document.documentElement.appendChild(body);}}var metas = document.getElementsByTagName('meta');for (i=0; i<metas.length; i++) { metas[i].parentElement.removeChild(metas[i]); }var meta = document.createElement('meta');meta.setAttribute('name', 'viewport');meta.setAttribute('content', 'width=device-width');document.getElementsByTagName('head')[0].appendChild(meta);document.body.id=\"readabilityBody\";var frames=document.getElementsByTagName('frame');if(frames.length>0){var bestFrame=null;var bestFrameSize=0;var biggestFrameSize=0;for(var frameIndex=0;frameIndex<frames.length;frameIndex++){var frameSize=frames[frameIndex].offsetWidth+frames[frameIndex].offsetHeight;var canAccessFrame=false;try{frames[frameIndex].contentWindow.document.body;canAccessFrame=true;}catch(eFrames){}if(frameSize>biggestFrameSize){biggestFrameSize=frameSize;readability.biggestFrame=frames[frameIndex];}if(canAccessFrame&&frameSize>bestFrameSize){readability.frameHack=true;bestFrame=frames[frameIndex];bestFrameSize=frameSize;}}if(bestFrame){var newBody=document.createElement('body');newBody.innerHTML=bestFrame.contentWindow.document.body.innerHTML;newBody.style.overflow='scroll';document.body=newBody;var frameset=document.getElementsByTagName('frameset')[0];if(frameset){frameset.parentNode.removeChild(frameset);}}}for(var k=0;k<document.styleSheets.length;k++){if(document.styleSheets[k].href!==null&&document.styleSheets[k].href.lastIndexOf(\"readability\")==-1){document.styleSheets[k].disabled=true;}}var styleTags=document.getElementsByTagName(\"style\");for(var st=0;st<styleTags.length;st++){styleTags[st].textContent=\"\";}document.body.innerHTML=document.body.innerHTML.replace(readability.regexps.replaceFonts,'<$1span>');},addFootnotes:function(articleContent){var footnotesWrapper=document.getElementById('readability-footnotes'),articleFootnotes=document.getElementById('readability-footnotes-list');if(!footnotesWrapper){footnotesWrapper=document.createElement(\"div\");footnotesWrapper.id='readability-footnotes';footnotesWrapper.innerHTML='<h3>References</h3>';footnotesWrapper.style.display='none';articleFootnotes=document.createElement('ol');articleFootnotes.id='readability-footnotes-list';footnotesWrapper.appendChild(articleFootnotes);var readFooter=document.getElementById('readFooter');if(readFooter){readFooter.parentNode.insertBefore(footnotesWrapper,readFooter);}}var articleLinks=articleContent.getElementsByTagName('a');var linkCount=articleFootnotes.getElementsByTagName('li').length;for(var i=0;i<articleLinks.length;i++){var articleLink=articleLinks[i],footnoteLink=articleLink.cloneNode(true),refLink=document.createElement('a'),footnote=document.createElement('li'),linkDomain=footnoteLink.host?footnoteLink.host:document.location.host,linkText=readability.getInnerText(articleLink);if(articleLink.className&&articleLink.className.indexOf('readability-DoNotFootnote')!==-1||linkText.match(readability.regexps.skipFootnoteLink)){continue;}linkCount++;refLink.href='#readabilityFootnoteLink-'+linkCount;refLink.innerHTML='<small><sup>['+linkCount+']</sup></small>';refLink.className='readability-DoNotFootnote';try{refLink.style.color='inherit';}catch(e){}if(articleLink.parentNode.lastChild==articleLink){articleLink.parentNode.appendChild(refLink);}else{articleLink.parentNode.insertBefore(refLink,articleLink.nextSibling);}articleLink.name='readabilityLink-'+linkCount;try{articleLink.style.color='inherit';}catch(e){}footnote.innerHTML=\"<small><sup><a href='#readabilityLink-\"+linkCount+\"' title='Jump to Link in Article'>^</a></sup></small> \";footnoteLink.innerHTML=(footnoteLink.title?footnoteLink.title:linkText);footnoteLink.name='readabilityFootnoteLink-'+linkCount;footnote.appendChild(footnoteLink);footnote.innerHTML=footnote.innerHTML+\"<small> (\"+linkDomain+\")</small>\";articleFootnotes.appendChild(footnote);}if(linkCount>0){footnotesWrapper.style.display='block';}},prepArticle:function(articleContent){readability.cleanStyles(articleContent);readability.cleanConditionally(articleContent,\"form\");readability.clean(articleContent,\"object\");readability.clean(articleContent,\"h1\");if(articleContent.getElementsByTagName('h2').length==1){readability.clean(articleContent,\"h2\");}readability.clean(articleContent,\"iframe\");readability.cleanHeaders(articleContent);readability.cleanConditionally(articleContent,\"table\");readability.cleanConditionally(articleContent,\"ul\");readability.cleanConditionally(articleContent,\"div\");var articleParagraphs=articleContent.getElementsByTagName('p');for(var i=articleParagraphs.length-1;i>=0;i--){var imgCount=articleParagraphs[i].getElementsByTagName('img').length;var embedCount=articleParagraphs[i].getElementsByTagName('embed').length;var objectCount=articleParagraphs[i].getElementsByTagName('object').length;if(imgCount===0&&embedCount===0&&objectCount===0&&readability.getInnerText(articleParagraphs[i],false)==''){articleParagraphs[i].parentNode.removeChild(articleParagraphs[i]);}}try{articleContent.innerHTML=articleContent.innerHTML.replace(/<br[^>]*>\\s*<p/gi,'<p');}catch(e){}},initializeNode:function(node){node.readability={\"contentScore\":0};switch(node.tagName){case'DIV':node.readability.contentScore+=5;break;case'PRE':case'TD':case'BLOCKQUOTE':node.readability.contentScore+=3;break;case'ADDRESS':case'OL':case'UL':case'DL':case'DD':case'DT':case'LI':case'FORM':node.readability.contentScore-=3;break;case'H1':case'H2':case'H3':case'H4':case'H5':case'H6':case'TH':node.readability.contentScore-=5;break;}node.readability.contentScore+=readability.getClassWeight(node);},grabArticle:function(page){var stripUnlikelyCandidates=readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS),isPaging=(page!==null)?true:false;page=page?page:document.body;var pageCacheHtml=page.innerHTML;var allElements=page.getElementsByTagName('*');var node=null;var nodesToScore=[];for(var nodeIndex=0;(node=allElements[nodeIndex]);nodeIndex++){if(stripUnlikelyCandidates){var unlikelyMatchString=node.className+node.id;if((unlikelyMatchString.search(readability.regexps.unlikelyCandidates)!==-1&&unlikelyMatchString.search(readability.regexps.okMaybeItsACandidate)==-1&&node.tagName!==\"BODY\")){node.parentNode.removeChild(node);nodeIndex--;continue;}}if(node.tagName===\"P\"||node.tagName===\"TD\"||node.tagName===\"PRE\"){nodesToScore[nodesToScore.length]=node;}if(node.tagName===\"DIV\"){if(node.innerHTML.search(readability.regexps.divToPElements)===-1){var newNode=document.createElement('p');try{newNode.innerHTML=node.innerHTML;node.parentNode.replaceChild(newNode,node);nodeIndex--;nodesToScore[nodesToScore.length]=node;}catch(e){}}else{for(var i=0,il=node.childNodes.length;i<il;i++){var childNode=node.childNodes[i];if(childNode.nodeType==3){var p=document.createElement('p');p.innerHTML=childNode.nodeValue;p.style.display='inline';p.className='readability-styled';childNode.parentNode.replaceChild(p,childNode);}}}}}var candidates=[];for(var pt=0;pt<nodesToScore.length;pt++){var parentNode=nodesToScore[pt].parentNode;var grandParentNode=parentNode?parentNode.parentNode:null;var innerText=readability.getInnerText(nodesToScore[pt]);if(!parentNode||typeof(parentNode.tagName)=='undefined'){continue;}if(innerText.length<25){continue;}if(typeof parentNode.readability=='undefined'){readability.initializeNode(parentNode);candidates.push(parentNode);}if(grandParentNode&&typeof(grandParentNode.readability)=='undefined'&&typeof(grandParentNode.tagName)!='undefined'){readability.initializeNode(grandParentNode);candidates.push(grandParentNode);}var contentScore=0;contentScore++;contentScore+=innerText.split(',').length;contentScore+=Math.min(Math.floor(innerText.length/100),3);parentNode.readability.contentScore+=contentScore;if(grandParentNode){grandParentNode.readability.contentScore+=contentScore/2;}}var topCandidate=null;for(var c=0,cl=candidates.length;c<cl;c++){candidates[c].readability.contentScore=candidates[c].readability.contentScore*(1-readability.getLinkDensity(candidates[c]));if(!topCandidate||candidates[c].readability.contentScore>topCandidate.readability.contentScore){topCandidate=candidates[c];}}if(topCandidate===null||topCandidate.tagName==\"BODY\"){topCandidate=document.createElement(\"div\");topCandidate.innerHTML=page.innerHTML;page.innerHTML=\"\";page.appendChild(topCandidate);readability.initializeNode(topCandidate);}var articleContent=document.createElement(\"div\");if(isPaging){articleContent.id=\"readability-content\";}var siblingScoreThreshold=Math.max(10,topCandidate.readability.contentScore*0.2);var siblingNodes=topCandidate.parentNode.childNodes;for(var s=0,sl=siblingNodes.length;s<sl;s++){var siblingNode=siblingNodes[s];var append=false;if(!siblingNode){continue;}if(siblingNode===topCandidate){append=true;}var contentBonus=0;if(siblingNode.className==topCandidate.className&&topCandidate.className!=\"\"){contentBonus+=topCandidate.readability.contentScore*0.2;}if(typeof siblingNode.readability!='undefined'&&(siblingNode.readability.contentScore+contentBonus)>=siblingScoreThreshold){append=true;}if(siblingNode.nodeName==\"P\"){var linkDensity=readability.getLinkDensity(siblingNode);var nodeContent=readability.getInnerText(siblingNode);var nodeLength=nodeContent.length;if(nodeLength>80&&linkDensity<0.25){append=true;}else if(nodeLength<80&&linkDensity===0&&nodeContent.search(/\\.( |$)/)!==-1){append=true;}}if(append){var nodeToAppend=null;if(siblingNode.nodeName!=\"DIV\"&&siblingNode.nodeName!=\"P\"){nodeToAppend=document.createElement(\"div\");try{nodeToAppend.id=siblingNode.id;nodeToAppend.innerHTML=siblingNode.innerHTML;}catch(er){nodeToAppend=siblingNode;s--;sl--;}}else{nodeToAppend=siblingNode;s--;sl--;}nodeToAppend.className=\"\";articleContent.appendChild(nodeToAppend);}}readability.prepArticle(articleContent);if(readability.curPageNum===1){articleContent.innerHTML='<div id=\"readability-page-1\" class=\"page\">'+articleContent.innerHTML+'</div>';}if(readability.getInnerText(articleContent,false).length<250){page.innerHTML=pageCacheHtml;if(readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS)){readability.removeFlag(readability.FLAG_STRIP_UNLIKELYS);return readability.grabArticle(page);}else if(readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)){readability.removeFlag(readability.FLAG_WEIGHT_CLASSES);return readability.grabArticle(page);}else if(readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)){readability.removeFlag(readability.FLAG_CLEAN_CONDITIONALLY);return readability.grabArticle(page);}else{return null;}}return articleContent;},removeScripts:function(doc){var scripts=doc.getElementsByTagName('script');for(var i=scripts.length-1;i>=0;i--){if(typeof(scripts[i].src)==\"undefined\"||(scripts[i].src.indexOf('readability')==-1&&scripts[i].src.indexOf('typekit')==-1)){scripts[i].nodeValue=\"\";scripts[i].removeAttribute('src');if(scripts[i].parentNode){scripts[i].parentNode.removeChild(scripts[i]);}}}},getInnerText:function(e,normalizeSpaces){var textContent=\"\";if(typeof(e.textContent)==\"undefined\"&&typeof(e.innerText)==\"undefined\"){return\"\";}normalizeSpaces=(typeof normalizeSpaces=='undefined')?true:normalizeSpaces;if(navigator.appName==\"Microsoft Internet Explorer\"){textContent=e.innerText.replace(readability.regexps.trim,\"\");}else{textContent=e.textContent.replace(readability.regexps.trim,\"\");}if(normalizeSpaces){return textContent.replace(readability.regexps.normalize,\" \");}else{return textContent;}},getCharCount:function(e,s){s=s||\",\";return readability.getInnerText(e).split(s).length-1;},cleanStyles:function(e){e=e||document;var cur=e.firstChild;if(!e){return;}if(typeof e.removeAttribute=='function'&&e.className!='readability-styled'){e.removeAttribute('style');}while(cur!==null){if(cur.nodeType==1){if(cur.className!=\"readability-styled\"){cur.removeAttribute(\"style\");}readability.cleanStyles(cur);}cur=cur.nextSibling;}},getLinkDensity:function(e){var links=e.getElementsByTagName(\"a\");var textLength=readability.getInnerText(e).length;var linkLength=0;for(var i=0,il=links.length;i<il;i++){linkLength+=readability.getInnerText(links[i]).length;}return linkLength/textLength;},findBaseUrl:function(){var noUrlParams=window.location.pathname.split(\"?\")[0],urlSlashes=noUrlParams.split(\"/\").reverse(),cleanedSegments=[],possibleType=\"\";for(var i=0,slashLen=urlSlashes.length;i<slashLen;i++){var segment=urlSlashes[i];if(segment.indexOf(\".\")!==-1){possibleType=segment.split(\".\")[1];if(!possibleType.match(/[^a-zA-Z]/)){segment=segment.split(\".\")[0];}}if(segment.indexOf(',00')!==-1){segment=segment.replace(',00','');}if(segment.match(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i)&&((i===1)||(i===0))){segment=segment.replace(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i,\"\");}del=false;if(i<2&&segment.match(/^\\d{1,2}$/)){del=true;}if(i===0&&segment.toLowerCase()==\"index\")del=true;if(i<2&&segment.length<3&&!urlSlashes[0].match(/[a-z]/i))del=true;if(!del){cleanedSegments.push(segment);}}return window.location.protocol+\"//\"+window.location.host+cleanedSegments.reverse().join(\"/\");},xhr:function(){if(typeof XMLHttpRequest!=='undefined'&&(window.location.protocol!=='file:'||!window.ActiveXObject)){return new XMLHttpRequest();}else{try{return new ActiveXObject('Msxml2.XMLHTTP.6.0');}catch(sixerr){}try{return new ActiveXObject('Msxml2.XMLHTTP.3.0');}catch(threrr){}try{return new ActiveXObject('Msxml2.XMLHTTP');}catch(err){}}return false;},successfulRequest:function(request){return(request.status>=200&&request.status<300)||request.status==304||(request.status===0&&request.responseText);},ajax:function(url,options){var request=readability.xhr();function respondToReadyState(readyState){if(request.readyState==4){if(readability.successfulRequest(request)){if(options.success){options.success(request);}}else{if(options.error){options.error(request);}}}}if(typeof options==='undefined'){options={};}request.onreadystatechange=respondToReadyState;request.open('get',url,true);request.setRequestHeader('Accept','text/html');try{request.send(options.postBody);}catch(e){if(options.error){options.error();}}return request;},curPageNum:1,getClassWeight:function(e){if(!readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)){return 0;}var weight=0;if(typeof(e.className)==='string'&&e.className!=''){if(e.className.search(readability.regexps.negative)!==-1){weight-=25;}if(e.className.search(readability.regexps.positive)!==-1){weight+=25;}}if(typeof(e.id)==='string'&&e.id!=''){if(e.id.search(readability.regexps.negative)!==-1){weight-=25;}if(e.id.search(readability.regexps.positive)!==-1){weight+=25;}}return weight;},nodeIsVisible:function(node){return(node.offsetWidth!==0||node.offsetHeight!==0)&&node.style.display.toLowerCase()!=='none';},killBreaks:function(e){try{e.innerHTML=e.innerHTML.replace(readability.regexps.killBreaks,'<br />');}catch(eBreaks){}},clean:function(e,tag){var targetList=e.getElementsByTagName(tag);var isEmbed=(tag=='object'||tag=='embed');for(var y=targetList.length-1;y>=0;y--){if(isEmbed){var attributeValues=\"\";for(var i=0,il=targetList[y].attributes.length;i<il;i++){attributeValues+=targetList[y].attributes[i].value+'|';}if(attributeValues.search(readability.regexps.videos)!==-1){continue;}if(targetList[y].innerHTML.search(readability.regexps.videos)!==-1){continue;}}targetList[y].parentNode.removeChild(targetList[y]);}},cleanConditionally:function(e,tag){if(!readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)){return;}var tagsList=e.getElementsByTagName(tag);var curTagsLength=tagsList.length;for(var i=curTagsLength-1;i>=0;i--){var weight=readability.getClassWeight(tagsList[i]);var contentScore=(typeof tagsList[i].readability!='undefined')?tagsList[i].readability.contentScore:0;if(weight+contentScore<0){tagsList[i].parentNode.removeChild(tagsList[i]);}else if(readability.getCharCount(tagsList[i],',')<10){var p=tagsList[i].getElementsByTagName(\"p\").length;var img=tagsList[i].getElementsByTagName(\"img\").length;var li=tagsList[i].getElementsByTagName(\"li\").length-100;var input=tagsList[i].getElementsByTagName(\"input\").length;var embedCount=0;var embeds=tagsList[i].getElementsByTagName(\"embed\");for(var ei=0,il=embeds.length;ei<il;ei++){if(embeds[ei].src.search(readability.regexps.videos)==-1){embedCount++;}}var linkDensity=readability.getLinkDensity(tagsList[i]);var contentLength=readability.getInnerText(tagsList[i]).length;var toRemove=false;if(img>p){toRemove=true;}else if(li>p&&tag!=\"ul\"&&tag!=\"ol\"){toRemove=true;}else if(input>Math.floor(p/3)){toRemove=true;}else if(contentLength<25&&(img===0||img>2)){toRemove=true;}else if(weight<25&&linkDensity>0.2){toRemove=true;}else if(weight>=25&&linkDensity>0.5){toRemove=true;}else if((embedCount==1&&contentLength<75)||embedCount>1){toRemove=true;}if(toRemove){tagsList[i].parentNode.removeChild(tagsList[i]);}}}},cleanHeaders:function(e){for(var headerIndex=1;headerIndex<3;headerIndex++){var headers=e.getElementsByTagName('h'+headerIndex);for(var i=headers.length-1;i>=0;i--){if(readability.getClassWeight(headers[i])<0||readability.getLinkDensity(headers[i])>0.33){headers[i].parentNode.removeChild(headers[i]);}}}},easeInOut:function(start,end,totalSteps,actualStep){var delta=end-start;if((actualStep/=totalSteps/2)<1){return delta/2*actualStep*actualStep+start;}return-delta/2*((--actualStep)*(actualStep-2)-1)+start;},scrollTop:function(scroll){var setScroll=typeof scroll!='undefined';if(setScroll){return window.scrollTo(0,scroll);}if(typeof window.pageYOffset!='undefined'){return window.pageYOffset;}else if(document.documentElement.clientHeight){return document.documentElement.scrollTop;}else{return document.body.scrollTop;}},curScrollStep:0,scrollTo:function(scrollStart,scrollEnd,steps,interval){if((scrollStart<scrollEnd&&readability.scrollTop()<scrollEnd)||(scrollStart>scrollEnd&&readability.scrollTop()>scrollEnd)){readability.curScrollStep++;if(readability.curScrollStep>steps){return;}var oldScrollTop=readability.scrollTop();readability.scrollTop(readability.easeInOut(scrollStart,scrollEnd,steps,readability.curScrollStep));if(oldScrollTop==readability.scrollTop()){return;}window.setTimeout(function(){readability.scrollTo(scrollStart,scrollEnd,steps,interval);},interval);}},removeFrame:function(){readability.iframeLoads++;if(readability.iframeLoads>3){var emailContainer=document.getElementById('email-container');if(null!==emailContainer){emailContainer.parentNode.removeChild(emailContainer);}readability.iframeLoads=0;}},htmlspecialchars:function(s){if(typeof(s)==\"string\"){s=s.replace(/&/g,\"&amp;\");s=s.replace(/\"/g,\"&quot;\");s=s.replace(/'/g,\"&#039;\");s=s.replace(/</g,\"&lt;\");s=s.replace(/>/g,\"&gt;\");}return s;},flagIsActive:function(flag){return(readability.flags&flag)>0;},addFlag:function(flag){readability.flags=readability.flags|flag;},removeFlag:function(flag){readability.flags=readability.flags&~flag;},addCss:function(cssCode){var styleElement = document.createElement(\"style\");styleElement.type=\"text/css\";if(styleElement.styleSheet){styleElement.styleSheet.cssText = cssCode;}else{styleElement.appendChild(document.createTextNode(cssCode));}document.getElementsByTagName(\"head\")[0].appendChild(styleElement);},setTheme:function(theme){document.body.setAttribute(\"class\", theme);}};readability.init();" : "javascript:readConvertLinksToFootnotes=false;readStyle='style-newspaper';readSize='size-medium';readMargin='margin-x-narrow';var readability={iframeLoads:0,convertLinksToFootnotes:false,reversePageScroll:false,frameHack:false,biggestFrame:false,bodyCache:null,flags:0x1|0x2|0x4,FLAG_STRIP_UNLIKELYS:0x1,FLAG_WEIGHT_CLASSES:0x2,FLAG_CLEAN_CONDITIONALLY:0x4,maxPages:30,parsedPages:{},pageETags:{},regexps:{unlikelyCandidates:/combx|comment|community|disqus|extra|foot|header|menu|remark|rss|shoutbox|sidebar|sponsor|ad-break|agegate|pagination|pager|popup|tweet|twitter/i,okMaybeItsACandidate:/and|article|body|column|main|shadow/i,positive:/article|body|content|entry|hentry|main|page|pagination|post|text|blog|story/i,negative:/combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|shoutbox|sidebar|sponsor|shopping|tags|tool|widget/i,extraneous:/print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single/i,divToPElements:/<(a|blockquote|dl|div|img|ol|p|pre|table|ul)/i,replaceBrs:/(<br[^>]*>[ \\n\\r\\t]*){2,}/gi,replaceFonts:/<(\\/?)font[^>]*>/gi,trim:/^\\s+|\\s+$/g,normalize:/\\s{2,}/g,killBreaks:/(<br\\s*\\/?>(\\s|&nbsp;?)*){1,}/g,videos:/http:\\/\\/(www\\.)?(youtube|vimeo)\\.com/i,skipFootnoteLink:/^\\s*(\\[?[a-z0-9]{1,2}\\]?|^|edit|citation needed)\\s*$/i,nextLink:/(next|weiter|continue|>([^\\|]|$)|»([^\\|]|$))/i,prevLink:/(prev|earl|old|new|<|«)/i},init:function(){window.onload=window.onunload=function(){};readability.removeScripts(document);if(document.body&&!readability.bodyCache){readability.bodyCache=document.body.innerHTML;}readability.parsedPages[window.location.href.replace(/\\/$/,'')]=true;readability.prepDocument();var overlay=document.createElement(\"div\");var innerDiv=document.createElement(\"div\");var articleTitle=readability.getArticleTitle();var articleContent=readability.grabArticle();var articleFooter=readability.getArticleFooter();if(!articleContent){articleContent=document.createElement(\"div\");articleContent.id=\"readability-content\";articleContent.innerHTML=[\"<p>Sorry, this page was unable to parse for the content.</p><div class='box'><a href='readability://'>Turn off reading mode</a></div>\"].join('');}overlay.id=\"readOverlay\";innerDiv.id=\"readInner\";document.body.className=readStyle;document.dir=readability.getSuggestedDirection(articleTitle.innerHTML);if(readStyle==\"style-athelas\"||readStyle==\"style-apertura\"){overlay.className=readStyle+\" rdbTypekit\";}else{overlay.className=readStyle;}innerDiv.className=readMargin+\" \"+readSize;if(typeof(readConvertLinksToFootnotes)!=='undefined'&&readConvertLinksToFootnotes===true){readability.convertLinksToFootnotes=true;}innerDiv.appendChild(articleTitle);innerDiv.appendChild(articleContent);innerDiv.appendChild(articleFooter);overlay.appendChild(innerDiv);document.body.innerHTML=\"\";document.body.insertBefore(overlay,document.body.firstChild);document.body.removeAttribute('style');if(readability.frameHack){var readOverlay=document.getElementById('readOverlay');readOverlay.style.height='100%';readOverlay.style.overflow='auto';}if((window.location.protocol+\"//\"+window.location.host+\"/\")==window.location.href){innerDiv.insertBefore(articleContent);}readability.postProcessContent(articleContent);window.scrollTo(0,0);},postProcessContent:function(articleContent){if(readability.convertLinksToFootnotes&&!window.location.href.match(/wikipedia\\.org/g)){readability.addFootnotes(articleContent);}readability.fixImageFloats(articleContent);},fixImageFloats:function(articleContent){var imageWidthThreshold=Math.min(articleContent.offsetWidth,800)*0.55,images=articleContent.getElementsByTagName('img');for(var i=0,il=images.length;i<il;i++){var image=images[i];if(image.offsetWidth>imageWidthThreshold){image.className+=\" blockImage\";}}},getSuggestedDirection:function(text){function sanitizeText(){return text.replace(/@\\w+/,\"\");}function countMatches(match){var matches=text.match(new RegExp(match,\"g\"));return matches!=null?matches.length:0;}function isRTL(){var count_heb=countMatches(\"[\\\\u05B0-\\\\u05F4\\\\uFB1D-\\\\uFBF4]\");var count_arb=countMatches(\"[\\\\u060C-\\\\u06FE\\\\uFB50-\\\\uFEFC]\");return(count_heb+count_arb)*100/text.length>20;}text=sanitizeText(text);return isRTL()?\"rtl\":\"ltr\";},getArticleTitle:function(){var curTitle=\"\",origTitle=\"\";try{curTitle=origTitle=document.title;if(typeof curTitle!=\"string\"){curTitle=origTitle=readability.getInnerText(document.getElementsByTagName('title')[0]);}}catch(e){}if(curTitle.match(/ [\\|\\-] /)){curTitle=origTitle.replace(/(.*)[\\|\\-] .*/gi,'$1');if(curTitle.split(' ').length<3){curTitle=origTitle.replace(/[^\\|\\-]*[\\|\\-](.*)/gi,'$1');}}else if(curTitle.indexOf(': ')!==-1){curTitle=origTitle.replace(/.*:(.*)/gi,'$1');if(curTitle.split(' ').length<3){curTitle=origTitle.replace(/[^:]*[:](.*)/gi,'$1');}}else if(curTitle.length>150||curTitle.length<15){var hOnes=document.getElementsByTagName('h1');if(hOnes.length==1){curTitle=readability.getInnerText(hOnes[0]);}}curTitle=curTitle.replace(readability.regexps.trim,\"\");if(curTitle.split(' ').length<=4){curTitle=origTitle;}var articleTitle=document.createElement(\"h1\");articleTitle.innerHTML=curTitle;return articleTitle;},getArticleFooter:function(){var articleFooter=document.createElement(\"div\");articleFooter.id=\"readFooter\";articleFooter.innerHTML=[\"<div id='rdb-footer-print'>\",\"</div>\",\"<div id='rdb-footer-wrapper'>\",\"</div>\"].join('');return articleFooter;},prepDocument:function(){if(document.body===null){var body=document.createElement(\"body\");try{document.body=body;}catch(e){document.documentElement.appendChild(body);}}var metas = document.getElementsByTagName('meta');for (i=0; i<metas.length; i++) { metas[i].parentElement.removeChild(metas[i]); }var meta = document.createElement('meta');meta.setAttribute('name', 'viewport');meta.setAttribute('content', 'width=device-width');document.getElementsByTagName('head')[0].appendChild(meta);document.body.id=\"readabilityBody\";var frames=document.getElementsByTagName('frame');if(frames.length>0){var bestFrame=null;var bestFrameSize=0;var biggestFrameSize=0;for(var frameIndex=0;frameIndex<frames.length;frameIndex++){var frameSize=frames[frameIndex].offsetWidth+frames[frameIndex].offsetHeight;var canAccessFrame=false;try{frames[frameIndex].contentWindow.document.body;canAccessFrame=true;}catch(eFrames){}if(frameSize>biggestFrameSize){biggestFrameSize=frameSize;readability.biggestFrame=frames[frameIndex];}if(canAccessFrame&&frameSize>bestFrameSize){readability.frameHack=true;bestFrame=frames[frameIndex];bestFrameSize=frameSize;}}if(bestFrame){var newBody=document.createElement('body');newBody.innerHTML=bestFrame.contentWindow.document.body.innerHTML;newBody.style.overflow='scroll';document.body=newBody;var frameset=document.getElementsByTagName('frameset')[0];if(frameset){frameset.parentNode.removeChild(frameset);}}}for(var k=0;k<document.styleSheets.length;k++){if(document.styleSheets[k].href!==null&&document.styleSheets[k].href.lastIndexOf(\"readability\")==-1){document.styleSheets[k].disabled=true;}}var styleTags=document.getElementsByTagName(\"style\");for(var st=0;st<styleTags.length;st++){styleTags[st].textContent=\"\";}document.body.innerHTML=document.body.innerHTML.replace(readability.regexps.replaceFonts,'<$1span>');},addFootnotes:function(articleContent){var footnotesWrapper=document.getElementById('readability-footnotes'),articleFootnotes=document.getElementById('readability-footnotes-list');if(!footnotesWrapper){footnotesWrapper=document.createElement(\"div\");footnotesWrapper.id='readability-footnotes';footnotesWrapper.innerHTML='<h3>References</h3>';footnotesWrapper.style.display='none';articleFootnotes=document.createElement('ol');articleFootnotes.id='readability-footnotes-list';footnotesWrapper.appendChild(articleFootnotes);var readFooter=document.getElementById('readFooter');if(readFooter){readFooter.parentNode.insertBefore(footnotesWrapper,readFooter);}}var articleLinks=articleContent.getElementsByTagName('a');var linkCount=articleFootnotes.getElementsByTagName('li').length;for(var i=0;i<articleLinks.length;i++){var articleLink=articleLinks[i],footnoteLink=articleLink.cloneNode(true),refLink=document.createElement('a'),footnote=document.createElement('li'),linkDomain=footnoteLink.host?footnoteLink.host:document.location.host,linkText=readability.getInnerText(articleLink);if(articleLink.className&&articleLink.className.indexOf('readability-DoNotFootnote')!==-1||linkText.match(readability.regexps.skipFootnoteLink)){continue;}linkCount++;refLink.href='#readabilityFootnoteLink-'+linkCount;refLink.innerHTML='<small><sup>['+linkCount+']</sup></small>';refLink.className='readability-DoNotFootnote';try{refLink.style.color='inherit';}catch(e){}if(articleLink.parentNode.lastChild==articleLink){articleLink.parentNode.appendChild(refLink);}else{articleLink.parentNode.insertBefore(refLink,articleLink.nextSibling);}articleLink.name='readabilityLink-'+linkCount;try{articleLink.style.color='inherit';}catch(e){}footnote.innerHTML=\"<small><sup><a href='#readabilityLink-\"+linkCount+\"' title='Jump to Link in Article'>^</a></sup></small> \";footnoteLink.innerHTML=(footnoteLink.title?footnoteLink.title:linkText);footnoteLink.name='readabilityFootnoteLink-'+linkCount;footnote.appendChild(footnoteLink);footnote.innerHTML=footnote.innerHTML+\"<small> (\"+linkDomain+\")</small>\";articleFootnotes.appendChild(footnote);}if(linkCount>0){footnotesWrapper.style.display='block';}},prepArticle:function(articleContent){readability.cleanStyles(articleContent);readability.cleanConditionally(articleContent,\"form\");readability.clean(articleContent,\"object\");readability.clean(articleContent,\"h1\");if(articleContent.getElementsByTagName('h2').length==1){readability.clean(articleContent,\"h2\");}readability.clean(articleContent,\"iframe\");readability.cleanHeaders(articleContent);readability.cleanConditionally(articleContent,\"table\");readability.cleanConditionally(articleContent,\"ul\");readability.cleanConditionally(articleContent,\"div\");var articleParagraphs=articleContent.getElementsByTagName('p');for(var i=articleParagraphs.length-1;i>=0;i--){var imgCount=articleParagraphs[i].getElementsByTagName('img').length;var embedCount=articleParagraphs[i].getElementsByTagName('embed').length;var objectCount=articleParagraphs[i].getElementsByTagName('object').length;if(imgCount===0&&embedCount===0&&objectCount===0&&readability.getInnerText(articleParagraphs[i],false)==''){articleParagraphs[i].parentNode.removeChild(articleParagraphs[i]);}}try{articleContent.innerHTML=articleContent.innerHTML.replace(/<br[^>]*>\\s*<p/gi,'<p');}catch(e){}},initializeNode:function(node){node.readability={\"contentScore\":0};switch(node.tagName){case'DIV':node.readability.contentScore+=5;break;case'PRE':case'TD':case'BLOCKQUOTE':node.readability.contentScore+=3;break;case'ADDRESS':case'OL':case'UL':case'DL':case'DD':case'DT':case'LI':case'FORM':node.readability.contentScore-=3;break;case'H1':case'H2':case'H3':case'H4':case'H5':case'H6':case'TH':node.readability.contentScore-=5;break;}node.readability.contentScore+=readability.getClassWeight(node);},grabArticle:function(page){var stripUnlikelyCandidates=readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS),isPaging=(page!==null)?true:false;page=page?page:document.body;var pageCacheHtml=page.innerHTML;var allElements=page.getElementsByTagName('*');var node=null;var nodesToScore=[];for(var nodeIndex=0;(node=allElements[nodeIndex]);nodeIndex++){if(stripUnlikelyCandidates){var unlikelyMatchString=node.className+node.id;if((unlikelyMatchString.search(readability.regexps.unlikelyCandidates)!==-1&&unlikelyMatchString.search(readability.regexps.okMaybeItsACandidate)==-1&&node.tagName!==\"BODY\")){node.parentNode.removeChild(node);nodeIndex--;continue;}}if(node.tagName===\"P\"||node.tagName===\"TD\"||node.tagName===\"PRE\"){nodesToScore[nodesToScore.length]=node;}if(node.tagName===\"DIV\"){if(node.innerHTML.search(readability.regexps.divToPElements)===-1){var newNode=document.createElement('p');try{newNode.innerHTML=node.innerHTML;node.parentNode.replaceChild(newNode,node);nodeIndex--;nodesToScore[nodesToScore.length]=node;}catch(e){}}else{for(var i=0,il=node.childNodes.length;i<il;i++){var childNode=node.childNodes[i];if(childNode.nodeType==3){var p=document.createElement('p');p.innerHTML=childNode.nodeValue;p.style.display='inline';p.className='readability-styled';childNode.parentNode.replaceChild(p,childNode);}}}}}var candidates=[];for(var pt=0;pt<nodesToScore.length;pt++){var parentNode=nodesToScore[pt].parentNode;var grandParentNode=parentNode?parentNode.parentNode:null;var innerText=readability.getInnerText(nodesToScore[pt]);if(!parentNode||typeof(parentNode.tagName)=='undefined'){continue;}if(innerText.length<25){continue;}if(typeof parentNode.readability=='undefined'){readability.initializeNode(parentNode);candidates.push(parentNode);}if(grandParentNode&&typeof(grandParentNode.readability)=='undefined'&&typeof(grandParentNode.tagName)!='undefined'){readability.initializeNode(grandParentNode);candidates.push(grandParentNode);}var contentScore=0;contentScore++;contentScore+=innerText.split(',').length;contentScore+=Math.min(Math.floor(innerText.length/100),3);parentNode.readability.contentScore+=contentScore;if(grandParentNode){grandParentNode.readability.contentScore+=contentScore/2;}}var topCandidate=null;for(var c=0,cl=candidates.length;c<cl;c++){candidates[c].readability.contentScore=candidates[c].readability.contentScore*(1-readability.getLinkDensity(candidates[c]));if(!topCandidate||candidates[c].readability.contentScore>topCandidate.readability.contentScore){topCandidate=candidates[c];}}if(topCandidate===null||topCandidate.tagName==\"BODY\"){topCandidate=document.createElement(\"div\");topCandidate.innerHTML=page.innerHTML;page.innerHTML=\"\";page.appendChild(topCandidate);readability.initializeNode(topCandidate);}var articleContent=document.createElement(\"div\");if(isPaging){articleContent.id=\"readability-content\";}var siblingScoreThreshold=Math.max(10,topCandidate.readability.contentScore*0.2);var siblingNodes=topCandidate.parentNode.childNodes;for(var s=0,sl=siblingNodes.length;s<sl;s++){var siblingNode=siblingNodes[s];var append=false;if(!siblingNode){continue;}if(siblingNode===topCandidate){append=true;}var contentBonus=0;if(siblingNode.className==topCandidate.className&&topCandidate.className!=\"\"){contentBonus+=topCandidate.readability.contentScore*0.2;}if(typeof siblingNode.readability!='undefined'&&(siblingNode.readability.contentScore+contentBonus)>=siblingScoreThreshold){append=true;}if(siblingNode.nodeName==\"P\"){var linkDensity=readability.getLinkDensity(siblingNode);var nodeContent=readability.getInnerText(siblingNode);var nodeLength=nodeContent.length;if(nodeLength>80&&linkDensity<0.25){append=true;}else if(nodeLength<80&&linkDensity===0&&nodeContent.search(/\\.( |$)/)!==-1){append=true;}}if(append){var nodeToAppend=null;if(siblingNode.nodeName!=\"DIV\"&&siblingNode.nodeName!=\"P\"){nodeToAppend=document.createElement(\"div\");try{nodeToAppend.id=siblingNode.id;nodeToAppend.innerHTML=siblingNode.innerHTML;}catch(er){nodeToAppend=siblingNode;s--;sl--;}}else{nodeToAppend=siblingNode;s--;sl--;}nodeToAppend.className=\"\";articleContent.appendChild(nodeToAppend);}}readability.prepArticle(articleContent);if(readability.curPageNum===1){articleContent.innerHTML='<div id=\"readability-page-1\" class=\"page\">'+articleContent.innerHTML+'</div>';}if(readability.getInnerText(articleContent,false).length<250){page.innerHTML=pageCacheHtml;if(readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS)){readability.removeFlag(readability.FLAG_STRIP_UNLIKELYS);return readability.grabArticle(page);}else if(readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)){readability.removeFlag(readability.FLAG_WEIGHT_CLASSES);return readability.grabArticle(page);}else if(readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)){readability.removeFlag(readability.FLAG_CLEAN_CONDITIONALLY);return readability.grabArticle(page);}else{return null;}}return articleContent;},removeScripts:function(doc){var scripts=doc.getElementsByTagName('script');for(var i=scripts.length-1;i>=0;i--){if(typeof(scripts[i].src)==\"undefined\"||(scripts[i].src.indexOf('readability')==-1&&scripts[i].src.indexOf('typekit')==-1)){scripts[i].nodeValue=\"\";scripts[i].removeAttribute('src');if(scripts[i].parentNode){scripts[i].parentNode.removeChild(scripts[i]);}}}},getInnerText:function(e,normalizeSpaces){var textContent=\"\";if(typeof(e.textContent)==\"undefined\"&&typeof(e.innerText)==\"undefined\"){return\"\";}normalizeSpaces=(typeof normalizeSpaces=='undefined')?true:normalizeSpaces;if(navigator.appName==\"Microsoft Internet Explorer\"){textContent=e.innerText.replace(readability.regexps.trim,\"\");}else{textContent=e.textContent.replace(readability.regexps.trim,\"\");}if(normalizeSpaces){return textContent.replace(readability.regexps.normalize,\" \");}else{return textContent;}},getCharCount:function(e,s){s=s||\",\";return readability.getInnerText(e).split(s).length-1;},cleanStyles:function(e){e=e||document;var cur=e.firstChild;if(!e){return;}if(typeof e.removeAttribute=='function'&&e.className!='readability-styled'){e.removeAttribute('style');}while(cur!==null){if(cur.nodeType==1){if(cur.className!=\"readability-styled\"){cur.removeAttribute(\"style\");}readability.cleanStyles(cur);}cur=cur.nextSibling;}},getLinkDensity:function(e){var links=e.getElementsByTagName(\"a\");var textLength=readability.getInnerText(e).length;var linkLength=0;for(var i=0,il=links.length;i<il;i++){linkLength+=readability.getInnerText(links[i]).length;}return linkLength/textLength;},findBaseUrl:function(){var noUrlParams=window.location.pathname.split(\"?\")[0],urlSlashes=noUrlParams.split(\"/\").reverse(),cleanedSegments=[],possibleType=\"\";for(var i=0,slashLen=urlSlashes.length;i<slashLen;i++){var segment=urlSlashes[i];if(segment.indexOf(\".\")!==-1){possibleType=segment.split(\".\")[1];if(!possibleType.match(/[^a-zA-Z]/)){segment=segment.split(\".\")[0];}}if(segment.indexOf(',00')!==-1){segment=segment.replace(',00','');}if(segment.match(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i)&&((i===1)||(i===0))){segment=segment.replace(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i,\"\");}del=false;if(i<2&&segment.match(/^\\d{1,2}$/)){del=true;}if(i===0&&segment.toLowerCase()==\"index\")del=true;if(i<2&&segment.length<3&&!urlSlashes[0].match(/[a-z]/i))del=true;if(!del){cleanedSegments.push(segment);}}return window.location.protocol+\"//\"+window.location.host+cleanedSegments.reverse().join(\"/\");},xhr:function(){if(typeof XMLHttpRequest!=='undefined'&&(window.location.protocol!=='file:'||!window.ActiveXObject)){return new XMLHttpRequest();}else{try{return new ActiveXObject('Msxml2.XMLHTTP.6.0');}catch(sixerr){}try{return new ActiveXObject('Msxml2.XMLHTTP.3.0');}catch(threrr){}try{return new ActiveXObject('Msxml2.XMLHTTP');}catch(err){}}return false;},successfulRequest:function(request){return(request.status>=200&&request.status<300)||request.status==304||(request.status===0&&request.responseText);},ajax:function(url,options){var request=readability.xhr();function respondToReadyState(readyState){if(request.readyState==4){if(readability.successfulRequest(request)){if(options.success){options.success(request);}}else{if(options.error){options.error(request);}}}}if(typeof options==='undefined'){options={};}request.onreadystatechange=respondToReadyState;request.open('get',url,true);request.setRequestHeader('Accept','text/html');try{request.send(options.postBody);}catch(e){if(options.error){options.error();}}return request;},curPageNum:1,getClassWeight:function(e){if(!readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)){return 0;}var weight=0;if(typeof(e.className)==='string'&&e.className!=''){if(e.className.search(readability.regexps.negative)!==-1){weight-=25;}if(e.className.search(readability.regexps.positive)!==-1){weight+=25;}}if(typeof(e.id)==='string'&&e.id!=''){if(e.id.search(readability.regexps.negative)!==-1){weight-=25;}if(e.id.search(readability.regexps.positive)!==-1){weight+=25;}}return weight;},nodeIsVisible:function(node){return(node.offsetWidth!==0||node.offsetHeight!==0)&&node.style.display.toLowerCase()!=='none';},killBreaks:function(e){try{e.innerHTML=e.innerHTML.replace(readability.regexps.killBreaks,'<br />');}catch(eBreaks){}},clean:function(e,tag){var targetList=e.getElementsByTagName(tag);var isEmbed=(tag=='object'||tag=='embed');for(var y=targetList.length-1;y>=0;y--){if(isEmbed){var attributeValues=\"\";for(var i=0,il=targetList[y].attributes.length;i<il;i++){attributeValues+=targetList[y].attributes[i].value+'|';}if(attributeValues.search(readability.regexps.videos)!==-1){continue;}if(targetList[y].innerHTML.search(readability.regexps.videos)!==-1){continue;}}targetList[y].parentNode.removeChild(targetList[y]);}},cleanConditionally:function(e,tag){if(!readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)){return;}var tagsList=e.getElementsByTagName(tag);var curTagsLength=tagsList.length;for(var i=curTagsLength-1;i>=0;i--){var weight=readability.getClassWeight(tagsList[i]);var contentScore=(typeof tagsList[i].readability!='undefined')?tagsList[i].readability.contentScore:0;if(weight+contentScore<0){tagsList[i].parentNode.removeChild(tagsList[i]);}else if(readability.getCharCount(tagsList[i],',')<10){var p=tagsList[i].getElementsByTagName(\"p\").length;var img=tagsList[i].getElementsByTagName(\"img\").length;var li=tagsList[i].getElementsByTagName(\"li\").length-100;var input=tagsList[i].getElementsByTagName(\"input\").length;var embedCount=0;var embeds=tagsList[i].getElementsByTagName(\"embed\");for(var ei=0,il=embeds.length;ei<il;ei++){if(embeds[ei].src.search(readability.regexps.videos)==-1){embedCount++;}}var linkDensity=readability.getLinkDensity(tagsList[i]);var contentLength=readability.getInnerText(tagsList[i]).length;var toRemove=false;if(img>p){toRemove=true;}else if(li>p&&tag!=\"ul\"&&tag!=\"ol\"){toRemove=true;}else if(input>Math.floor(p/3)){toRemove=true;}else if(contentLength<25&&(img===0||img>2)){toRemove=true;}else if(weight<25&&linkDensity>0.2){toRemove=true;}else if(weight>=25&&linkDensity>0.5){toRemove=true;}else if((embedCount==1&&contentLength<75)||embedCount>1){toRemove=true;}if(toRemove){tagsList[i].parentNode.removeChild(tagsList[i]);}}}},cleanHeaders:function(e){for(var headerIndex=1;headerIndex<3;headerIndex++){var headers=e.getElementsByTagName('h'+headerIndex);for(var i=headers.length-1;i>=0;i--){if(readability.getClassWeight(headers[i])<0||readability.getLinkDensity(headers[i])>0.33){headers[i].parentNode.removeChild(headers[i]);}}}},easeInOut:function(start,end,totalSteps,actualStep){var delta=end-start;if((actualStep/=totalSteps/2)<1){return delta/2*actualStep*actualStep+start;}return-delta/2*((--actualStep)*(actualStep-2)-1)+start;},scrollTop:function(scroll){var setScroll=typeof scroll!='undefined';if(setScroll){return window.scrollTo(0,scroll);}if(typeof window.pageYOffset!='undefined'){return window.pageYOffset;}else if(document.documentElement.clientHeight){return document.documentElement.scrollTop;}else{return document.body.scrollTop;}},curScrollStep:0,scrollTo:function(scrollStart,scrollEnd,steps,interval){if((scrollStart<scrollEnd&&readability.scrollTop()<scrollEnd)||(scrollStart>scrollEnd&&readability.scrollTop()>scrollEnd)){readability.curScrollStep++;if(readability.curScrollStep>steps){return;}var oldScrollTop=readability.scrollTop();readability.scrollTop(readability.easeInOut(scrollStart,scrollEnd,steps,readability.curScrollStep));if(oldScrollTop==readability.scrollTop()){return;}window.setTimeout(function(){readability.scrollTo(scrollStart,scrollEnd,steps,interval);},interval);}},removeFrame:function(){readability.iframeLoads++;if(readability.iframeLoads>3){var emailContainer=document.getElementById('email-container');if(null!==emailContainer){emailContainer.parentNode.removeChild(emailContainer);}readability.iframeLoads=0;}},htmlspecialchars:function(s){if(typeof(s)==\"string\"){s=s.replace(/&/g,\"&amp;\");s=s.replace(/\"/g,\"&quot;\");s=s.replace(/'/g,\"&#039;\");s=s.replace(/</g,\"&lt;\");s=s.replace(/>/g,\"&gt;\");}return s;},flagIsActive:function(flag){return(readability.flags&flag)>0;},addFlag:function(flag){readability.flags=readability.flags|flag;},removeFlag:function(flag){readability.flags=readability.flags&~flag;},addCss:function(cssCode){var styleElement = document.createElement(\"style\");styleElement.type=\"text/css\";if(styleElement.styleSheet){styleElement.styleSheet.cssText = cssCode;}else{styleElement.appendChild(document.createTextNode(cssCode));}document.getElementsByTagName(\"head\")[0].appendChild(styleElement);},setTheme:function(theme){document.body.setAttribute(\"class\", theme);}};readability.init();");
        sb.append("readability.addCss('p:empty,li:empty{display:none}body {margin:0;padding:0;line-height:1.4em;color:#464646;background:#f9f9f9;}body.dark {color:#eee;background:#1f1f1f;}body.black {color:#f9f9f9;background:#000;}body.sepia {color:#444;background:#d4cfca;}");
        if (c2 == 2) {
            sb.append("#readInner {margin:60px 40px 60px 40px;}");
        } else if (c2 == 3) {
            sb.append("#readInner {margin:50px 25px 50px 25px;}");
        } else {
            sb.append("#readInner {margin:50px 15px 50px 10px;}");
        }
        sb.append("#readHeader a, #readInner a{color:#1E83CB;text-decoration:none}#readInner h1{display:block;width:100%;margin:0 0 5px 0;padding: 0 0 5px 0;font-size:1.2em;line-height:1.1em;}#readInner .box{width:93%;text-align:center;background:#eee;margin-right:5px;padding:10px;}#readInner .spAuthor{font-size:.8em;line-height:1.1em}#readInner #spIntroTeaser {font-weight:bold}#readInner img {max-width:100%;height:auto;width:auto;}#readInner blockquote{margin-left:3em;margin-right:3em}#readability-inner *{margin-bottom:16px;border:none;background:none}.size-medium{font-size:1em}');");
        itemWebView.loadUrl(sb.toString());
        itemWebView.i = true;
    }

    public final void x(boolean z) {
        Context applicationContext;
        ap6 ap6Var;
        ItemWebView itemWebView = (ItemWebView) o();
        if (itemWebView != null) {
            if (!itemWebView.c() && z) {
                w(itemWebView);
                return;
            }
            FragmentActivity activity = getActivity();
            if (activity == null || (applicationContext = activity.getApplicationContext()) == null || (ap6Var = this.i) == null) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new oy6(applicationContext, R.drawable.ic_service_readability, getText(R.string.msg_loading)));
            String url = itemWebView.d() ? itemWebView.getUrl() : ap6Var.k;
            if (url != null) {
                if (url.length() > 0) {
                    ox6.a aVar = new ox6.a();
                    aVar.d = true;
                    aVar.a = true;
                    aVar.b(null);
                    ox6 ox6VarA = aVar.a();
                    im7.e(url, "url");
                    mh7 mh7Var = new mh7(new px6(url, ox6VarA));
                    im7.d(mh7Var, "Single.fromCallable {\n  …l(url, options)\n        }");
                    zb7 zb7Var = ej7.c;
                    Objects.requireNonNull(zb7Var, "scheduler is null");
                    ac7 ac7VarE = new rh7(mh7Var, zb7Var).f(fc7.a()).e(new rq6(ap6Var, url));
                    im7.d(ac7VarE, "HtmlExtractorUtils.extra…   item\n                }");
                    ic7 ic7VarF = bj7.f(ac7VarE, new tq6(this), new sq6(this, itemWebView));
                    im7.e(ic7VarF, "$this$addTo");
                    im7.e(this, "activity");
                    im7.e(ic7VarF, "disposable");
                    this.e.b(ic7VarF);
                }
            }
        }
    }

    public final void y() {
        WebViewPager webViewPager;
        if (this.h == null || this.j >= r0.getCount() - 1 || (webViewPager = this.f) == null) {
            return;
        }
        webViewPager.setCurrentItem(this.j + 1);
    }

    public final boolean z(int i2) {
        if (i2 == 24 || i2 == 25) {
            kw6 kw6Var = this.C;
            if (kw6Var == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            if (kw6Var.q > 0) {
                return true;
            }
        }
        return false;
    }
}
 