.class public Lyr7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/util/Collection;I)V
    .locals 0

    and-int/lit8 p4, p5, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x5

    :cond_1
    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_2

    const/16 p3, 0x1f4

    :cond_2
    and-int/lit8 p4, p5, 0x8

    if-eqz p4, :cond_3

    .line 1
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    const-string p5, "additionalClassesToPreserve"

    .line 2
    invoke-static {p4, p5}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyr7;->a:I

    iput p2, p0, Lyr7;->b:I

    iput p3, p0, Lyr7;->c:I

    iput-object p4, p0, Lyr7;->d:Ljava/util/Collection;

    return-void
.end method
