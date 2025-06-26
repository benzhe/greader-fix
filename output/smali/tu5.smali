.class public final Ltu5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lju5;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbd6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lju5;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lju5;",
            "Ljava/util/List<",
            "Lbd6;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ltu5;->a:Lju5;

    .line 4
    iput-object p2, p0, Ltu5;->b:Ljava/util/List;

    return-void
.end method
