.class public final Llx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lox4;


# direct methods
.method public constructor <init>(Lox4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Llx4;->b:Lox4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p2, p0, Llx4;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Llx4;->b:Lox4;

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lqw4;->f:Low4;

    .line 3
    iget-object v0, p0, Llx4;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
