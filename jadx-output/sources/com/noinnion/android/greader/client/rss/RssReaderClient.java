package com.noinnion.android.greader.client.rss;

import android.content.Context;
import android.os.Environment;
import defpackage.ap6;
import defpackage.eg6;
import defpackage.ep6;
import defpackage.gw6;
import defpackage.hy6;
import defpackage.ip6;
import defpackage.iw6;
import defpackage.jo;
import defpackage.lp6;
import defpackage.n56;
import defpackage.od6;
import defpackage.rn6;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.SimpleTimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes2.dex */
public class RssReaderClient extends rn6 {
    public static final String CLIENT_DIRECTORY = "/gReader/.rss/";
    public static final String CLIENT_PATH = Environment.getExternalStorageDirectory() + CLIENT_DIRECTORY;
    public static final int UNIQUE_GUID = 2;
    public static final int UNIQUE_LINK = 1;
    public static final int UNIQUE_TITLE = 3;
    public static final String URL_API_FEED_PARSER = "http://www.google.com/uds/Gfeeds?num=100&output=json&v=1.0&nocache=0&q=";
    public static final String USER_CATEGORY = "user/category/";
    public static final String USER_FEED = "feed/";
    public static final String USER_STARRED = "user/starred";
    public static final String USER_TAG = "user/tag/";
    private DataSet dataSet;
    private DataStarred dataStarred;
    public SimpleDateFormat mDateFormat;
    public boolean mSyncOptimized;

    public RssReaderClient(Context context) {
        super(context);
        this.mClient = n56.L();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
        this.mDateFormat = simpleDateFormat;
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZones.GMT_ID));
        this.mSyncOptimized = iw6.f(context, "sync_local_opimized", false);
    }

    private void itemAddLabel(String[] strArr, String[] strArr2, String[] strArr3) throws Throwable {
        loadDataSet();
        for (String str : strArr3) {
            if (str.equals(USER_STARRED)) {
                loadStarred();
                for (int i = 0; i < strArr.length; i++) {
                    String str2 = strArr[i];
                    String str3 = strArr2[i];
                    if (!this.dataStarred.items.containsKey(str2)) {
                        RssItem rssItem = new RssItem(ap6.k(this.mContext, "uid", str2, false));
                        rssItem.feed = str3;
                        this.dataStarred.items.put(str2, rssItem);
                    }
                }
                saveDataStarred();
            } else if (!this.dataSet.tags.containsKey(str)) {
                this.dataSet.tags.put(str, new RssTag(str, str.replace(USER_CATEGORY, "").replace(USER_TAG, "")));
            }
        }
        saveDataSet();
    }

    private void itemRemoveLabel(String[] strArr, String[] strArr2) throws Throwable {
        for (String str : strArr2) {
            if (str.equals(USER_STARRED)) {
                loadStarred();
                for (String str2 : strArr) {
                    if (this.dataStarred.items.containsKey(str2)) {
                        this.dataStarred.items.remove(str2);
                    }
                }
                saveDataStarred();
            }
        }
    }

    private void loadDataSet() throws Throwable {
        if (this.dataSet != null) {
            return;
        }
        FileReader fileReader = null;
        try {
            File file = new File(CLIENT_PATH + DataSet.FILENAME);
            if (file.exists()) {
                od6 od6Var = new od6();
                FileReader fileReader2 = new FileReader(file);
                try {
                    eg6 eg6VarF = od6Var.f(fileReader2);
                    Object objC = od6Var.c(eg6VarF, DataSet.class);
                    od6.a(objC, eg6VarF);
                    this.dataSet = (DataSet) n56.C2(DataSet.class).cast(objC);
                    fileReader = fileReader2;
                } catch (Throwable th) {
                    th = th;
                    fileReader = fileReader2;
                    if (fileReader != null) {
                        fileReader.close();
                    }
                    throw th;
                }
            } else {
                this.dataSet = new DataSet();
            }
            if (fileReader != null) {
                fileReader.close();
            }
            DataSet dataSet = this.dataSet;
            if (dataSet == null) {
                throw new gw6("data set load error");
            }
            if (dataSet.tags == null) {
                dataSet.tags = new HashMap();
            }
            DataSet dataSet2 = this.dataSet;
            if (dataSet2.feeds == null) {
                dataSet2.feeds = new HashMap();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void loadStarred() throws Throwable {
        if (this.dataStarred != null) {
            return;
        }
        FileReader fileReader = null;
        try {
            File file = new File(CLIENT_PATH + DataStarred.FILENAME);
            if (file.exists()) {
                od6 od6Var = new od6();
                FileReader fileReader2 = new FileReader(file);
                try {
                    eg6 eg6VarF = od6Var.f(fileReader2);
                    Object objC = od6Var.c(eg6VarF, DataStarred.class);
                    od6.a(objC, eg6VarF);
                    this.dataStarred = (DataStarred) n56.C2(DataStarred.class).cast(objC);
                    fileReader = fileReader2;
                } catch (Throwable th) {
                    th = th;
                    fileReader = fileReader2;
                    if (fileReader != null) {
                        fileReader.close();
                    }
                    throw th;
                }
            } else {
                this.dataStarred = new DataStarred();
            }
            if (fileReader != null) {
                fileReader.close();
            }
            DataStarred dataStarred = this.dataStarred;
            if (dataStarred == null) {
                throw new gw6("data starred load error");
            }
            if (dataStarred.items == null) {
                dataStarred.items = new HashMap();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void parseFeed(RssFeed rssFeed, rn6.b bVar) throws Throwable {
        try {
            parseFeedInternal(rssFeed, bVar);
        } catch (SocketTimeoutException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0079 A[Catch: Exception -> 0x0115, IOException -> 0x011b, TryCatch #2 {IOException -> 0x011b, Exception -> 0x0115, blocks: (B:6:0x001f, B:8:0x0035, B:10:0x0047, B:13:0x0056, B:15:0x005c, B:20:0x006f, B:21:0x0073, B:23:0x0079, B:25:0x0090, B:29:0x00a6, B:31:0x00b8, B:32:0x00be, B:34:0x00c6, B:36:0x00db, B:38:0x00e1, B:39:0x00ee, B:41:0x00f4, B:42:0x0108, B:35:0x00d4, B:27:0x0099, B:28:0x00a0, B:43:0x010d), top: B:53:0x001f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseFeedInternal(com.noinnion.android.greader.client.rss.RssFeed r16, rn6.b r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.client.rss.RssReaderClient.parseFeedInternal(com.noinnion.android.greader.client.rss.RssFeed, rn6$b):void");
    }

    private synchronized void saveDataSet() {
        DataSet dataSet = this.dataSet;
        if (dataSet != null && !dataSet.isEmpty()) {
            try {
                hy6.g(Environment.getExternalStorageDirectory() + CLIENT_DIRECTORY, DataSet.FILENAME, new od6().h(this.dataSet));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private synchronized void saveDataStarred() {
        if (this.dataStarred == null) {
            return;
        }
        try {
            hy6.g(Environment.getExternalStorageDirectory() + CLIENT_DIRECTORY, DataStarred.FILENAME, new od6().h(this.dataStarred));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void subscribe(String str, String str2, String[] strArr) throws Throwable {
        loadDataSet();
        String strN = jo.n(USER_FEED, str);
        if (this.dataSet.feeds.containsKey(strN)) {
            return;
        }
        this.dataSet.feeds.put(strN, new RssFeed(strN, str2));
        saveDataSet();
        if (strArr == null || strArr.length == 0) {
            return;
        }
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = getCategoryUid(strArr[i]);
        }
        subscriptionAddLabel(strN, strArr);
    }

    private void subscriptionAddLabel(String str, String[] strArr) throws Throwable {
        loadDataSet();
        if (this.dataSet.feeds.containsKey(str)) {
            RssFeed rssFeed = this.dataSet.feeds.get(str);
            for (String str2 : strArr) {
                if (!this.dataSet.tags.containsKey(str2)) {
                    this.dataSet.tags.put(str2, new RssTag(str2, str2.replace(USER_CATEGORY, "").replace(USER_TAG, "")));
                }
                if (!rssFeed.categories.contains(str2)) {
                    rssFeed.categories.add(str2);
                }
            }
            saveDataSet();
        }
    }

    private void subscriptionEdit(String str, boolean z) throws Throwable {
        loadDataSet();
        if (this.dataSet.feeds.containsKey(str)) {
            this.dataSet.feeds.get(str).hasPodcast = z;
            saveDataSet();
        }
    }

    private void subscriptionRemoveLabel(String str, String[] strArr) throws Throwable {
        loadDataSet();
        if (this.dataSet.feeds.containsKey(str)) {
            RssFeed rssFeed = this.dataSet.feeds.get(str);
            for (String str2 : strArr) {
                if (rssFeed.categories.contains(str2)) {
                    rssFeed.categories.remove(str2);
                }
            }
            saveDataSet();
        }
    }

    private void unsubscribe(String str) throws Throwable {
        loadDataSet();
        if (this.dataSet.feeds.size() != 0 && this.dataSet.feeds.containsKey(str)) {
            this.dataSet.feeds.remove(str);
            saveDataSet();
        }
    }

    @Override // defpackage.rn6
    public boolean disableTag(String str, String str2) throws Throwable {
        loadDataSet();
        DataSet dataSet = this.dataSet;
        if (dataSet == null) {
            return false;
        }
        if (dataSet.tags.containsKey(str)) {
            this.dataSet.tags.remove(str);
        }
        for (RssFeed rssFeed : this.dataSet.feeds.values()) {
            if (rssFeed.categories.contains(str)) {
                rssFeed.categories.remove(str);
            }
        }
        saveDataSet();
        return false;
    }

    @Override // defpackage.rn6
    public boolean editItemTag(String[] strArr, String[] strArr2, String[] strArr3, int i) throws Throwable {
        if (i == 1) {
            itemAddLabel(strArr, strArr2, strArr3);
            return false;
        }
        if (i != 2) {
            return false;
        }
        itemRemoveLabel(strArr, strArr3);
        return false;
    }

    @Override // defpackage.rn6
    public boolean editSubscription(String str, String str2, String str3, String[] strArr, int i) throws Throwable {
        if (i == 1) {
            subscriptionEdit(str, str2);
            return false;
        }
        if (i == 2) {
            subscribe(str3, str2, strArr);
            return false;
        }
        if (i == 3) {
            unsubscribe(str);
            return false;
        }
        if (i == 4) {
            subscriptionAddLabel(str, strArr);
            return false;
        }
        if (i != 5) {
            return false;
        }
        subscriptionRemoveLabel(str, strArr);
        return false;
    }

    @Override // defpackage.rn6
    public String getCategoryUid(String str) {
        StringBuilder sbZ = jo.z(USER_CATEGORY);
        sbZ.append(str.toLowerCase());
        return sbZ.toString();
    }

    @Override // defpackage.rn6
    public String getClientName() {
        return "local";
    }

    @Override // defpackage.rn6
    public int getClientService() {
        return 7;
    }

    @Override // defpackage.rn6
    public String getTagUid(String str) {
        StringBuilder sbZ = jo.z(USER_TAG);
        sbZ.append(str.toLowerCase());
        return sbZ.toString();
    }

    @Override // defpackage.rn6
    public boolean handleItemIdList(rn6.a aVar, long j) {
        return false;
    }

    @Override // defpackage.rn6
    public void handleItemList(rn6.b bVar, long j) throws Throwable {
        loadDataSet();
        if (this.dataSet == null) {
            return;
        }
        String strStream = bVar.stream();
        if (strStream == null) {
            for (RssFeed rssFeed : this.dataSet.feeds.values()) {
                if (this.mRequestStop) {
                    throw new gw6.a();
                }
                if (!bVar.g().contains(rssFeed.uid)) {
                    parseFeed(rssFeed, bVar);
                }
            }
            return;
        }
        if (strStream.equals(USER_STARRED)) {
            loadStarred();
            ArrayList arrayList = new ArrayList();
            Iterator<RssItem> it = this.dataStarred.items.values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getItem());
            }
            bVar.a(arrayList);
            return;
        }
        if (strStream.startsWith(USER_FEED)) {
            RssFeed rssFeed2 = this.dataSet.feeds.get(strStream);
            if (rssFeed2 != null) {
                parseFeed(rssFeed2, bVar);
                return;
            }
            return;
        }
        if (strStream.startsWith(USER_CATEGORY)) {
            for (RssFeed rssFeed3 : this.dataSet.feeds.values()) {
                if (this.mRequestStop) {
                    throw new gw6.a();
                }
                Set<String> setG = bVar.g();
                if (setG == null || !setG.contains(rssFeed3.uid)) {
                    if (rssFeed3.categories.contains(strStream)) {
                        parseFeed(rssFeed3, bVar);
                    }
                }
            }
        }
    }

    @Override // defpackage.rn6
    public void handleReaderList(rn6.d dVar, rn6.c cVar, rn6.e eVar, long j) throws Throwable {
        loadDataSet();
        if (this.dataSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        lp6 lp6Var = new lp6();
        lp6Var.f = USER_STARRED;
        lp6Var.i = "Starred items";
        lp6Var.g = 1;
        arrayList.add(lp6Var);
        for (RssTag rssTag : this.dataSet.tags.values()) {
            lp6 lp6Var2 = new lp6();
            String str = rssTag.uid;
            lp6Var2.f = str;
            lp6Var2.i = rssTag.label;
            lp6Var2.g = str.startsWith(USER_CATEGORY) ? 11 : 10;
            arrayList.add(lp6Var2);
        }
        if (arrayList.size() > 0) {
            ((ep6.a) dVar).a(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        for (RssFeed rssFeed : this.dataSet.feeds.values()) {
            ip6 ip6Var = new ip6();
            ip6Var.f = rssFeed.uid;
            ip6Var.h = rssFeed.title;
            ip6Var.j = rssFeed.htmlUrl;
            ip6Var.l.addAll(rssFeed.categories);
            arrayList2.add(ip6Var);
        }
        if (arrayList2.size() > 0) {
            ((ep6.b) cVar).a(arrayList2);
        }
    }

    @Override // defpackage.rn6
    public boolean markAllAsRead(String str, String str2, long j) {
        return false;
    }

    @Override // defpackage.rn6
    public boolean markAsRead(String str, String str2) {
        return false;
    }

    @Override // defpackage.rn6
    public boolean markAsRead(String[] strArr, String[] strArr2) {
        return false;
    }

    @Override // defpackage.rn6
    public boolean markAsUnread(String str, String str2, boolean z) {
        return false;
    }

    @Override // defpackage.rn6
    public boolean markAsUnread(String[] strArr, String[] strArr2, boolean z) {
        return false;
    }

    @Override // defpackage.rn6
    public boolean renameTag(String str, String str2, String str3) throws Throwable {
        loadDataSet();
        if (this.dataSet != null && str.startsWith(USER_CATEGORY)) {
            if (this.dataSet.tags.containsKey(str)) {
                RssTag rssTag = this.dataSet.tags.get(str);
                rssTag.uid = getCategoryUid(str3);
                rssTag.label = str3;
                this.dataSet.tags.remove(str);
                this.dataSet.tags.put(rssTag.uid, rssTag);
                for (RssFeed rssFeed : this.dataSet.feeds.values()) {
                    if (rssFeed.categories.contains(str)) {
                        rssFeed.categories.remove(str);
                        rssFeed.categories.add(rssTag.uid);
                    }
                }
            }
            saveDataSet();
        }
        return false;
    }

    private void subscriptionEdit(String str, String str2) throws Throwable {
        loadDataSet();
        if (this.dataSet.feeds.containsKey(str)) {
            this.dataSet.feeds.get(str).title = str2;
            saveDataSet();
        }
    }
}
