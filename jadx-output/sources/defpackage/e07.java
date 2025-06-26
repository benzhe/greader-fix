package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import android.webkit.MimeTypeMap;
import defpackage.f07;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes2.dex */
public class e07 implements f07 {
    public final Context a;
    public final int b = 5000;
    public final int c = 20000;

    public e07(Context context) {
        this.a = context.getApplicationContext();
    }

    @Override // defpackage.f07
    public InputStream a(String str, Object obj) throws IOException {
        int iOrdinal = f07.a.k(str).ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            HttpURLConnection httpURLConnectionB = b(str);
            for (int i = 0; httpURLConnectionB.getResponseCode() / 100 == 3 && i < 5; i++) {
                httpURLConnectionB = b(httpURLConnectionB.getHeaderField("Location"));
            }
            try {
                InputStream inputStream = httpURLConnectionB.getInputStream();
                if (httpURLConnectionB.getResponseCode() == 200) {
                    return new qz6(new BufferedInputStream(inputStream, 32768), httpURLConnectionB.getContentLength());
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                }
                StringBuilder sbZ = jo.z("Image request failed with response code ");
                sbZ.append(httpURLConnectionB.getResponseCode());
                throw new IOException(sbZ.toString());
            } catch (IOException e) {
                InputStream errorStream = httpURLConnectionB.getErrorStream();
                do {
                    try {
                    } catch (IOException unused2) {
                        if (errorStream == null) {
                            throw e;
                        }
                    } catch (Throwable th) {
                        if (errorStream != null) {
                            try {
                                errorStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        throw th;
                    }
                } while (errorStream.read(new byte[32768], 0, 32768) != -1);
                try {
                    errorStream.close();
                    throw e;
                } catch (Exception unused4) {
                    throw e;
                }
            }
        }
        if (iOrdinal == 2) {
            String strI = f07.a.FILE.i(str);
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
            if (!(mimeTypeFromExtension != null && mimeTypeFromExtension.startsWith("video/"))) {
                return new qz6(new BufferedInputStream(new FileInputStream(strI), 32768), (int) new File(strI).length());
            }
            Bitmap bitmapCreateVideoThumbnail = ThumbnailUtils.createVideoThumbnail(strI, 2);
            if (bitmapCreateVideoThumbnail == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapCreateVideoThumbnail.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
            return new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        }
        if (iOrdinal != 3) {
            if (iOrdinal == 4) {
                return this.a.getAssets().open(f07.a.ASSETS.i(str));
            }
            if (iOrdinal == 5) {
                return this.a.getResources().openRawResource(Integer.parseInt(f07.a.DRAWABLE.i(str)));
            }
            throw new UnsupportedOperationException(String.format("UIL doesn't support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))", str));
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        Uri uri = Uri.parse(str);
        String type = this.a.getContentResolver().getType(uri);
        if (type != null && type.startsWith("video/")) {
            Bitmap thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, Long.valueOf(uri.getLastPathSegment()).longValue(), 1, null);
            if (thumbnail != null) {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                thumbnail.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream2);
                return new ByteArrayInputStream(byteArrayOutputStream2.toByteArray());
            }
        } else if (str.startsWith("content://com.android.contacts/")) {
            return ContactsContract.Contacts.openContactPhotoInputStream(this.a.getContentResolver(), uri, true);
        }
        return contentResolver.openInputStream(uri);
    }

    public HttpURLConnection b(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(Uri.encode(str, "@#&=*+-_.,:!?()/~'%")).openConnection();
        httpURLConnection.setConnectTimeout(this.b);
        httpURLConnection.setReadTimeout(this.c);
        return httpURLConnection;
    }
}
