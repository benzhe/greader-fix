.class public Lmi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laj5$a;


# instance fields
.field public final synthetic a:Lii5;


# direct methods
.method public constructor <init>(Lii5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmi5;->a:Lii5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkm5;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    iget-object v6, p0, Lmi5;->a:Lii5;

    .line 2
    monitor-enter v6

    .line 3
    :try_start_0
    sget-object v0, Lah5;->a:Lah5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 7
    iget-object v7, v6, Lii5;->e:Lwh5;

    new-instance v8, Loi5;

    move-object v0, v8

    move-object v1, v6

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Loi5;-><init>(Lii5;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lkm5;)V

    .line 8
    invoke-virtual {v7, v8}, Lwh5;->c(Ljava/util/concurrent/Callable;)Le45;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-static {p1}, Lqj5;->a(Le45;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catch_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v6

    throw p1
.end method
