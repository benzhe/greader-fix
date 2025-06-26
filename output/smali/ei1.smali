.class public final Lei1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk61;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk61<",
        "Ll61;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljz1<",
            "Ll61;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljz1<",
            "Lkj1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw12<",
            "Lkj1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lk61<",
            "Lj41;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ldk1;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lmb3;Ldk1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljz1<",
            "Ll61;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljz1<",
            "Lkj1;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw12<",
            "Lkj1;",
            ">;>;",
            "Lmb3<",
            "Lk61<",
            "Lj41;",
            ">;>;",
            "Ldk1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lei1;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lei1;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lei1;->c:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lei1;->d:Lmb3;

    .line 6
    iput-object p5, p0, Lei1;->e:Ldk1;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljz1<",
            "Ll61;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lei1;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljz1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    iget-object p1, p0, Lei1;->c:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw12;

    if-eqz p1, :cond_2

    .line 4
    new-instance p2, Liz1;

    sget-object v0, Lo61;->a:Lvs2;

    invoke-direct {p2, p1, v0}, Liz1;-><init>(Ljz1;Lvs2;)V

    return-object p2

    .line 5
    :cond_2
    iget-object p1, p0, Lei1;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljz1;

    if-eqz p1, :cond_3

    .line 6
    new-instance p2, Liz1;

    sget-object v0, Ln61;->a:Lvs2;

    invoke-direct {p2, p1, v0}, Liz1;-><init>(Ljz1;Lvs2;)V

    return-object p2

    :cond_3
    return-object v1

    .line 7
    :cond_4
    iget-object v0, p0, Lei1;->e:Ldk1;

    .line 8
    iget-object v0, v0, Ldk1;->d:Lj90;

    if-nez v0, :cond_5

    return-object v1

    .line 9
    :cond_5
    iget-object v0, p0, Lei1;->d:Lmb3;

    .line 10
    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk61;

    invoke-interface {v0, p1, p2}, Lk61;->a(ILjava/lang/String;)Ljz1;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v1

    .line 11
    :cond_6
    new-instance p2, Liz1;

    sget-object v0, Ln61;->a:Lvs2;

    invoke-direct {p2, p1, v0}, Liz1;-><init>(Ljz1;Lvs2;)V

    return-object p2
.end method
