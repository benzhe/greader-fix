package defpackage;

import android.content.Context;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import java.io.IOException;
import java.util.List;
import java.util.Set;
import okhttp3.OkHttpClient;

/* loaded from: classes2.dex */
public abstract class rn6 {
    public static final int ACTION_ITEM_TAG_ADD_LABEL = 1;
    public static final int ACTION_ITEM_TAG_NEW_LABEL = 3;
    public static final int ACTION_ITEM_TAG_REMOVE_LABEL = 2;
    public static final int ACTION_SUBSCRIPTION_ADD_LABEL = 4;
    public static final int ACTION_SUBSCRIPTION_EDIT = 1;
    public static final int ACTION_SUBSCRIPTION_NEW_LABEL = 6;
    public static final int ACTION_SUBSCRIPTION_REMOVE_LABEL = 5;
    public static final int ACTION_SUBSCRIPTION_SUBCRIBE = 2;
    public static final int ACTION_SUBSCRIPTION_UNSUBCRIBE = 3;
    public static final int LOGIN_FEEDLY = 5;
    public static final int LOGIN_INOREADER = 8;
    public static final int LOGIN_NONE = 0;
    public static final int LOGIN_OLD_READER = 6;
    public static final int LOGIN_RSS_READER = 7;
    public static final String STATE_READ = "state/read";
    public static final String STATE_READING_LIST = "state/reading-list";
    public static final String STATE_STARRED = "state/starred";
    public OkHttpClient mClient;
    public final Context mContext;
    public boolean mRequestStop = false;

    public interface a {
        void a(List<String> list);

        long b();

        int c();

        boolean d();

        boolean e();

        String[] f();
    }

    public interface b {
        void a(List<ap6> list);

        long b();

        int c();

        boolean d();

        boolean e();

        boolean f();

        Set<String> g();

        String stream();
    }

    public interface c {
    }

    public interface d {
    }

    public interface e {
    }

    public rn6(Context context) {
        this.mContext = context;
    }

    public static rn6 getClient(Context context) throws gw6 {
        int iC0 = cn6.c0(context);
        if (iC0 == 7) {
            return new RssReaderClient(context);
        }
        if (iC0 == 5) {
            return new sn6(context);
        }
        if (iC0 == 6) {
            return new xn6(context);
        }
        if (iC0 == 8) {
            return new wn6(context);
        }
        throw new gw6("Please logout and login again!");
    }

    public static String getClientName(Context context) {
        int iC0 = cn6.c0(context);
        return iC0 == 5 ? "feedly" : iC0 == 6 ? "the old reader" : iC0 == 8 ? "inoreader" : iC0 == 7 ? "local" : "no service";
    }

    public abstract boolean disableTag(String str, String str2) throws gw6, IOException;

    public abstract boolean editItemTag(String[] strArr, String[] strArr2, String[] strArr3, int i) throws gw6, IOException;

    public abstract boolean editSubscription(String str, String str2, String str3, String[] strArr, int i) throws gw6, IOException;

    public abstract String getCategoryUid(String str) throws gw6, IOException;

    public abstract String getClientName();

    public abstract int getClientService();

    public abstract String getTagUid(String str) throws gw6, IOException;

    public abstract boolean handleItemIdList(a aVar, long j) throws gw6, IOException;

    public abstract void handleItemList(b bVar, long j) throws gw6, IOException;

    public abstract void handleReaderList(d dVar, c cVar, e eVar, long j) throws gw6, IOException;

    public abstract boolean markAllAsRead(String str, String str2, long j) throws gw6, IOException;

    public abstract boolean markAsRead(String str, String str2) throws gw6, IOException;

    public abstract boolean markAsRead(String[] strArr, String[] strArr2) throws gw6, IOException;

    public abstract boolean markAsUnread(String str, String str2, boolean z) throws gw6, IOException;

    public abstract boolean markAsUnread(String[] strArr, String[] strArr2, boolean z) throws gw6, IOException;

    public abstract boolean renameTag(String str, String str2, String str3) throws gw6, IOException;

    public void setRequestStop(boolean z) {
        this.mRequestStop = z;
    }
}
