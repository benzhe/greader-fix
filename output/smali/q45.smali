.class public final Lq45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lr45;


# direct methods
.method public constructor <init>(Lr45;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq45;->e:Lr45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq45;->e:Lr45;

    .line 2
    iget-object v0, v0, Lr45;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lq45;->e:Lr45;

    .line 5
    iget-object v1, v1, Lr45;->c:Ly35;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ly35;->b()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
