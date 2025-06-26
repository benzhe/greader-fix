.class public final Ljy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lgy1;


# direct methods
.method public constructor <init>(Lgy1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljy1;->b:Lgy1;

    iput-boolean p2, p0, Ljy1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "Failed to get signals bundle"

    .line 1
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    iget-object v0, p0, Ljy1;->b:Lgy1;

    .line 3
    iget-object v0, v0, Lgy1;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ad_types"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_0
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9
    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 13
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 15
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 16
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "interstitial"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x3

    goto :goto_4

    :sswitch_1
    const-string v3, "rewarded"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x2

    goto :goto_4

    :sswitch_2
    const-string v3, "native"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    goto :goto_4

    :sswitch_3
    const-string v6, "banner"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_b

    if-eq v2, v5, :cond_a

    if-eq v2, v8, :cond_9

    if-eq v2, v7, :cond_8

    .line 19
    sget-object v1, Lsp3$a;->f:Lsp3$a;

    goto :goto_5

    .line 20
    :cond_8
    sget-object v1, Lsp3$a;->h:Lsp3$a;

    goto :goto_5

    .line 21
    :cond_9
    sget-object v1, Lsp3$a;->o:Lsp3$a;

    goto :goto_5

    .line 22
    :cond_a
    sget-object v1, Lsp3$a;->k:Lsp3$a;

    goto :goto_5

    .line 23
    :cond_b
    sget-object v1, Lsp3$a;->g:Lsp3$a;

    .line 24
    :goto_5
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    const-string v0, "device"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_d

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_d
    const-string v1, "network"

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_e

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_e
    const-string v1, "active_network_state"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 30
    sget-object v1, Lgy1;->h:Landroid/util/SparseArray;

    sget-object v6, Leq3$b;->f:Leq3$b;

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Leq3$b;

    .line 31
    iget-object v0, p0, Ljy1;->b:Lgy1;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcq3;->E()Lcq3$a;

    move-result-object v1

    const/4 v7, -0x2

    const-string v8, "cnt"

    .line 34
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "gnt"

    .line 35
    invoke-virtual {p1, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v7, v2, :cond_f

    .line 36
    sget-object p1, Lvq3;->g:Lvq3;

    iput-object p1, v0, Lgy1;->g:Lvq3;

    goto :goto_8

    .line 37
    :cond_f
    sget-object v2, Lvq3;->f:Lvq3;

    iput-object v2, v0, Lgy1;->g:Lvq3;

    if-eqz v7, :cond_11

    if-eq v7, v5, :cond_10

    .line 38
    sget-object v0, Lcq3$c;->f:Lcq3$c;

    invoke-virtual {v1, v0}, Lcq3$a;->p(Lcq3$c;)Lcq3$a;

    goto :goto_6

    .line 39
    :cond_10
    sget-object v0, Lcq3$c;->h:Lcq3$c;

    invoke-virtual {v1, v0}, Lcq3$a;->p(Lcq3$c;)Lcq3$a;

    goto :goto_6

    .line 40
    :cond_11
    sget-object v0, Lcq3$c;->g:Lcq3$c;

    invoke-virtual {v1, v0}, Lcq3$a;->p(Lcq3$c;)Lcq3$a;

    :goto_6
    packed-switch p1, :pswitch_data_0

    .line 41
    sget-object p1, Lcq3$b;->f:Lcq3$b;

    goto :goto_7

    .line 42
    :pswitch_0
    sget-object p1, Lcq3$b;->i:Lcq3$b;

    goto :goto_7

    .line 43
    :pswitch_1
    sget-object p1, Lcq3$b;->h:Lcq3$b;

    goto :goto_7

    .line 44
    :pswitch_2
    sget-object p1, Lcq3$b;->g:Lcq3$b;

    .line 45
    :goto_7
    iget-boolean v0, v1, Ls63$b;->g:Z

    if-eqz v0, :cond_12

    .line 46
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 47
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 48
    :cond_12
    iget-object v0, v1, Ls63$b;->f:Ls63;

    check-cast v0, Lcq3;

    invoke-static {v0, p1}, Lcq3;->x(Lcq3;Lcq3$b;)V

    .line 49
    :goto_8
    invoke-virtual {v1}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    move-object v5, p1

    check-cast v5, Lcq3;

    .line 50
    iget-object p1, p0, Ljy1;->b:Lgy1;

    .line 51
    iget-object p1, p1, Lgy1;->e:Lxx1;

    .line 52
    new-instance v0, Liy1;

    iget-boolean v3, p0, Ljy1;->a:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Liy1;-><init>(Ljy1;ZLjava/util/ArrayList;Lcq3;Leq3$b;)V

    invoke-virtual {p1, v0}, Lxx1;->a(Ljo2;)V

    :cond_13
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
