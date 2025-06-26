.class public Lq77$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq77;


# direct methods
.method public constructor <init>(Lq77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$a;->a:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object p1, Lq77;->c0:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "["

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lq77$a;->a:Lq77;

    .line 2
    iget-object v2, v2, Lq77;->a:Ly37;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] Uncaught exception in the SynchronizationContext. Panic!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lq77$a;->a:Lq77;

    .line 6
    iget-boolean v0, p1, Lq77;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lq77;->A:Z

    .line 8
    invoke-virtual {p1, v0}, Lq77;->r(Z)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lq77;->w(Z)V

    .line 10
    new-instance v0, Ls77;

    invoke-direct {v0, p1, p2}, Ls77;-><init>(Lq77;Ljava/lang/Throwable;)V

    .line 11
    iput-object v0, p1, Lq77;->z:Lc47$i;

    .line 12
    iget-object p2, p1, Lq77;->D:Lh67;

    invoke-virtual {p2, v0}, Lh67;->i(Lc47$i;)V

    .line 13
    iget-object p2, p1, Lq77;->N:Lz27;

    sget-object v0, Lz27$a;->h:Lz27$a;

    const-string v1, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {p2, v0, v1}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lq77;->s:Le67;

    sget-object p2, Li37;->g:Li37;

    invoke-virtual {p1, p2}, Le67;->a(Li37;)V

    :goto_0
    return-void
.end method
