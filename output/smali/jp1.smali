.class public final Ljp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ljz1<",
        "Ldp1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lg42<",
            "Ldp1;",
            "Lzl2;",
            "Lf12;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lg42<",
            "Ldp1;",
            "Lzl2;",
            "Lg12;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lll2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lg42<",
            "Ldp1;",
            "Lzl2;",
            "Lf12;",
            ">;>;",
            "Lmb3<",
            "Lg42<",
            "Ldp1;",
            "Lzl2;",
            "Lg12;",
            ">;>;",
            "Lmb3<",
            "Lll2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljp1;->a:Lmb3;

    .line 3
    iput-object p2, p0, Ljp1;->b:Lmb3;

    .line 4
    iput-object p3, p0, Ljp1;->c:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ljp1;->a:Lmb3;

    iget-object v1, p0, Ljp1;->b:Lmb3;

    iget-object v2, p0, Ljp1;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lll2;

    .line 2
    sget-object v3, Lhp1;->a:[I

    iget-object v2, v2, Lll2;->o:Lxk2;

    iget v2, v2, Lxk2;->a:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget v2, v3, v2

    if-eq v2, v4, :cond_0

    .line 3
    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljz1;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljz1;

    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
