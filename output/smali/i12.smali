.class public final Li12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljz1<",
        "Lqg1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lmp1;

.field public final c:Loh1;

.field public final d:Lll2;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/zzbar;

.field public final g:Lob0;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lll2;Ljava/util/concurrent/Executor;Loh1;Lmp1;Lob0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li12;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Li12;->d:Lll2;

    .line 4
    iput-object p5, p0, Li12;->c:Loh1;

    .line 5
    iput-object p4, p0, Li12;->e:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Li12;->f:Lcom/google/android/gms/internal/ads/zzbar;

    .line 7
    iput-object p6, p0, Li12;->b:Lmp1;

    .line 8
    iput-object p7, p0, Li12;->g:Lob0;

    .line 9
    sget-object p1, Ly40;->k5:Lo40;

    .line 10
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 11
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Li12;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lsk2;->r:Lzk2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lzk2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lhl2;Lsk2;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "Lqg1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcq1;

    invoke-direct {v0}, Lcq1;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v1

    new-instance v2, Lh12;

    invoke-direct {v2, p0, p2, p1, v0}, Lh12;-><init>(Li12;Lsk2;Lhl2;Lcq1;)V

    iget-object p1, p0, Li12;->e:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v1, v2, p1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    .line 4
    new-instance p2, Lk12;

    invoke-direct {p2, v0}, Lk12;-><init>(Lcq1;)V

    .line 5
    iget-object v0, p0, Li12;->e:Ljava/util/concurrent/Executor;

    move-object v1, p1

    check-cast v1, Lsu2;

    invoke-virtual {v1, p2, v0}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
