.class public Ldw6;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final p:[Ljava/lang/String;


# instance fields
.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J

.field public o:Landroid/os/Messenger;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "Downloading"

    const-string v1, "Paused"

    const-string v2, "Complete"

    const-string v3, "Cancelled"

    const-string v4, "Error"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldw6;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ldw6;->m:J

    .line 3
    iput-wide v0, p0, Ldw6;->n:J

    .line 4
    iput-object p1, p0, Ldw6;->e:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Ldw6;->f:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Ldw6;->j:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Ldw6;->l:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Ldw6;->g:J

    .line 9
    iput-wide v0, p0, Ldw6;->h:J

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Ldw6;->i:I

    .line 11
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Ldw6;->i:I

    .line 14
    invoke-virtual {p0}, Ldw6;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Ldw6;->i:I

    .line 2
    invoke-virtual {p0}, Ldw6;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Ldw6;->i:I

    .line 2
    invoke-virtual {p0}, Ldw6;->d()V

    return-void
.end method

.method public c()F
    .locals 5

    .line 1
    iget-wide v0, p0, Ldw6;->h:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 4
    iget-wide v3, p0, Ldw6;->n:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 5
    div-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final d()V
    .locals 9

    .line 1
    iget v0, p0, Ldw6;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldw6;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    iget-object v1, p0, Ldw6;->e:Landroid/content/Context;

    iget-object v2, p0, Ldw6;->l:Ljava/lang/String;

    .line 5
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_display_name"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mime_type"

    .line 8
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "_size"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "image"

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "bucket_display_name"

    const-string v7, "bucket_id"

    const-string v8, "gReader"

    if-eqz v5, :cond_0

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v5, "video"

    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v4, "audio"

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "album"

    .line 22
    invoke-virtual {v3, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "artist"

    .line 23
    invoke-virtual {v3, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "is_ringtone"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_notification"

    .line 25
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_alarm"

    .line 26
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 27
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "is_music"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 30
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 31
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldw6;->j:Ljava/lang/String;

    const-string v3, ".tmp"

    invoke-static {v1, v2, v3}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 34
    :cond_4
    :goto_1
    iget v0, p0, Ldw6;->i:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 35
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 36
    iput v1, v0, Landroid/os/Message;->what:I

    .line 37
    iget-object v1, p0, Ldw6;->o:Landroid/os/Messenger;

    if-eqz v1, :cond_5

    .line 38
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 40
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 41
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, ".tmp"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-wide v3, v1, Ldw6;->m:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v1, Ldw6;->m:J

    .line 3
    :cond_0
    iget-object v3, v1, Ldw6;->f:Ljava/lang/String;

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    .line 4
    iget-object v0, v1, Ldw6;->f:Ljava/lang/String;

    const-string v3, "file://"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Ldw6;->b()V

    .line 8
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Ldw6;->j:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lhy6;->b(Ljava/io/File;Ljava/io/File;)V

    .line 9
    iput v4, v1, Ldw6;->i:I

    .line 10
    invoke-virtual/range {p0 .. p0}, Ldw6;->d()V

    goto/16 :goto_7

    .line 11
    :cond_2
    iget-object v3, v1, Ldw6;->f:Ljava/lang/String;

    const-string v7, "content:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object v0, v1, Ldw6;->e:Landroid/content/Context;

    invoke-static {v0}, Liw6;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v3, v1, Ldw6;->f:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/noinnion/android/greader/provider/LocalFileProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Ldw6;->b()V

    .line 16
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v5, v1, Ldw6;->j:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lhy6;->b(Ljava/io/File;Ljava/io/File;)V

    .line 17
    iput v4, v1, Ldw6;->i:I

    .line 18
    invoke-virtual/range {p0 .. p0}, Ldw6;->d()V

    goto/16 :goto_7

    .line 19
    :cond_4
    iget v3, v1, Ldw6;->i:I

    const/4 v7, 0x4

    if-ge v3, v7, :cond_12

    .line 20
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Ldw6;->j:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    :cond_5
    move-wide v7, v5

    :goto_0
    iput-wide v7, v1, Ldw6;->h:J

    .line 22
    invoke-static {}, Ln56;->L()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 23
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v8, v1, Ldw6;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "User-Agent"

    const-string v9, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 24
    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 25
    iget-wide v8, v1, Ldw6;->h:J

    cmp-long v10, v8, v5

    if-lez v10, :cond_6

    const-string v8, "Range"

    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Ldw6;->h:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 27
    :cond_6
    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v3, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v7

    if-nez v7, :cond_7

    .line 29
    invoke-virtual/range {p0 .. p0}, Ldw6;->b()V

    return-void

    .line 30
    :cond_7
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-nez v3, :cond_8

    .line 31
    invoke-virtual/range {p0 .. p0}, Ldw6;->b()V

    return-void

    .line 32
    :cond_8
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    .line 33
    iget-wide v9, v1, Ldw6;->g:J

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    if-nez v13, :cond_9

    .line 34
    iput-wide v7, v1, Ldw6;->g:J

    .line 35
    invoke-virtual/range {p0 .. p0}, Ldw6;->d()V

    .line 36
    :cond_9
    iget-wide v7, v1, Ldw6;->n:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_a

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iput-wide v7, v1, Ldw6;->n:J

    .line 38
    :cond_a
    iget-wide v7, v1, Ldw6;->h:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_b

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Ldw6;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Ldw6;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 39
    :goto_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x400

    invoke-direct {v8, v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    .line 41
    :goto_2
    iget v3, v1, Ldw6;->i:I

    if-nez v3, :cond_f

    .line 42
    iget-wide v10, v1, Ldw6;->g:J

    iget-wide v12, v1, Ldw6;->h:J

    sub-long v14, v10, v12

    const-wide/16 v16, 0x400

    cmp-long v3, v14, v16

    if-gtz v3, :cond_d

    cmp-long v3, v10, v5

    if-gez v3, :cond_c

    goto :goto_3

    :cond_c
    sub-long/2addr v10, v12

    long-to-int v3, v10

    .line 43
    new-array v3, v3, [B

    goto :goto_4

    :cond_d
    :goto_3
    new-array v3, v9, [B

    .line 44
    :goto_4
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_e

    goto :goto_5

    :cond_e
    const/4 v10, 0x0

    .line 45
    invoke-virtual {v8, v3, v10, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 46
    iget-wide v10, v1, Ldw6;->h:J

    int-to-long v12, v7

    add-long/2addr v10, v12

    iput-wide v10, v1, Ldw6;->h:J

    .line 47
    invoke-virtual/range {p0 .. p0}, Ldw6;->d()V

    goto :goto_2

    .line 48
    :cond_f
    :goto_5
    iget v3, v1, Ldw6;->i:I

    if-nez v3, :cond_11

    .line 49
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Ldw6;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Ldw6;->j:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    iput v4, v1, Ldw6;->i:I

    .line 52
    invoke-virtual/range {p0 .. p0}, Ldw6;->d()V

    goto :goto_6

    .line 53
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ldw6;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    :goto_6
    move-object v0, v2

    move-object v2, v8

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v8

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v3, v2

    move-object v2, v8

    goto :goto_a

    :cond_12
    :goto_7
    move-object v0, v2

    :goto_8
    if-eqz v2, :cond_13

    .line 54
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    nop

    :cond_13
    :goto_9
    if-eqz v0, :cond_15

    .line 55
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v3, v2

    .line 56
    :goto_a
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Ldw6;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_14

    .line 58
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    nop

    :cond_14
    :goto_b
    if-eqz v3, :cond_15

    .line 59
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_15
    :goto_c
    return-void

    :catchall_2
    move-exception v0

    :goto_d
    if-eqz v2, :cond_16

    .line 60
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_e

    :catch_5
    nop

    :cond_16
    :goto_e
    if-eqz v3, :cond_17

    .line 61
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 62
    :catch_6
    :cond_17
    throw v0
.end method
