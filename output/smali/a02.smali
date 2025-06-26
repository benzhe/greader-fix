.class public final La02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljz1<",
        "Lv31;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lo31;

.field public final b:Landroid/content/Context;

.field public final c:Lmp1;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lo31;Landroid/content/Context;Ljava/util/concurrent/Executor;Lmp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, La02;->b:Landroid/content/Context;

    .line 3
    iput-object p1, p0, La02;->a:Lo31;

    .line 4
    iput-object p3, p0, La02;->d:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, La02;->c:Lmp1;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "Lv31;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    new-instance v1, Lzz1;

    invoke-direct {v1, p0, p1, p2}, Lzz1;-><init>(La02;Lhl2;Lsk2;)V

    iget-object p1, p0, La02;->d:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1, p1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1
.end method
