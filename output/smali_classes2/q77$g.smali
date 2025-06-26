.class public Lq77$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77;-><init>(Lf57;Lb67;Ln57$a;Lh87;Lqd5;Ljava/util/List;Ld97;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lq77;


# direct methods
.method public constructor <init>(Lq77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$g;->e:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lq77$g;->e:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->l:Lq77$k;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lq77$k;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Lq77$k;->a:Lh87;

    invoke-interface {v1}, Lh87;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.getObject()"

    iget-object v3, v0, Lq77$k;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lc50;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lq77$k;->b:Ljava/util/concurrent/Executor;

    .line 6
    :cond_0
    iget-object v1, v0, Lq77$k;->b:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 7
    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method
