.class public Llr5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmr5;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrq5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmr5;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmr5;",
            "Ljava/util/List<",
            "Lrq5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llr5;->a:Lmr5;

    .line 3
    iput-object p2, p0, Llr5;->b:Ljava/util/List;

    return-void
.end method
