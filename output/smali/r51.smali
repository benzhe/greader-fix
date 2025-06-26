.class public final synthetic Lr51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lp51;

.field public final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lp51;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr51;->e:Lp51;

    iput-object p2, p0, Lr51;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr51;->e:Lp51;

    iget-object v1, p0, Lr51;->f:Ljava/lang/Runnable;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, v0, Lp51;->h:Lp90;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2}, Lp90;->H5(Lx20;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void
.end method
