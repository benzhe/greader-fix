.class public Ldc6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc6$a;
    }
.end annotation


# static fields
.field public static final i:J

.field public static final j:[I


# instance fields
.field public final a:Lz96;

.field public final b:Lbf5;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/Random;

.field public final e:Lxb6;

.field public final f:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

.field public final g:Lgc6;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Ldc6;->i:J

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Ldc6;->j:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Lz96;Lbf5;Ljava/util/concurrent/Executor;Lb20;Ljava/util/Random;Lxb6;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lgc6;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz96;",
            "Lbf5;",
            "Ljava/util/concurrent/Executor;",
            "Lb20;",
            "Ljava/util/Random;",
            "Lxb6;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;",
            "Lgc6;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc6;->a:Lz96;

    .line 3
    iput-object p2, p0, Ldc6;->b:Lbf5;

    .line 4
    iput-object p3, p0, Ldc6;->c:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p5, p0, Ldc6;->d:Ljava/util/Random;

    .line 6
    iput-object p6, p0, Ldc6;->e:Lxb6;

    .line 7
    iput-object p7, p0, Ldc6;->f:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 8
    iput-object p8, p0, Ldc6;->g:Lgc6;

    .line 9
    iput-object p9, p0, Ldc6;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ldc6$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llb6;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ldc6;->f:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->b()Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 2
    iget-object v2, p0, Ldc6;->f:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Ldc6;->b:Lbf5;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v1, v0}, Lbf5;->a(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v1, p0, Ldc6;->g:Lgc6;

    .line 8
    iget-object v1, v1, Lgc6;->a:Landroid/content/SharedPreferences;

    const-string v4, "last_fetch_etag"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object v8, p0, Ldc6;->h:Ljava/util/Map;

    move-object v4, p1

    move-object v5, p2

    move-object v9, p3

    .line 10
    invoke-virtual/range {v2 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->fetch(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)Ldc6$a;

    move-result-object p1

    .line 11
    iget-object p2, p1, Ldc6$a;->c:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 12
    iget-object v1, p0, Ldc6;->g:Lgc6;

    .line 13
    iget-object v2, v1, Lgc6;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lnb6; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object v1, v1, Lgc6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_fetch_etag"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 16
    :cond_2
    :goto_2
    iget-object p2, p0, Ldc6;->g:Lgc6;

    .line 17
    sget-object v1, Lgc6;->e:Ljava/util/Date;

    invoke-virtual {p2, v0, v1}, Lgc6;->b(ILjava/util/Date;)V
    :try_end_2
    .catch Lnb6; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    iget p2, p1, Lnb6;->e:I

    const/16 v1, 0x1ad

    const/4 v2, 0x1

    if-eq p2, v1, :cond_4

    const/16 v3, 0x1f6

    if-eq p2, v3, :cond_4

    const/16 v3, 0x1f7

    if-eq p2, v3, :cond_4

    const/16 v3, 0x1f8

    if-ne p2, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p2, 0x1

    :goto_4
    if-eqz p2, :cond_5

    .line 19
    iget-object p2, p0, Ldc6;->g:Lgc6;

    invoke-virtual {p2}, Lgc6;->a()Lgc6$a;

    move-result-object p2

    .line 20
    iget p2, p2, Lgc6$a;->a:I

    add-int/2addr p2, v2

    .line 21
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ldc6;->j:[I

    array-length v5, v4

    .line 22
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    .line 23
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    .line 24
    div-long v5, v3, v5

    iget-object v7, p0, Ldc6;->d:Ljava/util/Random;

    long-to-int v4, v3

    invoke-virtual {v7, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v5, v3

    .line 25
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 26
    iget-object p3, p0, Ldc6;->g:Lgc6;

    invoke-virtual {p3, p2, v3}, Lgc6;->b(ILjava/util/Date;)V

    .line 27
    :cond_5
    iget-object p2, p0, Ldc6;->g:Lgc6;

    invoke-virtual {p2}, Lgc6;->a()Lgc6$a;

    move-result-object p2

    .line 28
    iget p3, p1, Lnb6;->e:I

    .line 29
    iget v3, p2, Lgc6$a;->a:I

    if-gt v3, v2, :cond_6

    if-ne p3, v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_c

    const/16 p2, 0x191

    if-eq p3, p2, :cond_b

    const/16 p2, 0x193

    if-eq p3, p2, :cond_a

    if-eq p3, v1, :cond_9

    const/16 p2, 0x1f4

    if-eq p3, p2, :cond_8

    packed-switch p3, :pswitch_data_0

    const-string p2, "The server returned an unexpected error."

    goto :goto_5

    :pswitch_0
    const-string p2, "The server is unavailable. Please try again later."

    goto :goto_5

    :cond_8
    const-string p2, "There was an internal server error."

    goto :goto_5

    .line 30
    :cond_9
    new-instance p1, Lkb6;

    const-string p2, "The throttled response from the server was not handled correctly by the FRC SDK."

    invoke-direct {p1, p2}, Lkb6;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string p2, "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project."

    goto :goto_5

    :cond_b
    const-string p2, "The request did not have the required credentials. Please make sure your google-services.json is valid."

    .line 31
    :goto_5
    new-instance p3, Lnb6;

    .line 32
    iget v0, p1, Lnb6;->e:I

    const-string v1, "Fetch failed: "

    .line 33
    invoke-static {v1, p2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2, p1}, Lnb6;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    throw p3

    .line 35
    :cond_c
    new-instance p1, Lmb6;

    .line 36
    iget-object p2, p2, Lgc6$a;->b:Ljava/util/Date;

    .line 37
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lmb6;-><init>(J)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
