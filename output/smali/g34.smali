.class public abstract Lg34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:J

.field public final f:J

.field public final g:Z

.field public final synthetic h:Lq34;


# direct methods
.method public constructor <init>(Lq34;Z)V
    .locals 2

    iput-object p1, p0, Lg34;->h:Lq34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lq34;->b:Lb20;

    .line 1
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lg34;->e:J

    iget-object p1, p1, Lq34;->b:Lb20;

    .line 2
    invoke-interface {p1}, Lb20;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lg34;->f:J

    iput-boolean p2, p0, Lg34;->g:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lg34;->h:Lq34;

    .line 1
    iget-boolean v0, v0, Lq34;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lg34;->b()V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lg34;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg34;->h:Lq34;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lg34;->g:Z

    .line 4
    invoke-virtual {v1, v0, v2, v3}, Lq34;->e(Ljava/lang/Exception;ZZ)V

    .line 5
    invoke-virtual {p0}, Lg34;->b()V

    return-void
.end method
