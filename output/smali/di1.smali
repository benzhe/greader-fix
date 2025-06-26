.class public final Ldi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lei1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljz1<",
            "Ll61;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljz1<",
            "Lkj1;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw12<",
            "Lkj1;",
            ">;>;>;"
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

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ldk1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljz1<",
            "Ll61;",
            ">;>;>;",
            "Lmb3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljz1<",
            "Lkj1;",
            ">;>;>;",
            "Lmb3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw12<",
            "Lkj1;",
            ">;>;>;",
            "Lmb3<",
            "Lk61<",
            "Lj41;",
            ">;>;",
            "Lmb3<",
            "Ldk1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldi1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Ldi1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Ldi1;->c:Lmb3;

    .line 5
    iput-object p4, p0, Ldi1;->d:Lmb3;

    .line 6
    iput-object p5, p0, Ldi1;->e:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ldi1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    iget-object v0, p0, Ldi1;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget-object v0, p0, Ldi1;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Ldi1;->d:Lmb3;

    iget-object v0, p0, Ldi1;->e:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldk1;

    .line 2
    new-instance v0, Lei1;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lei1;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lmb3;Ldk1;)V

    return-object v0
.end method
