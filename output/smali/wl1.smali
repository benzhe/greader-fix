.class public final Lwl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva1;


# instance fields
.field public final e:Lwj1;

.field public final f:Lak1;


# direct methods
.method public constructor <init>(Lwj1;Lak1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwl1;->e:Lwj1;

    .line 3
    iput-object p2, p0, Lwl1;->f:Lak1;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwl1;->e:Lwj1;

    invoke-virtual {v0}, Lwj1;->q()Lx20;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lwl1;->e:Lwj1;

    invoke-virtual {v0}, Lwj1;->p()Lxw0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lwl1;->e:Lwj1;

    invoke-virtual {v1}, Lwj1;->o()Lxw0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 4
    :goto_0
    iget-object v1, p0, Lwl1;->f:Lak1;

    invoke-virtual {v1}, Lak1;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 5
    new-instance v1, Lf4;

    invoke-direct {v1}, Lf4;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
