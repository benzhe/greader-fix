.class public final synthetic Lef5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lef5;

    invoke-direct {v0}, Lef5;-><init>()V

    sput-object v0, Lef5;->a:Lwf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltf5;)Ljava/lang/Object;
    .locals 7

    const-class v0, Lpe5;

    .line 1
    invoke-interface {p1, v0}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpe5;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p1, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lno5;

    .line 3
    invoke-interface {p1, v2}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lno5;

    const-string v2, "null reference"

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "null reference"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "null reference"

    .line 6
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null reference"

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lcf5;->c:Lbf5;

    if-nez v2, :cond_2

    const-class v2, Lcf5;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcf5;->c:Lbf5;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    .line 10
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 11
    invoke-virtual {v0}, Lpe5;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Lne5;

    sget-object v5, Lkf5;->e:Ljava/util/concurrent/Executor;

    .line 12
    sget-object v6, Llf5;->a:Llo5;

    invoke-interface {p1, v4, v5, v6}, Lno5;->b(Ljava/lang/Class;Ljava/util/concurrent/Executor;Llo5;)V

    const-string p1, "dataCollectionDefaultEnabled"

    .line 13
    invoke-virtual {v0}, Lpe5;->f()Z

    move-result v0

    .line 14
    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    new-instance p1, Lcf5;

    const/4 v0, 0x0

    .line 15
    invoke-static {v1, v0, v0, v0, v3}, Lq34;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lq34;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lq34;->d:Lxr4;

    .line 17
    invoke-direct {p1, v0}, Lcf5;-><init>(Lxr4;)V

    sput-object p1, Lcf5;->c:Lbf5;

    .line 18
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    sget-object p1, Lcf5;->c:Lbf5;

    return-object p1
.end method
