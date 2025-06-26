package defpackage;

import defpackage.er;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Objects;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public final /* synthetic */ class cr {
    public final er a;

    public cr(er erVar) {
        this.a = erVar;
    }

    public Object a(Object obj) throws IOException {
        er erVar = this.a;
        er.a aVar = (er.a) obj;
        Objects.requireNonNull(erVar);
        bi.x("CctTransportBackend", "Making request to: %s", aVar.a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(erVar.g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "2.3.3"));
        httpURLConnection.setRequestProperty(HttpConnection.CONTENT_ENCODING, "gzip");
        httpURLConnection.setRequestProperty(HttpConnection.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    ((ho5) erVar.a).a(aVar.b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    bi.F("CctTransportBackend", "Status Code: " + responseCode);
                    bi.F("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField(HttpConnection.CONTENT_TYPE));
                    bi.F("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField(HttpConnection.CONTENT_ENCODING));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new er.b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new er.b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField(HttpConnection.CONTENT_ENCODING)) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            er.b bVar = new er.b(responseCode, null, ((mr) sr.a(new BufferedReader(new InputStreamReader(gZIPInputStream)))).a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } catch (Throwable th) {
                            if (gZIPInputStream != null) {
                                try {
                                    gZIPInputStream.close();
                                } catch (Throwable unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable th3) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable unused3) {
                    }
                    throw th3;
                }
            } catch (Throwable th4) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th4;
            }
        } catch (ConnectException e) {
            e = e;
            bi.z("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new er.b(500, null, 0L);
        } catch (UnknownHostException e2) {
            e = e2;
            bi.z("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new er.b(500, null, 0L);
        } catch (IOException e3) {
            e = e3;
            bi.z("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new er.b(400, null, 0L);
        } catch (wn5 e4) {
            e = e4;
            bi.z("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new er.b(400, null, 0L);
        }
    }
}
