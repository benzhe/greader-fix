.class public final synthetic Lpt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmt1;

.field public final f:Ltc0;


# direct methods
.method public constructor <init>(Lmt1;Ltc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpt1;->e:Lmt1;

    iput-object p2, p0, Lpt1;->f:Ltc0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpt1;->e:Lmt1;

    iget-object v1, p0, Lpt1;->f:Ltc0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lmt1;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ltc0;->O5(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
