.class public Laj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laj5$a;
    }
.end annotation


# instance fields
.field public final a:Laj5$a;

.field public final b:Lkm5;

.field public final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Laj5$a;Lkm5;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Laj5;->a:Laj5$a;

    .line 3
    iput-object p2, p0, Laj5;->b:Lkm5;

    .line 4
    iput-object p3, p0, Laj5;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Laj5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Laj5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    const-string v1, "Crashlytics completed exception processing. Invoking default exception handler."

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    sget-object v2, Lah5;->a:Lah5;

    const-string v3, "Could not handle uncaught exception; null thread"

    invoke-virtual {v2, v3}, Lah5;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 3
    sget-object v2, Lah5;->a:Lah5;

    const-string v3, "Could not handle uncaught exception; null throwable"

    invoke-virtual {v2, v3}, Lah5;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Laj5;->a:Laj5$a;

    iget-object v3, p0, Laj5;->b:Lkm5;

    check-cast v2, Lmi5;

    invoke-virtual {v2, v3, p1, p2}, Lmi5;->a(Lkm5;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    sget-object v2, Lah5;->a:Lah5;

    .line 6
    invoke-virtual {v2, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 7
    :goto_1
    iget-object v1, p0, Laj5;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 8
    iget-object p1, p0, Laj5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    .line 9
    :goto_2
    :try_start_1
    sget-object v3, Lah5;->a:Lah5;

    const-string v4, "An error occurred in the uncaught exception handler"

    const/4 v5, 0x6

    .line 10
    invoke-virtual {v3, v5}, Lah5;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "FirebaseCrashlytics"

    .line 11
    invoke-static {v5, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_2
    invoke-virtual {v3, v1}, Lah5;->b(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    return-void

    .line 13
    :goto_4
    sget-object v3, Lah5;->a:Lah5;

    .line 14
    invoke-virtual {v3, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Laj5;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Laj5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    throw v2
.end method
