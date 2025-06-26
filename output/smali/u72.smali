.class public final Lu72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Li82;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyq0;

.field public final synthetic b:Ll72;


# direct methods
.method public constructor <init>(Ll72;Lyq0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu72;->b:Ll72;

    iput-object p2, p0, Lu72;->a:Lyq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lu72;->a:Lyq0;

    const-string v1, "Internal error. "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, p1}, Lyq0;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Li82;

    .line 2
    :try_start_0
    sget-object v0, Ly40;->t4:Lo40;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu72;->b:Ll72;

    .line 6
    iget-object v0, v0, Ll72;->i:Lcom/google/android/gms/internal/ads/zzbar;

    .line 7
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    sget-object v2, Ly40;->v4:Lo40;

    .line 8
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 9
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lu72;->a:Lyq0;

    invoke-interface {p1, v1, v1, v1}, Lyq0;->V(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lu72;->a:Lyq0;

    iget-object v1, p1, Li82;->a:Ljava/lang/String;

    iget-object v2, p1, Li82;->b:Ljava/lang/String;

    iget-object p1, p1, Li82;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, p1}, Lyq0;->V(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lu72;->a:Lyq0;

    invoke-interface {p1, v1, v1}, Lyq0;->l4(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lu72;->a:Lyq0;

    iget-object v1, p1, Li82;->a:Ljava/lang/String;

    iget-object p1, p1, Li82;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lyq0;->l4(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 15
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
