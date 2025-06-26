.class public Ly96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz96;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Lpe5;

.field public final b:Lpa6;

.field public final c:Lla6;

.field public final d:Lha6;

.field public final e:Lka6;

.field public final f:Lfa6;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lia6;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lga6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly96;->m:Ljava/lang/Object;

    .line 2
    new-instance v0, Ly96$a;

    invoke-direct {v0}, Ly96$a;-><init>()V

    sput-object v0, Ly96;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lpe5;Ls96;Ls96;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe5;",
            "Ls96<",
            "Lcb6;",
            ">;",
            "Ls96<",
            "Lby5;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v10, Ly96;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lpa6;

    .line 2
    invoke-virtual {p1}, Lpe5;->a()V

    .line 3
    iget-object v1, p1, Lpe5;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1, p2, p3}, Lpa6;-><init>(Landroid/content/Context;Ls96;Ls96;)V

    new-instance p2, Lla6;

    invoke-direct {p2, p1}, Lla6;-><init>(Lpe5;)V

    .line 5
    invoke-static {}, Lha6;->c()Lha6;

    move-result-object p3

    new-instance v1, Lka6;

    invoke-direct {v1, p1}, Lka6;-><init>(Lpe5;)V

    new-instance v2, Lfa6;

    invoke-direct {v2}, Lfa6;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Ly96;->g:Ljava/lang/Object;

    .line 8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Ly96;->k:Ljava/util/Set;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ly96;->l:Ljava/util/List;

    .line 10
    iput-object p1, p0, Ly96;->a:Lpe5;

    .line 11
    iput-object v0, p0, Ly96;->b:Lpa6;

    .line 12
    iput-object p2, p0, Ly96;->c:Lla6;

    .line 13
    iput-object p3, p0, Ly96;->d:Lha6;

    .line 14
    iput-object v1, p0, Ly96;->e:Lka6;

    .line 15
    iput-object v2, p0, Ly96;->f:Lfa6;

    .line 16
    iput-object v8, p0, Ly96;->h:Ljava/util/concurrent/ExecutorService;

    .line 17
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, p1

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Ly96;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static f()Ly96;
    .locals 3

    .line 1
    invoke-static {}, Lpe5;->b()Lpe5;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Null is not a valid value of FirebaseApp."

    .line 2
    invoke-static {v1, v2}, Lbi;->c(ZLjava/lang/Object;)V

    .line 3
    const-class v1, Lz96;

    .line 4
    invoke-virtual {v0}, Lpe5;->a()V

    .line 5
    iget-object v0, v0, Lpe5;->d:Leg5;

    invoke-virtual {v0, v1}, Lpf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ly96;

    return-object v0
.end method


# virtual methods
.method public a(Z)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Le45<",
            "Lea6;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ly96;->h()V

    .line 2
    new-instance v0, Lf45;

    invoke-direct {v0}, Lf45;-><init>()V

    .line 3
    new-instance v1, Lca6;

    iget-object v2, p0, Ly96;->d:Lha6;

    invoke-direct {v1, v2, v0}, Lca6;-><init>(Lha6;Lf45;)V

    .line 4
    iget-object v2, p0, Ly96;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Ly96;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, v0, Lf45;->a:Le55;

    .line 8
    iget-object v1, p0, Ly96;->h:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance v2, Lw96;

    invoke-direct {v2, p0, p1}, Lw96;-><init>(Ly96;Z)V

    .line 10
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Z)V
    .locals 5

    .line 1
    sget-object v0, Ly96;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ly96;->a:Lpe5;

    .line 3
    invoke-virtual {v1}, Lpe5;->a()V

    .line 4
    iget-object v1, v1, Lpe5;->a:Landroid/content/Context;

    const-string v2, "generatefid.lock"

    .line 5
    invoke-static {v1, v2}, Lu96;->a(Landroid/content/Context;Ljava/lang/String;)Lu96;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, p0, Ly96;->c:Lla6;

    .line 7
    invoke-virtual {v2}, Lla6;->b()Lma6;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lma6;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {p0, v2}, Ly96;->i(Lma6;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p0, Ly96;->c:Lla6;

    .line 11
    invoke-virtual {v2}, Lma6;->k()Lma6$a;

    move-result-object v2

    .line 12
    check-cast v2, Lja6$b;

    .line 13
    iput-object v3, v2, Lja6$b;->a:Ljava/lang/String;

    .line 14
    sget-object v3, Lla6$a;->g:Lla6$a;

    .line 15
    invoke-virtual {v2, v3}, Lja6$b;->b(Lla6$a;)Lma6$a;

    .line 16
    invoke-virtual {v2}, Lja6$b;->a()Lma6;

    move-result-object v2

    .line 17
    invoke-virtual {v4, v2}, Lla6;->a(Lma6;)Lma6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 18
    :try_start_2
    invoke-virtual {v1}, Lu96;->b()V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {v2}, Lma6;->k()Lma6$a;

    move-result-object v0

    check-cast v0, Lja6$b;

    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lja6$b;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lja6$b;->a()Lma6;

    move-result-object v2

    .line 22
    :cond_2
    invoke-virtual {p0, v2}, Ly96;->l(Lma6;)V

    .line 23
    iget-object v0, p0, Ly96;->i:Ljava/util/concurrent/ExecutorService;

    .line 24
    new-instance v1, Lx96;

    invoke-direct {v1, p0, p1}, Lx96;-><init>(Ly96;Z)V

    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 26
    :try_start_3
    invoke-virtual {v1}, Lu96;->b()V

    .line 27
    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final c(Lma6;)Lma6;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa6;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Laa6$a;->f:Laa6$a;

    iget-object v2, v1, Ly96;->b:Lpa6;

    .line 2
    invoke-virtual/range {p0 .. p0}, Ly96;->d()Ljava/lang/String;

    move-result-object v3

    .line 3
    move-object/from16 v4, p1

    check-cast v4, Lja6;

    .line 4
    iget-object v5, v4, Lja6;->b:Ljava/lang/String;

    .line 5
    invoke-virtual/range {p0 .. p0}, Ly96;->g()Ljava/lang/String;

    move-result-object v6

    .line 6
    iget-object v4, v4, Lja6;->e:Ljava/lang/String;

    .line 7
    iget-object v7, v2, Lpa6;->d:Lra6;

    invoke-virtual {v7}, Lra6;->a()Z

    move-result v7

    const-string v8, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v11, 0x1

    aput-object v5, v9, v11

    const-string v5, "projects/%s/installations/%s/authTokens:generate"

    .line 8
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v5}, Lpa6;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    const/4 v9, 0x0

    :goto_0
    if-gt v9, v11, :cond_9

    .line 10
    invoke-virtual {v2, v5, v3}, Lpa6;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12

    :try_start_0
    const-string v13, "POST"

    .line 11
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v13, "Authorization"

    .line 12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FIS_v2 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v12, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 14
    invoke-virtual {v2, v12}, Lpa6;->h(Ljava/net/HttpURLConnection;)V

    .line 15
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 16
    iget-object v14, v2, Lpa6;->d:Lra6;

    invoke-virtual {v14, v13}, Lra6;->b(I)V

    const/16 v14, 0xc8

    if-lt v13, v14, :cond_0

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x0

    if-eqz v14, :cond_1

    .line 17
    invoke-virtual {v2, v12}, Lpa6;->f(Ljava/net/HttpURLConnection;)Lsa6;

    move-result-object v2

    goto :goto_3

    .line 18
    :cond_1
    invoke-static {v12, v15, v3, v6}, Lpa6;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x191

    if-eq v13, v14, :cond_5

    const/16 v14, 0x194

    if-ne v13, v14, :cond_2

    goto :goto_2

    :cond_2
    const/16 v14, 0x1ad

    if-eq v13, v14, :cond_4

    const/16 v14, 0x1f4

    if-lt v13, v14, :cond_3

    const/16 v14, 0x258

    if-ge v13, v14, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v13, "Firebase-Installations"

    const-string v14, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 19
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lsa6;->a()Lsa6$a;

    move-result-object v13

    sget-object v14, Lsa6$b;->f:Lsa6$b;

    check-cast v13, Loa6$b;

    .line 21
    iput-object v14, v13, Loa6$b;->c:Lsa6$b;

    .line 22
    invoke-virtual {v13}, Loa6$b;->a()Lsa6;

    move-result-object v2

    goto :goto_3

    .line 23
    :cond_4
    new-instance v13, Laa6;

    const-string v14, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v15, Laa6$a;->g:Laa6$a;

    invoke-direct {v13, v14, v15}, Laa6;-><init>(Ljava/lang/String;Laa6$a;)V

    throw v13

    .line 24
    :cond_5
    :goto_2
    invoke-static {}, Lsa6;->a()Lsa6$a;

    move-result-object v13

    sget-object v14, Lsa6$b;->g:Lsa6$b;

    check-cast v13, Loa6$b;

    .line 25
    iput-object v14, v13, Loa6$b;->c:Lsa6$b;

    .line 26
    invoke-virtual {v13}, Loa6$b;->a()Lsa6;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :goto_3
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 28
    check-cast v2, Loa6;

    .line 29
    iget-object v3, v2, Loa6;->c:Lsa6$b;

    .line 30
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v11, :cond_7

    if-ne v3, v7, :cond_6

    .line 31
    monitor-enter p0

    .line 32
    :try_start_1
    iput-object v15, v1, Ly96;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    .line 34
    invoke-virtual/range {p1 .. p1}, Lma6;->k()Lma6$a;

    move-result-object v0

    sget-object v2, Lla6$a;->f:Lla6$a;

    invoke-virtual {v0, v2}, Lma6$a;->b(Lla6$a;)Lma6$a;

    invoke-virtual {v0}, Lma6$a;->a()Lma6;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 35
    monitor-exit p0

    throw v2

    .line 36
    :cond_6
    new-instance v2, Laa6;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v2, v3, v0}, Laa6;-><init>(Ljava/lang/String;Laa6$a;)V

    throw v2

    :cond_7
    const-string v0, "BAD CONFIG"

    .line 37
    invoke-virtual/range {p1 .. p1}, Lma6;->k()Lma6$a;

    move-result-object v2

    .line 38
    check-cast v2, Lja6$b;

    .line 39
    iput-object v0, v2, Lja6$b;->g:Ljava/lang/String;

    .line 40
    sget-object v0, Lla6$a;->i:Lla6$a;

    .line 41
    invoke-virtual {v2, v0}, Lja6$b;->b(Lla6$a;)Lma6$a;

    .line 42
    invoke-virtual {v2}, Lja6$b;->a()Lma6;

    move-result-object v0

    return-object v0

    .line 43
    :cond_8
    iget-object v0, v2, Loa6;->a:Ljava/lang/String;

    .line 44
    iget-wide v2, v2, Loa6;->b:J

    .line 45
    iget-object v4, v1, Ly96;->d:Lha6;

    .line 46
    invoke-virtual {v4}, Lha6;->b()J

    move-result-wide v4

    .line 47
    invoke-virtual/range {p1 .. p1}, Lma6;->k()Lma6$a;

    move-result-object v6

    .line 48
    check-cast v6, Lja6$b;

    .line 49
    iput-object v0, v6, Lja6$b;->c:Ljava/lang/String;

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lja6$b;->e:Ljava/lang/Long;

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lja6$b;->f:Ljava/lang/Long;

    .line 52
    invoke-virtual {v6}, Lja6$b;->a()Lma6;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    .line 53
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 54
    throw v0

    .line 55
    :catch_0
    :goto_4
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 56
    :cond_9
    new-instance v2, Laa6;

    invoke-direct {v2, v8, v0}, Laa6;-><init>(Ljava/lang/String;Laa6$a;)V

    throw v2

    .line 57
    :cond_a
    new-instance v2, Laa6;

    invoke-direct {v2, v8, v0}, Laa6;-><init>(Ljava/lang/String;Laa6$a;)V

    throw v2
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly96;->a:Lpe5;

    .line 2
    invoke-virtual {v0}, Lpe5;->a()V

    .line 3
    iget-object v0, v0, Lpe5;->c:Lve5;

    .line 4
    iget-object v0, v0, Lve5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly96;->a:Lpe5;

    .line 2
    invoke-virtual {v0}, Lpe5;->a()V

    .line 3
    iget-object v0, v0, Lpe5;->c:Lve5;

    .line 4
    iget-object v0, v0, Lve5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly96;->a:Lpe5;

    .line 2
    invoke-virtual {v0}, Lpe5;->a()V

    .line 3
    iget-object v0, v0, Lpe5;->c:Lve5;

    .line 4
    iget-object v0, v0, Lve5;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly96;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lbi;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ly96;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lbi;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ly96;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lbi;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Ly96;->e()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v3, Lha6;->c:Ljava/util/regex/Pattern;

    const-string v3, ":"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 7
    invoke-static {v0, v1}, Lbi;->c(ZLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Ly96;->d()Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v1, Lha6;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 10
    invoke-static {v0, v2}, Lbi;->c(ZLjava/lang/Object;)V

    return-void
.end method

.method public final i(Lma6;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Ly96;->a:Lpe5;

    .line 2
    invoke-virtual {v0}, Lpe5;->a()V

    .line 3
    iget-object v0, v0, Lpe5;->b:Ljava/lang/String;

    const-string v1, "CHIME_ANDROID_SDK"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ly96;->a:Lpe5;

    invoke-virtual {v0}, Lpe5;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    check-cast p1, Lja6;

    .line 6
    iget-object p1, p1, Lja6;->c:Lla6$a;

    .line 7
    sget-object v0, Lla6$a;->e:Lla6$a;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 8
    :cond_2
    iget-object p1, p0, Ly96;->f:Lfa6;

    invoke-virtual {p1}, Lfa6;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    iget-object p1, p0, Ly96;->e:Lka6;

    .line 10
    iget-object v0, p1, Lka6;->a:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p1, Lka6;->a:Landroid/content/SharedPreferences;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v2, p1, Lka6;->a:Landroid/content/SharedPreferences;

    const-string v3, "|S|id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 13
    :try_start_2
    monitor-exit v0

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Lka6;->a()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Ly96;->f:Lfa6;

    invoke-virtual {p1}, Lfa6;->a()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2

    :catchall_0
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final j(Lma6;)Lma6;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa6;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Laa6$a;->f:Laa6$a;

    .line 2
    move-object/from16 v2, p1

    check-cast v2, Lja6;

    .line 3
    iget-object v3, v2, Lja6;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_3

    .line 5
    iget-object v3, v1, Ly96;->e:Lka6;

    .line 6
    iget-object v6, v3, Lka6;->a:Landroid/content/SharedPreferences;

    monitor-enter v6

    .line 7
    :try_start_0
    sget-object v7, Lka6;->c:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 8
    iget-object v11, v3, Lka6;->b:Ljava/lang/String;

    .line 9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "|T|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "|"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 10
    iget-object v11, v3, Lka6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v11, v10, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 11
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v3, "{"

    .line 12
    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 13
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "token"

    .line 14
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    move-object v4, v10

    .line 15
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 16
    :cond_2
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 18
    :cond_3
    :goto_2
    iget-object v3, v1, Ly96;->b:Lpa6;

    .line 19
    invoke-virtual/range {p0 .. p0}, Ly96;->d()Ljava/lang/String;

    move-result-object v6

    .line 20
    iget-object v2, v2, Lja6;->b:Ljava/lang/String;

    .line 21
    invoke-virtual/range {p0 .. p0}, Ly96;->g()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual/range {p0 .. p0}, Ly96;->e()Ljava/lang/String;

    move-result-object v8

    .line 23
    iget-object v9, v3, Lpa6;->d:Lra6;

    invoke-virtual {v9}, Lra6;->a()Z

    move-result v9

    const-string v10, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v7, v11, v5

    const-string v12, "projects/%s/installations"

    .line 24
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-virtual {v3, v11}, Lpa6;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    const/4 v12, 0x0

    :goto_3
    if-gt v12, v9, :cond_b

    .line 26
    invoke-virtual {v3, v11, v6}, Lpa6;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v13

    :try_start_3
    const-string v14, "POST"

    .line 27
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v13, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v4, :cond_4

    const-string v14, "x-goog-fis-android-iid-migration-auth"

    .line 29
    invoke-virtual {v13, v14, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_4
    invoke-virtual {v3, v13, v2, v8}, Lpa6;->g(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 32
    iget-object v15, v3, Lpa6;->d:Lra6;

    invoke-virtual {v15, v14}, Lra6;->b(I)V

    const/16 v15, 0xc8

    if-lt v14, v15, :cond_5

    const/16 v15, 0x12c

    if-ge v14, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_6

    .line 33
    invoke-virtual {v3, v13}, Lpa6;->e(Ljava/net/HttpURLConnection;)Lqa6;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 35
    :cond_6
    :try_start_4
    invoke-static {v13, v8, v6, v7}, Lpa6;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x1ad

    if-eq v14, v15, :cond_a

    const/16 v15, 0x1f4

    if-lt v14, v15, :cond_7

    const/16 v15, 0x258

    if-ge v14, v15, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string v14, "Firebase-Installations"

    const-string v15, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 36
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    .line 37
    sget-object v21, Lqa6$a;->f:Lqa6$a;

    .line 38
    new-instance v14, Lna6;

    const/16 v22, 0x0

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v22}, Lna6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsa6;Lqa6$a;Lna6$a;)V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v14

    .line 40
    :goto_5
    check-cast v2, Lna6;

    .line 41
    iget-object v3, v2, Lna6;->e:Lqa6$a;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_9

    if-ne v3, v9, :cond_8

    const-string v0, "BAD CONFIG"

    .line 43
    invoke-virtual/range {p1 .. p1}, Lma6;->k()Lma6$a;

    move-result-object v2

    .line 44
    check-cast v2, Lja6$b;

    .line 45
    iput-object v0, v2, Lja6$b;->g:Ljava/lang/String;

    .line 46
    sget-object v0, Lla6$a;->i:Lla6$a;

    .line 47
    invoke-virtual {v2, v0}, Lja6$b;->b(Lla6$a;)Lma6$a;

    .line 48
    invoke-virtual {v2}, Lja6$b;->a()Lma6;

    move-result-object v0

    return-object v0

    .line 49
    :cond_8
    new-instance v2, Laa6;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v2, v3, v0}, Laa6;-><init>(Ljava/lang/String;Laa6$a;)V

    throw v2

    .line 50
    :cond_9
    iget-object v0, v2, Lna6;->b:Ljava/lang/String;

    .line 51
    iget-object v3, v2, Lna6;->c:Ljava/lang/String;

    .line 52
    iget-object v4, v1, Ly96;->d:Lha6;

    .line 53
    invoke-virtual {v4}, Lha6;->b()J

    move-result-wide v4

    .line 54
    iget-object v6, v2, Lna6;->d:Lsa6;

    .line 55
    invoke-virtual {v6}, Lsa6;->c()Ljava/lang/String;

    move-result-object v6

    .line 56
    iget-object v2, v2, Lna6;->d:Lsa6;

    .line 57
    invoke-virtual {v2}, Lsa6;->d()J

    move-result-wide v7

    .line 58
    invoke-virtual/range {p1 .. p1}, Lma6;->k()Lma6$a;

    move-result-object v2

    .line 59
    check-cast v2, Lja6$b;

    .line 60
    iput-object v0, v2, Lja6$b;->a:Ljava/lang/String;

    .line 61
    sget-object v0, Lla6$a;->h:Lla6$a;

    .line 62
    invoke-virtual {v2, v0}, Lja6$b;->b(Lla6$a;)Lma6$a;

    .line 63
    iput-object v6, v2, Lja6$b;->c:Ljava/lang/String;

    .line 64
    iput-object v3, v2, Lja6$b;->d:Ljava/lang/String;

    .line 65
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lja6$b;->e:Ljava/lang/Long;

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lja6$b;->f:Ljava/lang/Long;

    .line 67
    invoke-virtual {v2}, Lja6$b;->a()Lma6;

    move-result-object v0

    return-object v0

    .line 68
    :cond_a
    :try_start_5
    new-instance v14, Laa6;

    const-string v15, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v5, Laa6$a;->g:Laa6$a;

    invoke-direct {v14, v15, v5}, Laa6;-><init>(Ljava/lang/String;Laa6$a;)V

    throw v14
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 69
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 70
    throw v0

    .line 71
    :catch_1
    :goto_6
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 72
    :cond_b
    new-instance v2, Laa6;

    invoke-direct {v2, v10, v0}, Laa6;-><init>(Ljava/lang/String;Laa6$a;)V

    throw v2

    .line 73
    :cond_c
    new-instance v2, Laa6;

    invoke-direct {v2, v10, v0}, Laa6;-><init>(Ljava/lang/String;Laa6$a;)V

    throw v2
.end method

.method public final k(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly96;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ly96;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lga6;

    .line 5
    invoke-interface {v2, p1}, Lga6;->a(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l(Lma6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly96;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ly96;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lga6;

    .line 5
    invoke-interface {v2, p1}, Lga6;->b(Lma6;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n()Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le45<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ly96;->h()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ly96;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lf45;

    invoke-direct {v0}, Lf45;-><init>()V

    .line 6
    new-instance v1, Lda6;

    invoke-direct {v1, v0}, Lda6;-><init>(Lf45;)V

    .line 7
    iget-object v2, p0, Ly96;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_1
    iget-object v3, p0, Ly96;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v0, v0, Lf45;->a:Le55;

    .line 11
    iget-object v1, p0, Ly96;->h:Ljava/util/concurrent/ExecutorService;

    .line 12
    new-instance v2, Lv96;

    invoke-direct {v2, p0}, Lv96;-><init>(Ly96;)V

    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 15
    monitor-exit p0

    throw v0
.end method
