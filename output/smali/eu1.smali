.class public final Leu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lau1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lzv2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lzv2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lkv1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lmw1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lzv2;",
            ">;",
            "Lmb3<",
            "Lzv2;",
            ">;",
            "Lmb3<",
            "Lkv1;",
            ">;",
            "Lmb3<",
            "Lmw1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leu1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Leu1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Leu1;->c:Lmb3;

    .line 5
    iput-object p4, p0, Leu1;->d:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Leu1;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzv2;

    iget-object v1, p0, Leu1;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv2;

    iget-object v2, p0, Leu1;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkv1;

    iget-object v3, p0, Leu1;->d:Lmb3;

    invoke-static {v3}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v3

    .line 2
    new-instance v4, Lau1;

    invoke-direct {v4, v0, v1, v2, v3}, Lau1;-><init>(Lzv2;Lzv2;Lkv1;Lxa3;)V

    return-object v4
.end method
