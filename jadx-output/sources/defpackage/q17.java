package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import defpackage.e27;
import defpackage.j27;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class q17 extends j27 {
    public static final UriMatcher b;
    public final Context a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        b = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    public q17(Context context) {
        this.a = context;
    }

    @Override // defpackage.j27
    public boolean c(h27 h27Var) {
        Uri uri = h27Var.c;
        return NSContent.NSTAG.equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && b.match(h27Var.c) != -1;
    }

    @Override // defpackage.j27
    public j27.a f(h27 h27Var, int i) throws IOException {
        InputStream inputStreamOpenContactPhotoInputStream;
        ContentResolver contentResolver = this.a.getContentResolver();
        Uri uriLookupContact = h27Var.c;
        int iMatch = b.match(uriLookupContact);
        if (iMatch != 1) {
            if (iMatch != 2) {
                if (iMatch != 3) {
                    if (iMatch != 4) {
                        throw new IllegalStateException("Invalid uri: " + uriLookupContact);
                    }
                }
            }
            inputStreamOpenContactPhotoInputStream = contentResolver.openInputStream(uriLookupContact);
        } else {
            uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uriLookupContact);
            inputStreamOpenContactPhotoInputStream = uriLookupContact == null ? null : ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uriLookupContact, true);
        }
        if (inputStreamOpenContactPhotoInputStream == null) {
            return null;
        }
        return new j27.a(n56.e2(inputStreamOpenContactPhotoInputStream), e27.d.DISK);
    }
}
