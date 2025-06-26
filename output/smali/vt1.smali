.class public final synthetic Lvt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmt1;

.field public final f:Lzl2;

.field public final g:Lpc0;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmt1;Lzl2;Lpc0;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvt1;->e:Lmt1;

    iput-object p2, p0, Lvt1;->f:Lzl2;

    iput-object p3, p0, Lvt1;->g:Lpc0;

    iput-object p4, p0, Lvt1;->h:Ljava/util/List;

    iput-object p5, p0, Lvt1;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lvt1;->e:Lmt1;

    iget-object v1, p0, Lvt1;->f:Lzl2;

    iget-object v2, p0, Lvt1;->g:Lpc0;

    iget-object v3, p0, Lvt1;->h:Ljava/util/List;

    iget-object v4, p0, Lvt1;->i:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v5, v0, Lmt1;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v5, v0, Lmt1;->f:Landroid/content/Context;

    .line 4
    :goto_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lpl2; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v0, v1, Lzl2;->a:Lig0;

    .line 6
    new-instance v1, Ly20;

    invoke-direct {v1, v5}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v0, v1, v2, v3}, Lig0;->r1(Lx20;Lpc0;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 8
    :try_start_2
    new-instance v1, Lpl2;

    invoke-direct {v1, v0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lpl2; {:try_start_2 .. :try_end_2} :catch_0

    .line 9
    :catch_0
    :try_start_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to initialize adapter. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement the initialize() method."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lpc0;->onInitializationFailed(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, ""

    .line 10
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
