.class public final Ld82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Law2<",
        "Li82;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lzo2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lh82;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lg91;",
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
            "Lzo2;",
            ">;",
            "Lmb3<",
            "Lh82;",
            ">;",
            "Lmb3<",
            "Lg91;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld82;->a:Lmb3;

    .line 3
    iput-object p2, p0, Ld82;->b:Lmb3;

    .line 4
    iput-object p3, p0, Ld82;->c:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ld82;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzo2;

    iget-object v1, p0, Ld82;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh82;

    iget-object v2, p0, Ld82;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg91;

    .line 2
    sget-object v3, Lap2;->y:Lap2;

    .line 3
    invoke-virtual {v2}, Lg91;->b()Law2;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lqo2;->b(Lcv2;)Lqo2;

    move-result-object v0

    sget-object v1, Ly40;->h3:Lo40;

    .line 5
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lqo2;->a(JLjava/util/concurrent/TimeUnit;)Lqo2;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lqo2;->e()Llo2;

    move-result-object v0

    return-object v0
.end method
