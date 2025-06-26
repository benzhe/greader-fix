.class public final Lmc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$a;


# instance fields
.field public final synthetic a:Lxs0;

.field public final synthetic b:Lic0;


# direct methods
.method public constructor <init>(Lic0;Lxs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmc0;->b:Lic0;

    iput-object p2, p0, Lmc0;->a:Lxs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmc0;->a:Lxs0;

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x22

    const-string v3, "onConnectionSuspended: "

    invoke-static {v2, v3, p1}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lmc0;->a:Lxs0;

    iget-object v0, p0, Lmc0;->b:Lic0;

    .line 2
    iget-object v0, v0, Lic0;->a:Lbc0;

    .line 3
    invoke-virtual {v0}, Lbc0;->p()Lgc0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lxs0;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lmc0;->a:Lxs0;

    invoke-virtual {v0, p1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
