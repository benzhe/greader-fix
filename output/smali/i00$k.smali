.class public final Li00$k;
.super Li00$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li00$f;"
    }
.end annotation


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Li00;


# direct methods
.method public constructor <init>(Li00;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li00$k;->h:Li00;

    .line 2
    invoke-direct {p0, p1, p2, p4}, Li00$f;-><init>(Li00;ILandroid/os/Bundle;)V

    .line 3
    iput-object p3, p0, Li00$k;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li00$k;->h:Li00;

    .line 2
    iget-object v0, v0, Li00;->v:Li00$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Li00$b;->g0(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 4
    :cond_0
    iget-object v0, p0, Li00$k;->h:Li00;

    invoke-virtual {v0, p1}, Li00;->h(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final e()Z
    .locals 7

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Li00$k;->g:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v3, p0, Li00$k;->h:Li00;

    invoke-virtual {v3}, Li00;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Li00$k;->h:Li00;

    invoke-virtual {v3}, Li00;->e()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v3, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "service descriptor mismatch: "

    const-string v6, " vs. "

    invoke-static {v4, v5, v3, v6, v2}, Ljo;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Li00$k;->h:Li00;

    iget-object v2, p0, Li00$k;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Li00;->b(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v2, p0, Li00$k;->h:Li00;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Li00;->n(Li00;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Li00$k;->h:Li00;

    const/4 v3, 0x3

    .line 6
    invoke-static {v2, v3, v4, v0}, Li00;->n(Li00;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_1
    iget-object v0, p0, Li00$k;->h:Li00;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Li00;->y:Lcom/google/android/gms/common/ConnectionResult;

    .line 9
    invoke-virtual {v0}, Li00;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v0

    .line 10
    iget-object v1, p0, Li00$k;->h:Li00;

    .line 11
    iget-object v1, v1, Li00;->u:Li00$a;

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1, v0}, Li00$a;->l0(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    const-string v2, "service probably died"

    .line 13
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
