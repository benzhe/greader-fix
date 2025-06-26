.class public final Lx82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnd2<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzvt;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the adSize must not be null"

    .line 2
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    .line 4
    iput-object p2, p0, Lx82;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lx82;->c:Z

    .line 6
    iput-object p4, p0, Lx82;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lx82;->e:F

    .line 8
    iput p6, p0, Lx82;->f:I

    .line 9
    iput p7, p0, Lx82;->g:I

    .line 10
    iput-object p8, p0, Lx82;->h:Ljava/lang/String;

    .line 11
    iput-boolean p9, p0, Lx82;->i:Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    iget-object v0, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "smart_w"

    const-string v3, "full"

    .line 3
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "smart_h"

    const-string v3, "auto"

    .line 5
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->n:Z

    const-string v4, "ene"

    invoke-static {p1, v4, v0, v3}, Lc50;->a2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 7
    iget-object v3, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->q:Z

    const-string v4, "rafmt"

    if-eqz v3, :cond_4

    const-string v3, "102"

    .line 8
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_4
    iget-object v3, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    if-eqz v3, :cond_5

    const-string v3, "103"

    .line 10
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_5
    iget-object v3, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->s:Z

    if-eqz v3, :cond_6

    const-string v3, "105"

    .line 12
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_6
    iget-boolean v3, p0, Lx82;->i:Z

    const-string v4, "inline_adaptive_slot"

    invoke-static {p1, v4, v0, v3}, Lc50;->a2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 14
    iget-object v3, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->s:Z

    const-string v4, "interscroller_slot"

    invoke-static {p1, v4, v0, v3}, Lc50;->a2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 15
    iget-object v0, p0, Lx82;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v3, "format"

    .line 16
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_7
    iget-boolean v0, p0, Lx82;->c:Z

    const-string v3, "height"

    if-eqz v0, :cond_8

    const-string v0, "fluid"

    .line 18
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lx82;->d:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_9

    const-string v4, "sz"

    .line 21
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_9
    iget v0, p0, Lx82;->e:F

    const-string v4, "u_sd"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 23
    iget v0, p0, Lx82;->f:I

    const-string v4, "sw"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    iget v0, p0, Lx82;->g:I

    const-string v4, "sh"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    iget-object v0, p0, Lx82;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    if-eqz v2, :cond_a

    const-string v2, "sc"

    .line 26
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v2, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->k:[Lcom/google/android/gms/internal/ads/zzvt;

    const-string v4, "is_fluid_height"

    const-string v5, "width"

    if-nez v2, :cond_b

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    iget-object v2, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget-object v2, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-object v2, p0, Lx82;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->m:Z

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_b
    array-length v6, v2

    :goto_2
    if-ge v1, v6, :cond_c

    aget-object v7, v2, v1

    .line 35
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 36
    iget-boolean v9, v7, Lcom/google/android/gms/internal/ads/zzvt;->m:Z

    invoke-virtual {v8, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    iget v9, v7, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    invoke-virtual {v8, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    invoke-virtual {v8, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    const-string v1, "valid_ad_sizes"

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
