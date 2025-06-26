.class public Lp97$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp97;->d(Lc87$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lp97;


# direct methods
.method public constructor <init>(Lp97;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp97$d;->e:Lp97;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp97$d;->e:Lp97;

    .line 2
    iget-object v1, v0, Lp97;->n:Ljava/util/concurrent/Executor;

    .line 3
    iget-object v0, v0, Lp97;->r:Lp97$e;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lp97$d;->e:Lp97;

    .line 6
    iget-object v0, v0, Lp97;->j:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lp97$d;->e:Lp97;

    const v2, 0x7fffffff

    .line 9
    iput v2, v1, Lp97;->B:I

    .line 10
    invoke-virtual {v1}, Lp97;->w()Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
