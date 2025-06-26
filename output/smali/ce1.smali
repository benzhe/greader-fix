.class public final Lce1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lba1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lyd1;

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lda1;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyd1;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyd1;",
            "Lmb3<",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lda1;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lce1;->a:Lyd1;

    .line 3
    iput-object p2, p0, Lce1;->b:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lce1;->a:Lyd1;

    iget-object v1, p0, Lce1;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 2
    iget-object v2, v0, Lyd1;->n:Lba1;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lba1;

    invoke-direct {v2, v1}, Lba1;-><init>(Ljava/util/Set;)V

    iput-object v2, v0, Lyd1;->n:Lba1;

    .line 4
    :cond_0
    iget-object v0, v0, Lyd1;->n:Lba1;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
