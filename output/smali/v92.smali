.class public final Lv92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lt92;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lt71;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lgm2;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lll2;",
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
            "Ljava/lang/String;",
            ">;",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;",
            "Lmb3<",
            "Lt71;",
            ">;",
            "Lmb3<",
            "Lgm2;",
            ">;",
            "Lmb3<",
            "Lll2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv92;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lv92;->b:Lmb3;

    .line 4
    iput-object p3, p0, Lv92;->c:Lmb3;

    .line 5
    iput-object p4, p0, Lv92;->d:Lmb3;

    .line 6
    iput-object p5, p0, Lv92;->e:Lmb3;

    return-void
.end method

.method public static a(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)Lv92;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;",
            "Lmb3<",
            "Lt71;",
            ">;",
            "Lmb3<",
            "Lgm2;",
            ">;",
            "Lmb3<",
            "Lll2;",
            ">;)",
            "Lv92;"
        }
    .end annotation

    .line 1
    new-instance v6, Lv92;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lv92;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lv92;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lv92;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lv92;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lt71;

    iget-object v0, p0, Lv92;->d:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lgm2;

    iget-object v0, p0, Lv92;->e:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lll2;

    .line 2
    new-instance v0, Lt92;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lt92;-><init>(Ljava/lang/String;Ljava/lang/String;Lt71;Lgm2;Lll2;)V

    return-object v0
.end method
