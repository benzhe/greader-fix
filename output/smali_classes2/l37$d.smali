.class public final Ll37$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ll37$b;

.field public final synthetic g:Ll37;


# direct methods
.method public constructor <init>(Ll37;Ljava/util/concurrent/Executor;Ll37$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll37$d;->g:Ll37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ll37$d;->e:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p3, p0, Ll37$d;->f:Ll37$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ll37$d;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Ll37;->i:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Exception notifying context listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll37$d;->f:Ll37$b;

    iget-object v1, p0, Ll37$d;->g:Ll37;

    invoke-interface {v0, v1}, Ll37$b;->a(Ll37;)V

    return-void
.end method
