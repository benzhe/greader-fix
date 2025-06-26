package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.reader.common.subscription.Feed;
import com.noinnion.android.reader.webservice.feedly.FeedlyService;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class cv6 extends vm6<String, List<Feed>> {
    public cv6(Context context) {
        super(context);
    }

    @Override // defpackage.vm6
    public List<Feed> c(String str) throws Exception {
        List<Feed> listF;
        String str2 = str;
        ArrayList arrayList = new ArrayList();
        try {
            listF = f(str2);
        } catch (Exception e) {
            arrayList.clear();
            e.printStackTrace();
            listF = arrayList;
        }
        int size = listF.size();
        List<Feed> listG = listF;
        if (size == 0) {
            try {
                listG = g(str2);
            } catch (Exception e2) {
                listF.clear();
                e2.printStackTrace();
                listG = listF;
            }
        }
        if (listG.size() < 5) {
            try {
                listG.addAll(h(str2));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return listG;
    }

    public List<Feed> f(String str) throws gw6, IOException {
        ArrayList arrayList = new ArrayList();
        for (com.noinnion.android.reader.webservice.feedly.model.Feed feed : FeedlyService.getService().findFeeds(str, 50).execute().body().results) {
            Feed feed2 = new Feed();
            feed2.title = feed.title;
            feed2.content = feed.description;
            feed2.image = feed.visualUrl;
            feed2.url = feed.getFeedUrl();
            arrayList.add(feed2);
        }
        return arrayList;
    }

    public List<Feed> g(String str) throws gw6, IOException {
        StringBuilder sb = new StringBuilder();
        try {
            new URL(str);
            sb.append("https://ajax.googleapis.com/ajax/services/feed/load?v=1.0");
        } catch (MalformedURLException unused) {
            sb.append("https://ajax.googleapis.com/ajax/services/feed/find?v=1.0");
        }
        if (str != null) {
            sb.append("&q=");
            sb.append(n56.u0(str.trim()));
        }
        try {
            return i(new sy6(sb.toString()).c);
        } catch (JSONException e) {
            e.printStackTrace();
            throw new gw6("data parse error", e);
        }
    }

    public List<Feed> h(String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (!str.contains(".")) {
            return arrayList;
        }
        String string = null;
        try {
            string = (str.startsWith("http") ? new URL(str) : new URL("http://" + str)).toString();
        } catch (MalformedURLException unused) {
        }
        String str2 = string;
        if (str2 != null) {
            sy6 sy6Var = new sy6(str2, null, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24", null, 8);
            HashMap map = new HashMap();
            Pattern patternCompile = Pattern.compile("<link(.*?)>", 2);
            String strTrim = sy6Var.c;
            if (strTrim != null && strTrim.length() != 0) {
                strTrim = strTrim.replaceAll("(\n|\r|\t|��|\\s{2,})", StringUtils.SPACE).trim();
            }
            im7.d(strTrim, "HtmlUtils.stripWhitespaces(html)");
            Matcher matcher = patternCompile.matcher(strTrim);
            String string2 = "";
            String string3 = "";
            while (matcher.find()) {
                String strGroup = matcher.group(1);
                im7.d(strGroup, "matcherTag.group(1)");
                int length = strGroup.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = im7.g(strGroup.charAt(!z ? i : length), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i++;
                    } else {
                        z = true;
                    }
                }
                String string4 = strGroup.subSequence(i, length + 1).toString();
                if (co7.b(string4, "application/atom", false, 2) || co7.b(string4, "application/rss", false, 2)) {
                    Matcher matcher2 = Pattern.compile("title=\"(.*?)\"", 2).matcher(string4);
                    im7.d(matcher2, "pattern.matcher(tag)");
                    if (matcher2.find()) {
                        String strGroup2 = matcher2.group(1);
                        im7.d(strGroup2, "matcherAttrs.group(1)");
                        int length2 = strGroup2.length() - 1;
                        int i2 = 0;
                        boolean z3 = false;
                        while (i2 <= length2) {
                            boolean z4 = im7.g(strGroup2.charAt(!z3 ? i2 : length2), 32) <= 0;
                            if (z3) {
                                if (!z4) {
                                    break;
                                }
                                length2--;
                            } else if (z4) {
                                i2++;
                            } else {
                                z3 = true;
                            }
                        }
                        string2 = strGroup2.subSequence(i2, length2 + 1).toString();
                    }
                    Matcher matcher3 = Pattern.compile("href=\"(.*?)\"", 2).matcher(string4);
                    im7.d(matcher3, "pattern.matcher(tag)");
                    if (matcher3.find()) {
                        String strGroup3 = matcher3.group(1);
                        im7.d(strGroup3, "matcherAttrs.group(1)");
                        int length3 = strGroup3.length() - 1;
                        int i3 = 0;
                        boolean z5 = false;
                        while (i3 <= length3) {
                            boolean z6 = im7.g(strGroup3.charAt(!z5 ? i3 : length3), 32) <= 0;
                            if (z5) {
                                if (!z6) {
                                    break;
                                }
                                length3--;
                            } else if (z6) {
                                i3++;
                            } else {
                                z5 = true;
                            }
                        }
                        string3 = strGroup3.subSequence(i3, length3 + 1).toString();
                    }
                    map.put(string3, string2);
                }
            }
            for (String str3 : map.keySet()) {
                arrayList.add(new Feed((String) map.get(str3), str3));
            }
        }
        return arrayList;
    }

    public final List<Feed> i(String str) throws JSONException {
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.getInt("responseStatus") != 200) {
            return arrayList;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("responseData");
        if (jSONObject2.has("entries")) {
            JSONArray jSONArray = jSONObject2.getJSONArray("entries");
            for (int i = 0; i < jSONArray.length(); i++) {
                Feed feed = new Feed();
                feed.title = n56.l2(jSONArray.getJSONObject(i).getString("title"));
                feed.content = n56.l2(jSONArray.getJSONObject(i).getString("contentSnippet"));
                feed.url = jSONArray.getJSONObject(i).getString("url");
                try {
                    feed.image = "https://plus.google.com/_/favicon?domain=" + new URL(jSONArray.getJSONObject(i).getString(NSRSS20.LINK)).getHost();
                    feed.title = StringEscapeUtils.unescapeHtml4(feed.title);
                } catch (Exception unused) {
                }
                if (!TextUtils.isEmpty(feed.url)) {
                    arrayList.add(feed);
                }
            }
        } else if (jSONObject2.has("feed")) {
            JSONObject jSONObject3 = jSONObject2.getJSONObject("feed");
            Feed feed2 = new Feed();
            feed2.title = n56.l2(jSONObject3.getString("title"));
            feed2.content = n56.l2(jSONObject3.getString(NSRSS20.DESCR));
            feed2.url = jSONObject3.getString("feedUrl");
            try {
                feed2.image = "https://plus.google.com/_/favicon?domain=" + new URL(jSONObject3.getString(NSRSS20.LINK)).getHost();
                feed2.title = StringEscapeUtils.unescapeHtml4(feed2.title);
            } catch (Exception unused2) {
            }
            if (!TextUtils.isEmpty(feed2.url)) {
                arrayList.add(feed2);
            }
        }
        return arrayList;
    }
}
