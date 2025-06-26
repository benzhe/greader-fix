.class public final Lb15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lhw4;

.field public final synthetic f:Lg15;


# direct methods
.method public constructor <init>(Lg15;Lhw4;)V
    .locals 0

    iput-object p1, p0, Lb15;->f:Lg15;

    iput-object p2, p0, Lb15;->e:Lhw4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lb15;->f:Lg15;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb15;->f:Lg15;

    const/4 v2, 0x0

    .line 1
    iput-boolean v2, v1, Lg15;->a:Z

    .line 2
    iget-object v1, p0, Lb15;->f:Lg15;

    iget-object v1, v1, Lg15;->c:Lh15;

    .line 3
    invoke-virtual {v1}, Lh15;->w()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb15;->f:Lg15;

    iget-object v1, v1, Lg15;->c:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Connected to service"

    .line 6
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lb15;->f:Lg15;

    iget-object v1, v1, Lg15;->c:Lh15;

    iget-object v2, p0, Lb15;->e:Lhw4;

    .line 7
    invoke-virtual {v1}, Lyv4;->d()V

    const-string v3, "null reference"

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v2, v1, Lh15;->d:Lhw4;

    .line 10
    invoke-virtual {v1}, Lh15;->s()V

    .line 11
    invoke-virtual {v1}, Lh15;->u()V

    .line 12
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
