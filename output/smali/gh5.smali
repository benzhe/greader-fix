.class public Lgh5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfl5;

.field public final b:Lpe5;

.field public final c:Landroid/content/Context;

.field public d:Landroid/content/pm/PackageManager;

.field public e:Ljava/lang/String;

.field public f:Landroid/content/pm/PackageInfo;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Lgj5;

.field public m:Lbj5;


# direct methods
.method public constructor <init>(Lpe5;Landroid/content/Context;Lgj5;Lbj5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lfl5;

    invoke-direct {v0}, Lfl5;-><init>()V

    iput-object v0, p0, Lgh5;->a:Lfl5;

    .line 3
    iput-object p1, p0, Lgh5;->b:Lpe5;

    .line 4
    iput-object p2, p0, Lgh5;->c:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lgh5;->l:Lgj5;

    .line 6
    iput-object p4, p0, Lgh5;->m:Lbj5;

    return-void
.end method

.method public static a(Lgh5;Lpm5;Ljava/lang/String;Ljm5;Ljava/util/concurrent/Executor;Z)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lim5;->f:Lim5;

    iget-object v1, p1, Lpm5;->a:Ljava/lang/String;

    const-string v2, "new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "17.3.0"

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p1, Lpm5;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lgh5;->b(Ljava/lang/String;Ljava/lang/String;)Lom5;

    move-result-object p2

    .line 4
    new-instance v1, Lwm5;

    .line 5
    invoke-virtual {p0}, Lgh5;->c()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lpm5;->b:Ljava/lang/String;

    iget-object p0, p0, Lgh5;->a:Lfl5;

    invoke-direct {v1, v3, p1, p0, v2}, Lwm5;-><init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p2, p5}, Lvm5;->d(Lom5;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p3, v0, p4}, Ljm5;->d(Lim5;Ljava/util/concurrent/Executor;)Le45;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lah5;->a:Lah5;

    const/4 p1, 0x0

    const/4 p2, 0x6

    .line 9
    invoke-virtual {p0, p2}, Lah5;->a(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "FirebaseCrashlytics"

    const-string p2, "Failed to create app with Crashlytics service."

    .line 10
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p1, Lpm5;->a:Ljava/lang/String;

    const-string v3, "configured"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p3, v0, p4}, Ljm5;->d(Lim5;Ljava/util/concurrent/Executor;)Le45;

    goto :goto_0

    .line 13
    :cond_2
    iget-boolean p3, p1, Lpm5;->f:Z

    if-eqz p3, :cond_3

    .line 14
    sget-object p3, Lah5;->a:Lah5;

    const-string p4, "Server says an update is required - forcing a full App update."

    invoke-virtual {p3, p4}, Lah5;->b(Ljava/lang/String;)V

    .line 15
    iget-object p3, p1, Lpm5;->e:Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lgh5;->b(Ljava/lang/String;Ljava/lang/String;)Lom5;

    move-result-object p2

    .line 16
    new-instance p3, Lzm5;

    .line 17
    invoke-virtual {p0}, Lgh5;->c()Ljava/lang/String;

    move-result-object p4

    iget-object p1, p1, Lpm5;->b:Ljava/lang/String;

    iget-object p0, p0, Lgh5;->a:Lfl5;

    invoke-direct {p3, p4, p1, p0, v2}, Lzm5;-><init>(Ljava/lang/String;Ljava/lang/String;Lfl5;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3, p2, p5}, Lvm5;->d(Lom5;Z)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lom5;
    .locals 14

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lgh5;->c:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lvh5;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const/4 v1, 0x2

    .line 3
    iget-object v3, v0, Lgh5;->h:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, v0, Lgh5;->g:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 4
    invoke-static {v2}, Lvh5;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5
    iget-object v1, v0, Lgh5;->i:Ljava/lang/String;

    invoke-static {v1}, Ldj5;->i(Ljava/lang/String;)Ldj5;

    move-result-object v1

    .line 6
    iget v11, v1, Ldj5;->e:I

    .line 7
    iget-object v1, v0, Lgh5;->l:Lgj5;

    .line 8
    iget-object v6, v1, Lgj5;->c:Ljava/lang/String;

    .line 9
    new-instance v1, Lom5;

    iget-object v7, v0, Lgh5;->h:Ljava/lang/String;

    iget-object v8, v0, Lgh5;->g:Ljava/lang/String;

    iget-object v10, v0, Lgh5;->j:Ljava/lang/String;

    iget-object v12, v0, Lgh5;->k:Ljava/lang/String;

    const-string v13, "0"

    move-object v3, v1

    move-object v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v13}, Lom5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lgh5;->c:Landroid/content/Context;

    const-string v1, "com.crashlytics.ApiEndpoint"

    const-string v2, "string"

    .line 2
    invoke-static {v0, v1, v2}, Lvh5;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
