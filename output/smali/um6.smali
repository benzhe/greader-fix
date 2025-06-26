.class public Lum6;
.super Lsm6$b;
.source "SourceFile"


# instance fields
.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:J

.field public final synthetic n:Lvm6;


# direct methods
.method public constructor <init>(Lvm6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lum6;->n:Lvm6;

    iput-object p5, p0, Lum6;->l:Ljava/lang/Object;

    iput-wide p6, p0, Lum6;->m:J

    invoke-direct {p0, p2, p3, p4}, Lsm6$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lum6;->n:Lvm6;

    iget-object v1, p0, Lum6;->l:Ljava/lang/Object;

    iget-wide v2, p0, Lum6;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lvm6;->d(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
